import React, { useState } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { BookOpen, Eye, EyeOff, User, Lock, ChevronRight, Mail, Phone, Users, Clock } from 'lucide-react'
import { USERS_DATA } from '../dataStore'
import { supabase } from '../lib/supabase'
import { logActivity } from '../utils/logger'

const DEMO_ACCOUNTS = [
  { username: 'admin',              password: 'admin123',  role: 'librarian',   display: 'Pustakawan Admin' },
  { username: '7-BENZEMA',          password: '12345',     role: 'student',     display: 'BENZEMA DENIS S.R (Kls 7)' },
  { username: '8-EKLESIA',          password: '12345',     role: 'student',     display: 'EKLESIA WATUSEKE (Kls 8)' },
  { username: '9-Efrina',           password: '12345',     role: 'student',     display: 'Efrina I. Meruntu (Kls 9)' },
  { username: '197203122006041017', password: 'guru123',   role: 'teacher',     display: 'RONY LUKY UMBOH, S.Pd' },
]

// ── Register Form ────────────────────────────────────────────────────
const RegisterForm = ({ onBack, schoolIdentity }) => {
  const [form, setForm] = useState({ fullName: '', username: '', email: '', phone: '', password: '', confirm: '' })
  const [loading, setLoading]   = useState(false)
  const [error, setError]       = useState('')
  const [success, setSuccess]   = useState(false)
  const [showPass, setShowPass] = useState(false)

  const set = (k) => (e) => setForm(p => ({ ...p, [k]: e.target.value }))

  const handleRegister = async (e) => {
    e.preventDefault()
    setError('')

    if (!form.username.trim())    { setError('Username wajib diisi.'); return }
    if (!form.email.trim())       { setError('Email wajib diisi.'); return }
    if (form.password.length < 6) { setError('Password minimal 6 karakter.'); return }
    if (form.password !== form.confirm) { setError('Password tidak cocok!'); return }

    setLoading(true)

    const savedUsers = JSON.parse(localStorage.getItem('epus_users') || '[]')
    const pendingUsers = JSON.parse(localStorage.getItem('epus_pending_users') || '[]')
    const allAccounts = [...DEMO_ACCOUNTS, ...savedUsers, ...pendingUsers]
    
    // ── 1. CEK LOKAL ──
    if (allAccounts.find(a => a.username.toLowerCase() === form.username.trim().toLowerCase())) {
      setError('Username sudah digunakan secara lokal. Pilih username lain.')
      setLoading(false)
      return
    }

    // ── 2. CEK DATABASE SUPABASE (SINKRONISASI CLOUD) ──
    try {
      const { data: dbCheck } = await supabase
        .from('user_requests')
        .select('username')
        .eq('username', form.username.trim())
        .maybeSingle();

      if (dbCheck) {
        setError('Username sudah terdaftar di sistem pusat. Silakan gunakan username lain.')
        setLoading(false)
        return
      }
    } catch (e) {}

    const request = {
      id:          Date.now(),
      username:    form.username.trim(),
      password:    form.password,
      role:        'masyarakat',
      display:     form.fullName.trim() || form.username.trim(),
      full_name:   form.fullName.trim(),
      email:       form.email.trim(),
      phone:       form.phone.trim(),
      status:      'pending',
      requested_at: new Date().toISOString(),
    }

    // Simpan ke antrian lokal
    pendingUsers.push(request)
    localStorage.setItem('epus_pending_users', JSON.stringify(pendingUsers))

    // Kirim ke Supabase user_requests (jika tabel tersedia)
    try {
      await supabase.from('user_requests').insert({
        username:     request.username,
        full_name:    request.full_name,
        email:        request.email,
        phone:        request.phone,
        password_hash: request.password, // plain for demo; in prod use bcrypt
        role:         'masyarakat',
        status:       'pending',
      })
    } catch (_) { /* table may not exist yet */ }

    await logActivity(null, request.username, 'system', 'Pendaftaran akun baru (menunggu approval admin)')
    setLoading(false)
    setSuccess(true)
  }

  if (success) {
    return (
      <motion.div initial={{ opacity: 0, scale: 0.9 }} animate={{ opacity: 1, scale: 1 }} className="text-center py-4">
        <motion.div animate={{ rotate: [0, 10, -10, 0] }} transition={{ delay: 0.3, duration: 0.5 }}
          className="text-5xl mb-4">⏳</motion.div>
        <h3 className="text-white font-black text-lg mb-2">Pendaftaran Terkirim!</h3>
        <div className="bg-amber-500/10 border border-amber-500/20 rounded-2xl px-4 py-3 mb-4 text-left">
          <p className="text-amber-300 text-xs font-black uppercase tracking-widest mb-1">⚠️ Menunggu Persetujuan</p>
          <p className="text-slate-400 text-xs font-medium">
            Akun <span className="text-white font-black">@{form.username}</span> sedang diverifikasi oleh Pustakawan.
            Setelah disetujui, notifikasi akan dikirim ke <span className="text-primary-300 font-bold">{form.email}</span>.
          </p>
        </div>
        <p className="text-slate-500 text-[10px] font-medium mb-4">Biasanya diproses dalam 1×24 jam.</p>
        <button onClick={onBack}
          className="px-8 py-3 bg-white/10 text-white font-black text-sm rounded-2xl hover:bg-white/20 active:scale-95 transition-all border border-white/10">
          ← Kembali ke Login
        </button>
      </motion.div>
    )
  }

  return (
    <form onSubmit={handleRegister} className="space-y-3">
      {/* Full Name */}
      {[
        { k: 'fullName', label: 'Nama Lengkap', ph: 'Nama lengkap Anda...', icon: User, type: 'text', req: false },
        { k: 'username', label: 'Username *',   ph: 'Pilih username unik...', icon: User, type: 'text', req: true },
        { k: 'email',    label: 'Email *',       ph: 'email@contoh.com',       icon: Mail, type: 'email', req: true },
        { k: 'phone',    label: 'No. HP / WA',  ph: '08xxxxxxxxxx',           icon: Phone, type: 'tel', req: false },
      ].map(({ k, label, ph, icon: Icon, type, req }) => (
        <div key={k}>
          <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1.5 block">{label}</label>
          <div className="flex items-center bg-white/10 rounded-2xl px-4 py-3 border border-white/10 focus-within:border-primary-500 transition-colors">
            <Icon size={16} className="text-slate-500 mr-3 shrink-0" />
            <input value={form[k]} onChange={set(k)} placeholder={ph} type={type} required={req}
              className="flex-1 bg-transparent border-none outline-none text-white placeholder-slate-500 text-sm font-medium" />
          </div>
        </div>
      ))}

      {/* Password */}
      {[
        { k: 'password', label: 'Password *', ph: 'Min. 6 karakter' },
        { k: 'confirm',  label: 'Konfirmasi Password *', ph: 'Ulangi password' },
      ].map(({ k, label, ph }) => (
        <div key={k}>
          <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1.5 block">{label}</label>
          <div className="flex items-center bg-white/10 rounded-2xl px-4 py-3 border border-white/10 focus-within:border-primary-500 transition-colors">
            <Lock size={16} className="text-slate-500 mr-3 shrink-0" />
            <input value={form[k]} onChange={set(k)} type={showPass ? 'text' : 'password'} placeholder={ph} required
              className="flex-1 bg-transparent border-none outline-none text-white placeholder-slate-500 text-sm font-medium" />
            {k === 'password' && (
              <button type="button" onClick={() => setShowPass(p => !p)} className="text-slate-500 hover:text-slate-300 ml-2">
                {showPass ? <EyeOff size={16} /> : <Eye size={16} />}
              </button>
            )}
          </div>
        </div>
      ))}

      {/* Role badge */}
      <div className="flex items-center gap-2 bg-emerald-500/10 rounded-2xl px-4 py-2.5 border border-emerald-500/20">
        <Users size={14} className="text-emerald-400 shrink-0" />
        <div>
          <p className="text-[10px] font-black text-emerald-300 uppercase tracking-wider">Role: Masyarakat Umum</p>
          <p className="text-[9px] text-slate-500 font-medium">Akun perlu disetujui pustakawan sebelum bisa login</p>
        </div>
      </div>

      <AnimatePresence>
        {error && (
          <motion.p initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
            className="text-red-400 text-xs font-bold text-center bg-red-500/10 rounded-xl px-4 py-2.5">
            ⚠️ {error}
          </motion.p>
        )}
      </AnimatePresence>

      <button type="submit" disabled={loading}
        className="w-full py-3.5 mt-1 bg-gradient-to-r from-emerald-600 to-teal-600 text-white font-black text-sm uppercase tracking-widest rounded-2xl shadow-2xl hover:opacity-90 active:scale-95 transition-all disabled:opacity-60 flex items-center justify-center gap-2">
        {loading
          ? <div className="w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin" />
          : <><span>Kirim Pendaftaran</span><ChevronRight size={18} /></>}
      </button>

      <button type="button" onClick={onBack}
        className="w-full py-2.5 text-slate-400 font-black text-xs uppercase tracking-widest hover:text-white transition-colors text-center">
        ← Kembali ke Login
      </button>
    </form>
  )
}

