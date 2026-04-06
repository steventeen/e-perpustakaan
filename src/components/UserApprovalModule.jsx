import React, { useState, useEffect, useCallback } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import {
  UserCheck, UserX, Clock, RefreshCcw, Mail, Phone, User,
  CheckCircle, XCircle, Users, ChevronDown, Send
} from 'lucide-react'
import { supabase } from '../lib/supabase'
import { sendNotification } from '../utils/notifications'

// ── EmailJS kirim email (client-side, tanpa backend) ────────────────
// Gunakan layanan EmailJS.com — daftar gratis, pasang Service ID & Template ID
const EMAILJS_SERVICE_ID  = 'service_eperpus'   // ganti dengan milik Anda
const EMAILJS_TEMPLATE_ID = 'template_approval' // ganti dengan milik Anda
const EMAILJS_PUBLIC_KEY  = 'YOUR_PUBLIC_KEY'   // ganti dengan milik Anda

const sendApprovalEmail = async ({ toEmail, toName, username, approved, note }) => {
  if (!toEmail) return false
  try {
    // Lazy-load EmailJS
    if (!window.emailjs) {
      await new Promise((res, rej) => {
        const s = document.createElement('script')
        s.src = 'https://cdn.jsdelivr.net/npm/@emailjs/browser@4/dist/email.min.js'
        s.onload = res; s.onerror = rej
        document.head.appendChild(s)
      })
      window.emailjs.init({ publicKey: EMAILJS_PUBLIC_KEY })
    }

    await window.emailjs.send(EMAILJS_SERVICE_ID, EMAILJS_TEMPLATE_ID, {
      to_email:   toEmail,
      to_name:    toName || username,
      username:   username,
      status:     approved ? 'DISETUJUI ✅' : 'DITOLAK ❌',
      note:       note || (approved ? 'Selamat bergabung!' : 'Hubungi pustakawan untuk informasi lebih lanjut.'),
      app_name:   'e-Perpus Digital',
      school_name: 'SMP Negeri 2 Amurang Timur',
      login_url:  window.location.origin,
    })
    return true
  } catch (e) {
    console.warn('EmailJS failed:', e.message || e)
    // Fallback: buka mailto
    const subject = encodeURIComponent(`[e-Perpus] Akun Anda ${approved ? 'Disetujui' : 'Ditolak'}`)
    const body    = encodeURIComponent(
      `Halo ${toName || username},\n\nAkun e-Perpus Digital Anda (username: ${username}) telah ${approved ? 'DISETUJUI. Anda sekarang dapat login.' : 'DITOLAK.'}\n\nCatatan: ${note || '-'}\n\nSalam,\nPustakawan e-Perpus Digital`
    )
    window.open(`mailto:${toEmail}?subject=${subject}&body=${body}`)
    return false
  }
}

// ── Status helpers ───────────────────────────────────────────────────
const STATUS_MAP = {
  pending:  { label: 'Menunggu', color: 'bg-amber-100 text-amber-700',   icon: Clock },
  approved: { label: 'Disetujui', color: 'bg-emerald-100 text-emerald-700', icon: CheckCircle },
  rejected: { label: 'Ditolak', color: 'bg-red-100 text-red-700',       icon: XCircle },
}

