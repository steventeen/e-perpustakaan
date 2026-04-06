import React, { useState, useRef, useEffect } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { Send, Bot, User, Sparkles, RefreshCcw, BookOpen, X, AlertCircle } from 'lucide-react'
import { logActivity } from '../utils/logger'

const GROQ_API_KEY = import.meta.env.VITE_GROQ_API_KEY || 'gsk_key_not_found'
const GROQ_API_URL = 'https://api.groq.com/openai/v1/chat/completions'
const MODEL = 'llama-3.3-70b-versatile' // Model yang lama sudah deprecated, diganti dengan Llama 3.3 terbaru

// Sistem prompt — fokus pelajaran sekolah
const SYSTEM_PROMPT = `Kamu adalah asisten belajar pintar untuk perpustakaan sekolah bernama "e-Perpus Digital". 
Tugasmu adalah membantu siswa dan guru menjawab pertanyaan yang HANYA berkaitan dengan pelajaran sekolah seperti:
Matematika, IPA (Fisika, Kimia, Biologi), IPS, Bahasa Indonesia, Bahasa Inggris, PPKn, Seni Budaya, Informatika, Prakarya, PJOK, dan mata pelajaran sekolah lainnya.

ATURAN PENTING:
1. Jika pertanyaan TIDAK berkaitan dengan pelajaran sekolah, tolak dengan sopan dan minta user untuk mengajukan pertanyaan seputar pelajaran.
2. Jawab dalam Bahasa Indonesia yang jelas, ramah, dan mudah dipahami oleh siswa SMP.
3. Gunakan contoh konkret dan sederhana saat menjelaskan.
4. Jika ada rumus, jelaskan step-by-step.
5. Jangan membahas topik yang tidak pantas, politik, atau di luar konteks sekolah.
6. Selalu semangati dan motivasi siswa di akhir jawaban.

Format jawaban: gunakan paragraf pendek, bullet points, atau langkah-langkah jika diperlukan.`

// Topik saran pertanyaan
const SUGGESTED_QUESTIONS = [
  '📐 Jelaskan teorema Pythagoras dengan contoh!',
  '🔬 Apa itu fotosintesis dan bagaimana prosesnya?',
  '🌏 Sebutkan faktor penyebab gempa bumi!',
  '📚 Apa perbedaan kata baku dan tidak baku?',
  '⚗️ Bagaimana cara membuat larutan asam-basa sederhana?',
  '🔢 Cara menghitung keliling dan luas lingkaran?',
]

// Komponen pesan chat
const ChatMessage = ({ msg }) => {
  const isUser = msg.role === 'user'
  return (
    <motion.div
      initial={{ opacity: 0, y: 12 }}
      animate={{ opacity: 1, y: 0 }}
      className={`flex items-end gap-3 ${isUser ? 'flex-row-reverse' : 'flex-row'}`}
    >
      {/* Avatar */}
      <div className={`w-8 h-8 rounded-2xl flex-shrink-0 flex items-center justify-center text-white text-xs font-black shadow-lg
        ${isUser ? 'bg-primary-600' : 'bg-gradient-to-br from-indigo-500 to-purple-600'}`}>
        {isUser ? <User size={16} /> : <Bot size={16} />}
      </div>

      {/* Bubble */}
      <div className={`max-w-[80%] px-5 py-3.5 rounded-[1.5rem] shadow-sm text-sm font-medium leading-relaxed
        ${isUser
          ? 'bg-primary-600 text-white rounded-br-md shadow-primary-100'
          : 'bg-white text-slate-700 rounded-bl-md border border-slate-100'
        }`}>
        {/* Render newlines and bold-ish formatting */}
        {msg.content.split('\n').map((line, i) => (
          <p key={i} className={line === '' ? 'my-1' : ''}>
            {line.startsWith('•') || line.startsWith('-') || line.match(/^\d+\./)
              ? <span>• {line.replace(/^[•\-]\s*/, '').replace(/^\d+\.\s*/, '')}</span>
              : line}
          </p>
        ))}
        {msg.loading && (
          <span className="inline-flex space-x-1 ml-1">
            {[0,1,2].map(i => (
              <motion.span key={i} animate={{ opacity: [0.3,1,0.3] }}
                transition={{ repeat: Infinity, duration: 1.2, delay: i*0.4 }}
                className="w-1.5 h-1.5 bg-current rounded-full inline-block" />
            ))}
          </span>
        )}
      </div>
    </motion.div>
  )
}

