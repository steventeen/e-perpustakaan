import React, { useState, useEffect } from 'react'
import Login from './pages/Login'
import BottomNav from './components/BottomNav'
import Sidebar from './components/Sidebar'
import Home from './pages/Home'
import Catalog from './pages/Catalog'
import Profile from './pages/Profile'
import LibrarianPanel from './pages/LibrarianPanel'
import Circulation from './pages/Circulation'
import { sendNotification } from './utils/notifications'
import EBookViewer from './components/EBookViewer'
import ApprovalModule from './components/ApprovalModule'
import UserApprovalModule from './components/UserApprovalModule'
import NotificationBell from './components/NotificationBell'
import { GuidePage, ReportsPage } from './pages/StaticPages'
import AIChat from './pages/AIChat'
import { AnimatePresence, motion } from 'framer-motion'
import { supabase } from './lib/supabase'

// ── Fullscreen helpers ───────────────────────────────────────
const enterFullscreen = () => {
  const el = document.documentElement
  if (el.requestFullscreen) {
    el.requestFullscreen().catch(() => { /* Abaikan error 'user gesture required' */ })
  } else if (el.webkitRequestFullscreen) {
    el.webkitRequestFullscreen()
  } else if (el.mozRequestFullScreen) {
    el.mozRequestFullScreen()
  } else if (el.msRequestFullscreen) {
    el.msRequestFullscreen()
  }
}