// ── UserApprovalModule Component ─────────────────────────────────────
const UserApprovalModule = ({ adminUser }) => {
  const [requests, setRequests] = useState([])
  const [loading, setLoading]   = useState(true)
  const [filter, setFilter]     = useState('pending')
  const [selected, setSelected] = useState(null)
  const [note, setNote]         = useState('')
  const [submitting, setSubmitting] = useState(false)
  const [toast, setToast]       = useState(null)

  const showToast = (msg, type = 'success') => {
    setToast({ msg, type })
    setTimeout(() => setToast(null), 4000)
  }

  // Ambil dari Supabase + localStorage fallback
  const loadRequests = useCallback(async () => {
    setLoading(true)
    try {
      const { data, error } = await supabase
        .from('user_requests')
        .select('*')
        .order('created_at', { ascending: false })
      if (!error && data?.length > 0) {
        const filtered = filter === 'all' ? data : data.filter(r => r.status === filter)
        setRequests(filtered)
      } else {
        throw new Error('fallback')
      }
    } catch {
      // Fallback to localStorage pending users
      const pending = JSON.parse(localStorage.getItem('epus_pending_users') || '[]')
      const filtered = filter === 'all' ? pending : pending.filter(p => (p.status || 'pending') === filter)
      setRequests(filtered.reverse())
    }
    setLoading(false)
  }, [filter])

  useEffect(() => { loadRequests() }, [loadRequests])

  const handleAction = async (req, action) => {
    setSubmitting(true)
    const isApproved = action === 'approved'

    // 1. Update status
    try {
      await supabase.from('user_requests').update({
        status: action,
        reviewed_by: adminUser?.username || 'admin',
        review_note: note,
        reviewed_at: new Date().toISOString(),
      }).eq('id', req.id)
    } catch (_) {}

    // 2. Update localStorage pending
    const pendingUsers = JSON.parse(localStorage.getItem('epus_pending_users') || '[]')
    const updatedPending = pendingUsers.map(u =>
      u.username === req.username ? { ...u, status: action } : u
    )
    localStorage.setItem('epus_pending_users', JSON.stringify(updatedPending))

    if (isApproved) {
      // 3. Tambahkan ke akun aktif
      const savedUsers = JSON.parse(localStorage.getItem('epus_users') || '[]')
      savedUsers.push({
        username: req.username,
        password: req.password || req.password_hash,
        role:     'masyarakat',
        display:  req.full_name || req.username,
        full_name: req.full_name,
        email:    req.email,
        phone:    req.phone,
      })
      localStorage.setItem('epus_users', JSON.stringify(savedUsers))

      // 4. Insert ke profiles Supabase
      try {
        await supabase.from('profiles').insert({
          username:  req.username,
          full_name: req.full_name || req.username,
          role:      'masyarakat',
          email:     req.email,
          phone:     req.phone,
        })
      } catch (_) {}
    }

    // 5. Kirim email
    let emailSent = false
    if (req.email) {
      emailSent = await sendApprovalEmail({
        toEmail:  req.email,
        toName:   req.full_name || req.username,
        username: req.username,
        approved: isApproved,
        note: note,
      })
    }

    // 6. Kirim notifikasi in-app
    await sendNotification(
      req.username,
      isApproved ? '✅ Akun Anda Disetujui!' : '❌ Pendaftaran Ditolak',
      isApproved
        ? `Halo ${req.full_name || req.username}! Akun Anda sudah aktif. Silakan login sekarang.`
        : `Maaf, pendaftaran Anda ditolak. ${note || 'Hubungi pustakawan untuk info lebih lanjut.'}`,
      isApproved ? 'success' : 'error',
      'login'
    )

    showToast(
      isApproved
        ? `✅ ${req.username} disetujui${emailSent ? ' & email terkirim' : ' (email manual dibuka)'}`
        : `❌ ${req.username} ditolak`,
      isApproved ? 'success' : 'error'
    )
    setSelected(null)
    setNote('')
    loadRequests()
    setSubmitting(false)
  }

  const pendingCount = requests.filter(r => (r.status || 'pending') === 'pending').length

  return (
    <div className="space-y-6">
      {/* Toast */}
      <AnimatePresence>
        {toast && (
          <motion.div initial={{ opacity: 0, y: -20 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -20 }}
            className={`fixed top-6 left-1/2 -translate-x-1/2 z-[300] px-6 py-4 rounded-2xl shadow-2xl font-bold text-sm text-white ${toast.type === 'error' ? 'bg-red-600' : 'bg-emerald-600'}`}>
            {toast.msg}
          </motion.div>
        )}
      </AnimatePresence>

      {/* Header */}
      <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
        <div className="flex items-center gap-3">
          <div className="w-12 h-12 bg-indigo-100 rounded-2xl flex items-center justify-center">
            <Users size={22} className="text-indigo-600" />
          </div>
          <div>
            <h3 className="text-xl font-black text-slate-800">Persetujuan Anggota Baru</h3>
            <p className="text-xs text-slate-400 font-medium">
              {filter === 'pending' && pendingCount > 0 ? `${pendingCount} pendaftaran menunggu review` : 'Kelola akun masyarakat umum'}
            </p>
          </div>
        </div>
        <button onClick={loadRequests} className="flex items-center gap-2 px-4 py-2 bg-slate-100 rounded-xl text-xs font-black text-slate-500 hover:bg-slate-200 transition-all active:scale-95 self-start">
          <RefreshCcw size={14} /> Refresh
        </button>
      </div>

      {/* Filter */}
      <div className="flex gap-2 flex-wrap">
        {[['all','Semua'],['pending','⏳ Menunggu'],['approved','✅ Disetujui'],['rejected','❌ Ditolak']].map(([val, lbl]) => (
          <button key={val} onClick={() => setFilter(val)}
            className={`px-4 py-2 rounded-xl text-[10px] font-black uppercase tracking-widest transition-all active:scale-95 relative ${filter === val ? 'bg-primary-600 text-white shadow-lg shadow-primary-100' : 'bg-slate-100 text-slate-500 hover:bg-slate-200'}`}>
            {lbl}
            {val === 'pending' && pendingCount > 0 && filter !== 'pending' && (
              <span className="absolute -top-1 -right-1 w-4 h-4 bg-red-500 text-white text-[8px] font-black rounded-full flex items-center justify-center">{pendingCount}</span>
            )}
          </button>
        ))}
      </div>

      {/* EmailJS Note */}
      <div className="bg-amber-50 border border-amber-200 rounded-2xl px-4 py-3 flex items-start gap-3">
        <Mail size={16} className="text-amber-500 mt-0.5 shrink-0" />
        <div>
          <p className="text-[11px] font-black text-amber-700">Email Otomatis via EmailJS</p>
          <p className="text-[10px] text-amber-600 font-medium">
            Saat akun disetujui, email otomatis dikirim ke pendaftar. Pastikan sudah mengkonfigurasi
            <span className="font-black"> EMAILJS_SERVICE_ID</span>, <span className="font-black">EMAILJS_TEMPLATE_ID</span>, dan
            <span className="font-black"> EMAILJS_PUBLIC_KEY</span> di <code className="bg-amber-100 px-1 rounded">UserApprovalModule.jsx</code>.
          </p>
        </div>
      </div>

      {/* List */}
      {loading ? (
        <div className="flex justify-center py-16">
          <motion.div animate={{ rotate: 360 }} transition={{ repeat: Infinity, duration: 1, ease: 'linear' }}>
            <RefreshCcw size={28} className="text-primary-400" />
          </motion.div>
        </div>
      ) : requests.length === 0 ? (
        <div className="text-center py-16 text-slate-300">
          <Users size={48} className="mx-auto mb-3" />
          <p className="font-bold text-slate-400">Tidak ada pendaftaran untuk filter ini</p>
        </div>
      ) : (
        <div className="space-y-3">
          {requests.map((req) => {
            const status = req.status || 'pending'
            const st = STATUS_MAP[status] || STATUS_MAP.pending
            const Icon = st.icon
            const isOpen = selected?.username === req.username

            return (
              <motion.div key={req.id || req.username} layout
                className={`bg-white rounded-3xl border transition-all overflow-hidden ${isOpen ? 'border-primary-200 shadow-lg' : 'border-slate-100 hover:border-slate-200'}`}>

                <button onClick={() => setSelected(isOpen ? null : req)}
                  className="w-full text-left p-5 flex items-center gap-4">
                  {/* Avatar */}
                  <div className="w-12 h-12 rounded-2xl bg-gradient-to-br from-indigo-100 to-purple-100 flex items-center justify-center flex-shrink-0">
                    <span className="text-indigo-600 font-black text-lg">
                      {(req.full_name || req.username)?.[0]?.toUpperCase()}
                    </span>
                  </div>
                  <div className="flex-1 min-w-0">
                    <h4 className="font-black text-slate-800 text-sm">{req.full_name || req.username}</h4>
                    <div className="flex items-center gap-3 mt-0.5 flex-wrap">
                      <span className="text-[10px] text-slate-500 font-bold">@{req.username}</span>
                      {req.email && <span className="text-[10px] text-slate-400 flex items-center gap-1"><Mail size={9} />{req.email}</span>}
                      {req.phone && <span className="text-[10px] text-slate-400 flex items-center gap-1"><Phone size={9} />{req.phone}</span>}
                    </div>
                    <p className="text-[9px] text-slate-400 mt-0.5 font-medium">
                      Daftar: {new Date(req.created_at || req.requested_at || Date.now()).toLocaleDateString('id-ID', { day:'2-digit', month:'short', year:'numeric', hour:'2-digit', minute:'2-digit' })}
                    </p>
                  </div>
                  <div className="flex items-center gap-2 flex-shrink-0">
                    <span className={`px-3 py-1 rounded-full text-[9px] font-black uppercase tracking-wider flex items-center gap-1 ${st.color}`}>
                      <Icon size={10} />{st.label}
                    </span>
                    <ChevronDown size={16} className={`text-slate-300 transition-transform ${isOpen ? 'rotate-180' : ''}`} />
                  </div>
                </button>

                {/* Detail */}
                <AnimatePresence>
                  {isOpen && (
                    <motion.div initial={{ height: 0 }} animate={{ height: 'auto' }} exit={{ height: 0 }}
                      className="overflow-hidden border-t border-slate-100">
                      <div className="p-5 space-y-4">
                        {status === 'pending' && (
                          <>
                            <textarea value={note} onChange={e => setNote(e.target.value)}
                              placeholder="Catatan untuk pendaftar (opsional — akan dikirim via email)..."
                              className="w-full border border-slate-200 rounded-2xl px-4 py-3 text-sm font-medium text-slate-700 focus:outline-none focus:border-primary-400 resize-none"
                              rows={2} />
                            <div className="flex items-center gap-2 bg-blue-50 rounded-xl px-3 py-2 mb-2">
                              <Send size={12} className="text-blue-500 shrink-0" />
                              <p className="text-[10px] text-blue-600 font-bold">
                                Email akan otomatis dikirim ke <span className="font-black">{req.email}</span> setelah keputusan
                              </p>
                            </div>
                            <div className="flex gap-3">
                              <button onClick={() => handleAction(req, 'approved')} disabled={submitting}
                                className="flex-1 py-3.5 bg-emerald-600 hover:bg-emerald-700 text-white rounded-2xl font-black text-xs uppercase tracking-widest transition-all active:scale-95 shadow-lg shadow-emerald-100 disabled:opacity-50">
                                <UserCheck size={14} className="inline mr-1" /> Setujui & Kirim Email
                              </button>
                              <button onClick={() => handleAction(req, 'rejected')} disabled={submitting}
                                className="flex-1 py-3.5 bg-red-500 hover:bg-red-600 text-white rounded-2xl font-black text-xs uppercase tracking-widest transition-all active:scale-95 shadow-lg shadow-red-100 disabled:opacity-50">
                                <UserX size={14} className="inline mr-1" /> Tolak
                              </button>
                            </div>
                          </>
                        )}
                        {status !== 'pending' && (
                          <div className="bg-slate-50 rounded-2xl p-4 text-sm text-slate-600 space-y-1">
                            <p><span className="font-black text-slate-700">Direview oleh:</span> {req.reviewed_by || '-'}</p>
                            {req.review_note && <p><span className="font-black text-slate-700">Catatan:</span> {req.review_note}</p>}
                          </div>
                        )}
                      </div>
                    </motion.div>
                  )}
                </AnimatePresence>
              </motion.div>
            )
          })}
        </div>
      )}
    </div>
  )
}

export default UserApprovalModule