// ── Main Login ───────────────────────────────────────────────────────
const Login = ({ onLogin, schoolIdentity }) => {
  const [username, setUsername] = useState('')
  const [password, setPassword] = useState('')
  const [showPass, setShowPass] = useState(false)
  const [error, setError]       = useState('')
  const [loading, setLoading]   = useState(false)
  const [mode, setMode]         = useState('login') // 'login' | 'register'

  const handleLogin = async (e) => {
    e.preventDefault()

    // Coba Fullscreen otomatis saat ada aksi klik dari pengguna (wajib karena batasan browser)
    try {
      const el = document.documentElement;
      if (el.requestFullscreen) el.requestFullscreen();
      else if (el.webkitRequestFullscreen) el.webkitRequestFullscreen();
      else if (el.mozRequestFullScreen) el.mozRequestFullScreen();
      else if (el.msRequestFullscreen) el.msRequestFullscreen();
    } catch (err) { console.error("Fullscreen error", err); }

    setError('')
    setLoading(true)
    await new Promise(r => setTimeout(r, 700))

    // ── 1. CEK KE DATABASE SUPABASE (SINKRONISASI CLOUD) ──
    try {
      const { data: dbRequest, error: dbErr } = await supabase
        .from('user_requests')
        .select('*')
        .eq('username', username.trim())
        .single();
      
      if (dbRequest && !dbErr) {
        if (dbRequest.status === 'pending') {
          setError('Akun Anda sedang menunggu persetujuan Pustakawan. Cek email Anda setelah disetujui.');
          setLoading(false);
          return;
        }
        if (dbRequest.status === 'rejected') {
          setError('Maaf, pendaftaran akun Anda ditolak oleh Pustakawan.');
          setLoading(false);
          return;
        }
        // Jika status approved, kita lanjut proses login di bawah
        // Gunakan password dari DB jika it's a registered user
        if (dbRequest.status === 'approved' && dbRequest.password_hash === password) {
          // Login Berhasil (dari DB)
          const sUser = {
            id: dbRequest.id,
            username: dbRequest.username,
            role: dbRequest.role || 'masyarakat',
            display: dbRequest.full_name || dbRequest.username,
            full_name: dbRequest.full_name,
            email: dbRequest.email
          };
          await logActivity(sUser.id, sUser.username, 'system', 'Pendaftar berhasil masuk (Database Approved)');
          onLogin(sUser);
          setLoading(false);
          return;
        }
      }
    } catch (e) { console.warn('Sync DB Check Failed:', e) }

    // ── 2. CEK LOCAL FALLBACK & DEMO ACCOUNTS ──
    const pendingUsers = JSON.parse(localStorage.getItem('epus_pending_users') || '[]')
    const isPending = pendingUsers.find(u =>
      u.username.toLowerCase() === username.trim().toLowerCase() && 
      u.password === password &&
      (u.status === 'pending' || !u.status)
    )
    if (isPending) {
      setError('Akun Anda sedang menunggu persetujuan Pustakawan. Cek email Anda setelah disetujui.')
      setLoading(false)
      return
    }

    const savedUsers = JSON.parse(localStorage.getItem('epus_users') || '[]')
    const allAccounts = [...DEMO_ACCOUNTS]

    // Gabungkan data dari USERS_DATA agar semua user bisa login dengan password default
    USERS_DATA.forEach(u => {
      if (!allAccounts.find(a => a.username === u.username)) {
        allAccounts.push({
          ...u,
          password: u.role === 'teacher' ? 'guru123' : '12345',
          display: u.full_name
        })
      }
    })

    // Gabungkan perubahan profil / password dari localStorage (khusus hasil edit)
    savedUsers.forEach(u => {
      const idx = allAccounts.findIndex(a => a.username.toLowerCase() === u.username.toLowerCase())
      if (idx > -1) {
        // Gabungkan properties
        Object.keys(u).forEach(key => {
          // Jangan timba password dengan string kosong
          if (key === 'password' && (!u[key] || u[key].trim() === '')) return;
          allAccounts[idx][key] = u[key]
        })
      } else {
        allAccounts.push(u)
      }
    })

    const found = allAccounts.find(
      a => a.username.toLowerCase() === username.trim().toLowerCase() && a.password === password
    )

    if (found) {
      try {
        const { data, error: fetchErr } = await supabase
          .from('profiles').select('*').eq('username', found.username).single()
        if (data && !fetchErr) {
          const sUser = { ...found, ...data }
          await logActivity(sUser.id, sUser.username, 'system', 'Pengguna berhasil masuk ke sistem')
          onLogin(sUser)
        } else {
          await logActivity(null, found.username, 'system', 'Pengguna masuk')
          onLogin({ ...found })
        }
      } catch {
        onLogin({ ...found })
      }
    } else {
      setError('Username atau password salah.')
    }
    setLoading(false)
  }

  return (
    <div className="min-h-screen bg-slate-900 flex flex-col items-center justify-center relative overflow-hidden p-4">
      <div className="absolute top-0 right-0 w-96 h-96 bg-primary-500/20 rounded-full blur-[100px] -mr-48 -mt-48" />
      <div className="absolute bottom-0 left-0 w-80 h-80 bg-indigo-500/20 rounded-full blur-[100px] -ml-40 -mb-40" />

      <motion.div initial={{ opacity: 0, y: 40 }} animate={{ opacity: 1, y: 0 }}
        transition={{ type: 'spring', damping: 25, stiffness: 200 }}
        className="w-full max-w-sm relative z-10">

        {/* Branding */}
        <div className="text-center mb-8">
          <motion.div initial={{ scale: 0 }} animate={{ scale: 1 }}
            transition={{ delay: 0.2, type: 'spring', stiffness: 300 }}
            className="w-20 h-20 bg-gradient-to-br from-primary-500 to-indigo-600 rounded-[2rem] flex items-center justify-center mx-auto mb-5 shadow-2xl shadow-primary-900/50 overflow-hidden">
            {schoolIdentity?.logo?.includes('http')
              ? <img src={schoolIdentity.logo} alt="Logo" className="w-full h-full object-cover" />
              : <BookOpen size={36} className="text-white" />}
          </motion.div>
          <h1 className="text-3xl font-black text-white tracking-tighter">e-Perpus Digital</h1>
          <p className="text-primary-300 text-sm font-bold mt-2 uppercase tracking-wide">{schoolIdentity?.name || 'Sistem Perpustakaan Digital'}</p>
        </div>

        {/* Card */}
        <div className="bg-white/5 backdrop-blur-xl rounded-[3rem] p-7 border border-white/10 shadow-2xl">
          {/* Tab Switch */}
          <div className="flex bg-white/5 rounded-2xl p-1 mb-6 border border-white/10">
            {[['login','🔐 Masuk'],['register','📝 Daftar Baru']].map(([m, lbl]) => (
              <button key={m} onClick={() => { setMode(m); setError('') }}
                className={`flex-1 py-2.5 rounded-xl text-xs font-black uppercase tracking-widest transition-all ${mode === m ? 'bg-primary-600 text-white shadow-lg' : 'text-slate-400 hover:text-white'}`}>
                {lbl}
              </button>
            ))}
          </div>

          <AnimatePresence mode="wait">
            {mode === 'login' ? (
              <motion.div key="login" initial={{ opacity: 0, x: -20 }} animate={{ opacity: 1, x: 0 }} exit={{ opacity: 0, x: 20 }}>
                <form onSubmit={handleLogin} className="space-y-4">
                  <div>
                    <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2 block">Username / NIS / NIP</label>
                    <div className="flex items-center bg-white/10 rounded-2xl px-4 py-3.5 border border-white/10 focus-within:border-primary-500 transition-colors">
                      <User size={18} className="text-slate-500 mr-3 shrink-0" />
                      <input type="text" value={username} onChange={e => setUsername(e.target.value)}
                        placeholder="Masukkan username..." required
                        className="flex-1 bg-transparent border-none outline-none text-white placeholder-slate-500 text-sm font-medium" />
                    </div>
                  </div>
                  <div>
                    <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2 block">Password</label>
                    <div className="flex items-center bg-white/10 rounded-2xl px-4 py-3.5 border border-white/10 focus-within:border-primary-500 transition-colors">
                      <Lock size={18} className="text-slate-500 mr-3 shrink-0" />
                      <input type={showPass ? 'text' : 'password'} value={password} onChange={e => setPassword(e.target.value)}
                        placeholder="••••••••" required
                        className="flex-1 bg-transparent border-none outline-none text-white placeholder-slate-500 text-sm font-medium" />
                      <button type="button" onClick={() => setShowPass(p => !p)} className="text-slate-500 hover:text-slate-300 ml-2">
                        {showPass ? <EyeOff size={18} /> : <Eye size={18} />}
                      </button>
                    </div>
                  </div>

                  <AnimatePresence>
                    {error && (
                      <motion.div initial={{ opacity: 0, y: -8 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0 }}
                        className={`text-xs font-bold text-center rounded-xl px-4 py-3 flex items-start gap-2 ${error.includes('menunggu') ? 'bg-amber-500/10 text-amber-300 border border-amber-500/20' : 'bg-red-500/10 text-red-400'}`}>
                        {error.includes('menunggu') ? <Clock size={14} className="shrink-0 mt-0.5" /> : '⚠️'}
                        <span>{error}</span>
                      </motion.div>
                    )}
                  </AnimatePresence>

                  <button type="submit" disabled={loading}
                    className="w-full py-4 mt-2 bg-gradient-to-r from-primary-600 to-indigo-600 text-white font-black text-sm uppercase tracking-widest rounded-2xl shadow-2xl hover:opacity-90 active:scale-95 transition-all disabled:opacity-60 flex items-center justify-center gap-2">
                    {loading ? <div className="w-5 h-5 border-2 border-white/30 border-t-white rounded-full animate-spin" />
                      : <><span>Masuk Sekarang</span><ChevronRight size={18} /></>}
                  </button>

                  <button type="button" onClick={() => setMode('register')}
                    className="w-full text-center text-slate-500 text-xs font-bold hover:text-primary-400 transition-colors pt-1">
                    Masyarakat umum? <span className="text-primary-400 font-black">Daftar di sini →</span>
                  </button>
                </form>
              </motion.div>
            ) : (
              <motion.div key="register" initial={{ opacity: 0, x: 20 }} animate={{ opacity: 1, x: 0 }} exit={{ opacity: 0, x: -20 }}>
                <RegisterForm onBack={() => setMode('login')} schoolIdentity={schoolIdentity} />
              </motion.div>
            )}
          </AnimatePresence>
        </div>

        <p className="text-center text-slate-600 text-[10px] font-bold uppercase tracking-widest mt-6 leading-relaxed">
          Aplikasi ini dibuat khusus untuk<br/>
          <span className="text-primary-400 text-xs">{schoolIdentity?.name || 'Sekolah'}</span><br/><br/>
          © 2026 e-Perpus Digital — v2.0
        </p>
      </motion.div>
    </div>
  )
}

export default Login