const AIChat = ({ user }) => {
  const userName = user?.display?.split(' ')[0] || 'Pengguna'
  const userRole = user?.role === 'teacher' ? 'Guru' : 'Siswa'

  const [messages, setMessages] = useState([
    {
      id: 0,
      role: 'assistant',
      content: `Halo ${userName}! 👋\n\nSaya adalah Asisten Belajar AI dari e-Perpus Digital. Silakan bertanya tentang pelajaran sekolah — Matematika, IPA, IPS, Bahasa Indonesia, dan semua mata pelajaran lainnya!\n\n💡 Ingat: pertanyaan Anda harus menyangkut materi pelajaran ya 😊`
    }
  ])
  const [input, setInput] = useState('')
  const [loading, setLoading] = useState(false)
  const [error, setError] = useState('')
  const bottomRef = useRef(null)
  const inputRef = useRef(null)

  useEffect(() => {
    bottomRef.current?.scrollIntoView({ behavior: 'smooth' })
  }, [messages])

  const sendMessage = async (text) => {
    const question = (text || input).trim()
    if (!question || loading) return

    setError('')
    const userMsg = { id: Date.now(), role: 'user', content: question }
    const loadingMsg = { id: Date.now() + 1, role: 'assistant', content: '', loading: true }

    // Log the AI activity
    logActivity(user.id, user.username, 'ai', `Bertanya ke AI: "${question.substring(0, 50)}..."`);

    setMessages(prev => [...prev, userMsg, loadingMsg])
    setInput('')
    setLoading(true)

    // Build conversation history for API
    const history = messages
      .filter(m => !m.loading)
      .map(m => ({ role: m.role, content: m.content }))
    history.push({ role: 'user', content: question })

    try {
      const response = await fetch(GROQ_API_URL, {
        method: 'POST',
        headers: {
          'Authorization': `Bearer ${GROQ_API_KEY}`,
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          model: MODEL,
          messages: [
            { role: 'system', content: SYSTEM_PROMPT },
            ...history
          ],
          max_tokens: 1024,
          temperature: 0.7,
        })
      })

      if (!response.ok) {
        const err = await response.json()
        throw new Error(err?.error?.message || `HTTP ${response.status}`)
      }

      const data = await response.json()
      const reply = data.choices?.[0]?.message?.content || 'Maaf, tidak ada respons dari AI.'

      setMessages(prev => prev.map(m =>
        m.loading ? { ...m, content: reply, loading: false } : m
      ))
    } catch (err) {
      setMessages(prev => prev.filter(m => !m.loading))
      setError(`Gagal menghubungi AI: ${err.message}`)
    } finally {
      setLoading(false)
      setTimeout(() => inputRef.current?.focus(), 100)
    }
  }

  const handleReset = () => {
    setMessages([{
      id: 0,
      role: 'assistant',
      content: `Halo ${userName}! 👋\n\nSesi baru dimulai. Apa yang ingin kamu pelajari hari ini?\n\n💡 Ingat: pertanyaan harus menyangkut materi pelajaran sekolah 😊`
    }])
    setError('')
  }

  const handleKeyDown = (e) => {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault()
      sendMessage()
    }
  }

  return (
    <div className="flex flex-col h-screen bg-slate-50 md:h-auto md:min-h-screen">

      {/* ── HEADER ── */}
      <div className="bg-gradient-to-r from-indigo-600 via-purple-600 to-primary-600 px-6 py-5 md:px-10 text-white flex-shrink-0 shadow-xl">
        <div className="flex items-center justify-between">
          <div className="flex items-center space-x-4">
            <div className="w-12 h-12 bg-white/20 backdrop-blur-sm rounded-2xl flex items-center justify-center shadow-lg border border-white/20">
              <Sparkles size={24} className="text-yellow-300" />
            </div>
            <div>
              <h1 className="text-xl font-black tracking-tight">Asisten Belajar AI</h1>
              <p className="text-indigo-200 text-xs font-bold uppercase tracking-widest mt-0.5">
                Halo {userRole} {userName} • Siap Membantu Belajar!
              </p>
            </div>
          </div>
          <button onClick={handleReset} title="Reset chat"
            className="p-3 bg-white/10 hover:bg-white/20 rounded-2xl transition-colors active:scale-95">
            <RefreshCcw size={18} />
          </button>
        </div>

        {/* Info bar */}
        <div className="mt-4 flex items-center space-x-2 bg-white/10 rounded-2xl px-4 py-2.5 border border-white/10">
          <BookOpen size={16} className="text-yellow-300 shrink-0" />
          <p className="text-[11px] font-bold text-indigo-100">
            Pertanyaan harus menyangkut <span className="text-white">materi pelajaran sekolah</span> ya! Tidak bisa menjawab topik di luar pelajaran.
          </p>
        </div>
      </div>

      {/* ── CHAT AREA ── */}
      <div className="flex-1 overflow-y-auto px-4 py-6 md:px-10 space-y-5 pb-32 md:pb-6"
        style={{ maxHeight: 'calc(100vh - 280px)' }}>

        {/* Messages */}
        {messages.map(msg => (
          <ChatMessage key={msg.id} msg={msg} />
        ))}

        {/* Error */}
        <AnimatePresence>
          {error && (
            <motion.div initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
              className="flex items-center space-x-3 bg-red-50 border border-red-100 rounded-2xl px-4 py-3 text-red-600 text-sm font-medium">
              <AlertCircle size={18} className="shrink-0" />
              <span>{error}</span>
              <button onClick={() => setError('')} className="ml-auto hover:text-red-800"><X size={16} /></button>
            </motion.div>
          )}
        </AnimatePresence>

        {/* Suggested Questions (only when few messages) */}
        {messages.length <= 2 && !loading && (
          <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} className="space-y-3">
            <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest text-center">💡 Contoh Pertanyaan</p>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-2">
              {SUGGESTED_QUESTIONS.map((q, i) => (
                <button key={i} onClick={() => sendMessage(q)}
                  className="text-left px-4 py-3 bg-white border border-slate-100 hover:border-primary-200 hover:bg-primary-50 rounded-2xl text-xs font-bold text-slate-600 hover:text-primary-700 transition-all active:scale-95 shadow-sm">
                  {q}
                </button>
              ))}
            </div>
          </motion.div>
        )}

        <div ref={bottomRef} />
      </div>

      {/* ── INPUT BAR ── */}
      <div className="fixed bottom-16 left-0 right-0 md:relative md:bottom-0 bg-white border-t border-slate-100 px-4 py-4 md:px-10 shadow-[0_-8px_30px_rgba(15,23,42,0.06)] flex-shrink-0">
        <div className="flex items-end gap-3 max-w-4xl mx-auto">
          <div className="flex-1 bg-slate-50 rounded-[1.5rem] border border-slate-200 focus-within:border-primary-400 focus-within:ring-2 focus-within:ring-primary-100 transition-all px-5 py-3">
            <textarea
              ref={inputRef}
              rows={1}
              value={input}
              onChange={e => setInput(e.target.value)}
              onKeyDown={handleKeyDown}
              placeholder="Ketik pertanyaan seputar pelajaran... (Enter untuk kirim)"
              disabled={loading}
              className="w-full bg-transparent border-none outline-none resize-none text-sm font-medium text-slate-700 placeholder-slate-400 max-h-32 overflow-y-auto"
              style={{ lineHeight: '1.5' }}
            />
          </div>
          <button
            onClick={() => sendMessage()}
            disabled={!input.trim() || loading}
            className="w-12 h-12 bg-primary-600 hover:bg-primary-700 disabled:bg-slate-200 disabled:text-slate-400 text-white rounded-2xl flex items-center justify-center shadow-lg shadow-primary-100 transition-all active:scale-95 disabled:shadow-none flex-shrink-0"
          >
            {loading
              ? <motion.div animate={{ rotate: 360 }} transition={{ repeat: Infinity, duration: 1, ease: 'linear' }}>
                  <RefreshCcw size={18} />
                </motion.div>
              : <Send size={18} />
            }
          </button>
        </div>
        <p className="text-center text-[10px] text-slate-400 font-medium mt-2">
          Powered by Groq × Llama 3 70B • Khusus Pelajaran Sekolah
        </p>
      </div>
    </div>
  )
}

export default AIChat