function App() {
  // ── Auth State ──────────────────────────────────────────
  const [user, setUser] = useState(() => {
    const saved = localStorage.getItem('epus_session_user')
    return saved ? JSON.parse(saved) : null
  })

  // ── App State ───────────────────────────────────────────
  const [activeTab, setActiveTab] = useState('home')
  const [category, setCategory] = useState('Semua')
  const [role, setRole] = useState(() => {
    const saved = localStorage.getItem('epus_session_user')
    if (saved) return JSON.parse(saved).role
    return 'student'
  })

  // ── FULLSCREEN on Mount & Interaction ──────────────────
  useEffect(() => {
    // Coba masuk fullscreen saat pertama kali
    const tryFullscreen = () => {
      const isFs = !!(
        document.fullscreenElement ||
        document.webkitFullscreenElement ||
        document.mozFullScreenElement ||
        document.msFullscreenElement
      )
      if (!isFs) enterFullscreen()
    }

    const timer = setTimeout(tryFullscreen, 500)

    // Ketika layar HP disentuh (atau diklik), otomatis fullscreen
    const handleUserInteraction = () => {
      tryFullscreen()
    }
    
    document.addEventListener('touchstart', handleUserInteraction, { passive: true })
    document.addEventListener('click', handleUserInteraction, { passive: true })

    return () => {
      clearTimeout(timer)
      document.removeEventListener('touchstart', handleUserInteraction)
      document.removeEventListener('click', handleUserInteraction)
    }
  }, [])

  // ── SYNC SESSION ──
  useEffect(() => {
    if (user) {
      localStorage.setItem('epus_session_user', JSON.stringify(user))
      setRole(user.role)
    } else {
      localStorage.removeItem('epus_session_user')
    }
  }, [user])

  const [readingBook, setReadingBook] = useState(null)
  const [showLogoutConfirm, setShowLogoutConfirm] = useState(false)
  const [schoolIdentity, setSchoolIdentity] = useState(() => {
    const saved = localStorage.getItem('epus_school_identity')
    return saved ? JSON.parse(saved) : {
      name: 'SMP NEGERI 2 AMURANG TIMUR (SATAP)',
      department: 'Kementerian Pendidikan Dasar',
      logo: 'https://upload.wikimedia.org/wikipedia/commons/9/9d/Logo_Tut_Wuri_Handayani.png'
    }
  })

  useEffect(() => {
    localStorage.setItem('epus_school_identity', JSON.stringify(schoolIdentity))
  }, [schoolIdentity])

  const [books, setBooks] = useState([])
  const [isLoadingBooks, setIsLoadingBooks] = useState(true)
  const [categories, setCategories] = useState([])
  const [stats, setStats] = useState({ users: 0, active: 0, late: 0 })

  // ── INIT SUPABASE ───────────────────────────────────────
  useEffect(() => {
    fetchBooks()
    fetchCategories()
    fetchStats()
    fetchSettings()
  }, [])

  const fetchSettings = async () => {
    try {
      const { data, error } = await supabase.from('settings').select('*')
      if (data && !error) {
        const identity = { ...schoolIdentity }
        data.forEach(s => {
          if (s.key === 'school_name') identity.name = s.value
          if (s.key === 'school_department') identity.department = s.value
          if (s.key === 'school_logo') identity.logo = s.value
          
          // Persist SMTP & Template to localStorage for components that need them
          if (s.key === 'email_host') {
            const current = JSON.parse(localStorage.getItem('epus_smtp') || '{}')
            localStorage.setItem('epus_smtp', JSON.stringify({ ...current, host: s.value }))
          }
          if (s.key === 'email_port') {
            const current = JSON.parse(localStorage.getItem('epus_smtp') || '{}')
            localStorage.setItem('epus_smtp', JSON.stringify({ ...current, port: s.value }))
          }
          if (s.key === 'email_user') {
            const current = JSON.parse(localStorage.getItem('epus_smtp') || '{}')
            localStorage.setItem('epus_smtp', JSON.stringify({ ...current, user: s.value }))
          }
          if (s.key === 'email_password') {
            const current = JSON.parse(localStorage.getItem('epus_smtp') || '{}')
            localStorage.setItem('epus_smtp', JSON.stringify({ ...current, pass: s.value }))
          }
          if (s.key === 'email_from_name') {
            const current = JSON.parse(localStorage.getItem('epus_smtp') || '{}')
            localStorage.setItem('epus_smtp', JSON.stringify({ ...current, sender: s.value }))
          }
          if (s.key === 'email_template') {
            localStorage.setItem('epus_email_template', s.value)
          }
        })
        setSchoolIdentity(identity)
      }
    } catch (e) { console.error('Fetch Settings Error:', e) }
  }

  const fetchStats = async () => {
    try {
      const { count: usersCount } = await supabase.from('profiles').select('*', { count: 'exact', head: true })
      const { count: activeCount } = await supabase.from('borrowings').select('*', { count: 'exact', head: true }).eq('status', 'borrowed')
      const { count: lateCount } = await supabase.from('borrowings').select('*', { count: 'exact', head: true }).eq('status', 'late')
      setStats({ users: usersCount || 0, active: activeCount || 0, late: lateCount || 0 })
    } catch (e) { console.error('Fetch Stats Error:', e) }
  }

  const fetchCategories = async () => {
    const { data, error } = await supabase.from('categories').select('*').order('id', { ascending: true })
    if (!error) setCategories(data)
  }

  const fetchBooks = async () => {
    setIsLoadingBooks(true)
    const { data, error } = await supabase.from('books').select(`*, categories (name)`)
    if (!error) {
      setBooks(data.map(b => ({ ...b, category: b.categories?.name || 'Lainnya' })))
    }
    setIsLoadingBooks(false)
  }

  // ── Handlers ────────────────────────────────────────────
  const handleLogin = (loggedUser) => {
    setUser(loggedUser)
    setRole(loggedUser.role)
    setActiveTab('home')
  }

  const handleLogout = () => setShowLogoutConfirm(true)

  const confirmLogout = () => {
    setUser(null)
    setRole('student')
    setActiveTab('home')
    setReadingBook(null)
    setShowLogoutConfirm(false)
  }

  const openReader = async (book) => {
    if (book.requires_approval && role !== 'librarian') {
      // Cek apakah user sudah punya akses yang disetujui
      const granted = JSON.parse(localStorage.getItem('epus_book_access_grants') || '[]')
      const hasAccess = granted.find(g => {
        if (g.book_id !== book.id || g.username !== user?.username || g.status !== 'approved') return false
        // Cek kadaluarsa
        if (g.expiry_at && new Date(g.expiry_at) < new Date()) return false // sudah kadaluarsa
        return true
      })
      if (hasAccess) {
        setReadingBook(book)
        return
      }
      // Cek apakah sudah ada permintaan pending
      const requests = JSON.parse(localStorage.getItem('epus_book_access_requests') || '[]')
      const existing = requests.find(r => r.book_id === book.id && r.username === user?.username)
      if (existing && existing.status === 'pending') {
        alert('⏳ Permintaan akses Anda untuk buku ini sedang diproses. Silakan tunggu konfirmasi dari Pustakawan.')
        return
      }
      if (existing && existing.status === 'rejected') {
        // Cek apakah sudah lewat 24 jam sejak penolakan
        const rejectedAt = existing.reviewed_at ? new Date(existing.reviewed_at) : new Date(existing.requested_at)
        const diffMs = Date.now() - rejectedAt.getTime()
        const diffHours = diffMs / (1000 * 60 * 60)
        if (diffHours < 24) {
          const sisaJam = Math.ceil(24 - diffHours)
          const sisaMenit = Math.ceil((24 - diffHours) * 60)
          const sisaLabel = sisaJam >= 1 ? `${sisaJam} jam lagi` : `${sisaMenit} menit lagi`
          alert(`❌ Permintaan akses Anda untuk buku ini telah ditolak oleh Pustakawan.\n\n⏳ Anda dapat mengajukan kembali dalam ${sisaLabel}.`)
          return
        }
        // Sudah lewat 24 jam → hapus entri lama agar bisa request baru
        const freshRequests = requests.filter(r => !(r.book_id === book.id && r.username === user?.username))
        localStorage.setItem('epus_book_access_requests', JSON.stringify(freshRequests))
      }
      const ask = window.confirm(`🔒 Akses Terbatas!\nBuku "${book.title}" memerlukan persetujuan Kepala Perpustakaan.\n\nApakah Anda ingin mengirimkan permintaan akses membaca?`)
      if (ask) {
        const newRequest = {
          id: Date.now(),
          book_id: book.id,
          book_title: book.title,
          book_author: book.author,
          username: user?.username,
          full_name: user?.full_name || user?.username,
          status: 'pending',
          requested_at: new Date().toISOString()
        }
        // Simpan ke localStorage
        requests.push(newRequest)
        localStorage.setItem('epus_book_access_requests', JSON.stringify(requests))
        // Kirim notifikasi ke admin
        sendNotification('admin', '🔑 Permintaan Akses Buku', `${newRequest.full_name} meminta akses membaca: "${book.title}"`, 'approval', 'approval')
        // Coba simpan ke Supabase
        try {
          await supabase.from('book_access_requests').insert({
            book_id: book.id,
            book_title: book.title,
            username: user?.username,
            full_name: newRequest.full_name,
            status: 'pending'
          })
        } catch(e) { /* tabel mungkin belum ada */ }
        alert('✅ Permintaan akses telah dikirimkan ke Pustakawan. Anda akan mendapat pemberitahuan setelah disetujui.')
      }
      return
    }
    setReadingBook(book)
  }
  const goToCatalog  = () => setActiveTab('catalog')

  const handleNavFromNotif = (link) => {
    if (link) setActiveTab(link)
  }

  // ── Belum Login → Tampilkan halaman Login ───────────────
  if (!user) {
    return (
      <AnimatePresence>
        <motion.div key="login" initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}>
          <Login onLogin={handleLogin} schoolIdentity={schoolIdentity} />
        </motion.div>
      </AnimatePresence>
    )
  }

  const ALL_TABS = ['home','catalog','search','circulation','admin','reports','approval','profile','guide','ai']

  // ── Sudah Login → Tampilkan Aplikasi ────────────────────
  return (
    <div className="flex bg-slate-50 min-h-screen relative overflow-x-hidden font-['Outfit']">

      {/* Sidebar (Desktop) */}
      <Sidebar
        activeTab={activeTab}
        setActiveTab={setActiveTab}
        role={role}
        user={user}
        onLogout={handleLogout}
        notificationBell={<NotificationBell user={user} onNavigate={handleNavFromNotif} />}
      />

      {/* E-Book Reader Overlay */}
      <AnimatePresence>
        {readingBook && (
          <EBookViewer 
            book={readingBook} 
            onClose={() => setReadingBook(null)} 
            user={user}
          />
        )}
      </AnimatePresence>

      {/* Logout Confirm Dialog */}
      <AnimatePresence>
        {showLogoutConfirm && (
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            className="fixed inset-0 z-[200] bg-slate-900/60 backdrop-blur-sm flex items-center justify-center p-6"
          >
            <motion.div
              initial={{ scale: 0.85, opacity: 0 }} animate={{ scale: 1, opacity: 1 }} exit={{ scale: 0.85, opacity: 0 }}
              className="bg-white rounded-[2.5rem] p-8 w-full max-w-sm shadow-2xl text-center"
            >
              <div className="text-5xl mb-4">👋</div>
              <h3 className="text-xl font-black text-slate-800 mb-2">Keluar Akun?</h3>
              <p className="text-slate-400 font-medium text-sm mb-2">
                Login sebagai: <span className="font-black text-slate-700">{user.display}</span>
              </p>
              <p className="text-slate-400 font-medium text-sm mb-8">Anda akan kembali ke halaman login.</p>
              <div className="flex gap-3">
                <button onClick={() => setShowLogoutConfirm(false)}
                  className="flex-1 py-4 bg-slate-100 text-slate-600 rounded-2xl font-black text-sm hover:bg-slate-200 transition-colors">
                  Batal
                </button>
                <button onClick={confirmLogout}
                  className="flex-1 py-4 bg-red-500 text-white rounded-2xl font-black text-sm hover:bg-red-600 shadow-lg shadow-red-100 transition-all active:scale-95">
                  Keluar ✓
                </button>
              </div>
            </motion.div>
          </motion.div>
        )}
      </AnimatePresence>

      {/* Main Content */}
      <main className="flex-1 overflow-y-auto max-w-md mx-auto md:max-w-none md:mx-0 relative pb-24 md:pb-0">

        {/* Notification Bell (Mobile top bar) */}
        <div className="md:hidden fixed top-4 right-4 z-50">
          <NotificationBell user={user} onNavigate={handleNavFromNotif} />
        </div>

        <AnimatePresence mode="wait">
          <motion.div
            key={activeTab}
            initial={{ opacity: 0, y: 16 }}
            animate={{ opacity: 1, y: 0 }}
            exit={{ opacity: 0, y: -16 }}
            transition={{ type: 'spring', damping: 28, stiffness: 220 }}
            className="w-full"
          >
            {/* ── HOME ── */}
            {activeTab === 'home' && (
              <Home
                books={books} categories={categories}
                activeCategory={category} setActiveCategory={setCategory}
                onOpenReader={openReader} onSeeAll={goToCatalog}
                schoolIdentity={schoolIdentity}
              />
            )}

            {/* ── CATALOG ── */}
            {activeTab === 'catalog' && (
              <Catalog books={books} categories={categories} onOpenReader={openReader} />
            )}

            {/* ── SEARCH ── */}
            {activeTab === 'search' && (
              <Catalog books={books} categories={categories} onOpenReader={openReader} autoFocus />
            )}

            {/* ── SIRKULASI ── */}
            {activeTab === 'circulation' && role === 'librarian' && (
              <Circulation books={books} />
            )}

            {/* ── ADMIN PANEL ── */}
            {activeTab === 'admin' && role === 'librarian' && (
              <LibrarianPanel
                books={books} setBooks={setBooks} categories={categories}
                schoolIdentity={schoolIdentity} setSchoolIdentity={setSchoolIdentity}
                refreshBooks={fetchBooks} refreshCategories={fetchCategories} stats={stats}
              />
            )}

            {/* ── LAPORAN ── */}
            {activeTab === 'reports' && role === 'librarian' && (
              <ReportsPage stats={stats} booksCount={books.length} />
            )}

            {/* ── APPROVAL (Pustakawan) ── */}
            {activeTab === 'approval' && role === 'librarian' && (
              <div className="p-6 md:p-10 pb-24 space-y-12">
                {/* Cerpen & Novel Approval */}
                <ApprovalModule user={user} />
                {/* Divider */}
                <div className="border-t-2 border-dashed border-slate-200 pt-10">
                  <UserApprovalModule adminUser={user} />
                </div>
              </div>
            )}

            {/* ── PROFIL ── */}
            {activeTab === 'profile' && (
              <Profile
                role={role} setRole={setRole} user={user} setUser={setUser}
                schoolIdentity={schoolIdentity} setActiveTab={setActiveTab}
                onLogout={handleLogout}
              />
            )}

            {/* ── PANDUAN ── */}
            {activeTab === 'guide' && <GuidePage />}

            {/* ── AI TUTOR ── */}
            {activeTab === 'ai' && <AIChat user={user} />}

            {/* Fallback */}
            {!ALL_TABS.includes(activeTab) && (
              <div className="p-12 text-center text-slate-400 min-h-[80vh] flex flex-col justify-center">
                <p className="text-6xl mb-4">🔍</p>
                <h2 className="text-2xl font-black text-slate-700 mb-2">Halaman Tidak Tersedia</h2>
                <button onClick={() => setActiveTab('home')}
                  className="mt-6 mx-auto px-8 py-4 bg-primary-600 text-white rounded-2xl font-black text-sm shadow-lg active:scale-95 transition-all">
                  Kembali ke Beranda
                </button>
              </div>
            )}
          </motion.div>
        </AnimatePresence>

        {/* Bottom Nav (Mobile) */}
        <div className="md:hidden">
          <BottomNav activeTab={activeTab} setActiveTab={setActiveTab} role={role} user={user} onLogout={handleLogout} />
        </div>
      </main>
    </div>
  )
}

export default App
