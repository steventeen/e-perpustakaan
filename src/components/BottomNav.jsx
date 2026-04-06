import { Home, Search, Book, User, LayoutGrid, Repeat, Sparkles, BarChart3, HelpCircle, Inbox, Users, Menu, X, LogOut, Bell } from 'lucide-react'
import { motion, AnimatePresence } from 'framer-motion'
import { useState } from 'react'

// ── Semua Menu per role ───────────────────────────────────────────────
const MENU_STUDENT = [
  { id: 'home',    icon: Home,     label: 'Beranda',    color: 'bg-blue-100 text-blue-600' },
  { id: 'catalog', icon: Book,     label: 'Koleksi',    color: 'bg-purple-100 text-purple-600' },
  { id: 'search',  icon: Search,   label: 'Cari Buku',  color: 'bg-cyan-100 text-cyan-600' },
  { id: 'ai',      icon: Sparkles, label: 'AI Tutor',   color: 'bg-indigo-100 text-indigo-600', badge: 'AI' },
  { id: 'guide',   icon: HelpCircle, label: 'Panduan',  color: 'bg-amber-100 text-amber-600' },
  { id: 'profile', icon: User,     label: 'Profil',     color: 'bg-slate-100 text-slate-600' },
]

const MENU_LIBRARIAN = [
  { id: 'home',        icon: Home,        label: 'Dashboard',    color: 'bg-blue-100 text-blue-600' },
  { id: 'catalog',     icon: Book,        label: 'Koleksi',      color: 'bg-purple-100 text-purple-600' },
  { id: 'search',      icon: Search,      label: 'Cari Buku',    color: 'bg-cyan-100 text-cyan-600' },
  { id: 'ai',          icon: Sparkles,    label: 'AI Tutor',     color: 'bg-indigo-100 text-indigo-600', badge: 'AI' },
  { id: 'circulation', icon: Repeat,      label: 'Sirkulasi',    color: 'bg-emerald-100 text-emerald-600' },
  { id: 'admin',       icon: LayoutGrid,  label: 'Admin Panel',  color: 'bg-rose-100 text-rose-600' },
  { id: 'reports',     icon: BarChart3,   label: 'Laporan',      color: 'bg-orange-100 text-orange-600' },
  { id: 'approval',    icon: Inbox,       label: 'Persetujuan',  color: 'bg-amber-100 text-amber-600', badge: '!' },
  { id: 'guide',       icon: HelpCircle,  label: 'Panduan',      color: 'bg-teal-100 text-teal-600' },
  { id: 'profile',     icon: User,        label: 'Profil',       color: 'bg-slate-100 text-slate-600' },
]

const MENU_TEACHER = [
  { id: 'home',    icon: Home,     label: 'Beranda',    color: 'bg-blue-100 text-blue-600' },
  { id: 'catalog', icon: Book,     label: 'Koleksi',    color: 'bg-purple-100 text-purple-600' },
  { id: 'search',  icon: Search,   label: 'Cari Buku',  color: 'bg-cyan-100 text-cyan-600' },
  { id: 'ai',      icon: Sparkles, label: 'AI Tutor',   color: 'bg-indigo-100 text-indigo-600', badge: 'AI' },
  { id: 'guide',   icon: HelpCircle, label: 'Panduan',  color: 'bg-amber-100 text-amber-600' },
  { id: 'profile', icon: User,     label: 'Profil',     color: 'bg-slate-100 text-slate-600' },
]

const ROLE_MENU = {
  librarian:  MENU_LIBRARIAN,
  student:    MENU_STUDENT,
  teacher:    MENU_TEACHER,
  masyarakat: MENU_STUDENT,
}

// ── Bottom Quick Item ─────────────────────────────────────────────────
const NavItem = ({ id, icon: Icon, label, activeTab, setActiveTab, special, badge }) => (
  <button
    onClick={() => setActiveTab(id)}
    className={`flex flex-col items-center justify-center space-y-1 transition-all duration-300 w-full relative ${
      activeTab === id ? 'text-primary-600' : 'text-slate-400 hover:text-slate-600'
    }`}
  >
    <div className={`p-2 rounded-2xl transition-all duration-300 ${
      activeTab === id
        ? special ? 'bg-gradient-to-br from-indigo-100 to-purple-100 scale-110' : 'bg-primary-100 scale-110'
        : 'bg-transparent'
    }`}>
      <Icon size={22} className={activeTab === id && special ? 'text-indigo-600' : ''} />
    </div>
    <span className={`text-[9px] font-black uppercase tracking-wider ${
      activeTab === id ? (special ? 'text-indigo-600' : 'text-primary-600') : ''
    }`}>{label}</span>
    {activeTab === id && (
      <motion.div layoutId="nav-dot"
        className={`absolute -bottom-1 h-1 w-6 rounded-full ${special ? 'bg-indigo-500' : 'bg-primary-600'}`} />
    )}
    {badge && activeTab !== id && (
      <span className="absolute -top-0.5 right-0 text-[7px] font-black bg-gradient-to-r from-indigo-500 to-purple-500 text-white px-1.5 py-0.5 rounded-full uppercase leading-none">
        {badge}
      </span>
    )}
  </button>
)

// ── Full Menu Drawer ──────────────────────────────────────────────────
const MenuDrawer = ({ open, onClose, activeTab, setActiveTab, role, user, onLogout }) => {
  const menus = ROLE_MENU[role] || MENU_STUDENT
  const ROLE_BADGE = {
    librarian:  { label: 'Pustakawan', cls: 'bg-primary-100 text-primary-700' },
    student:    { label: 'Siswa',      cls: 'bg-emerald-100 text-emerald-700' },
    teacher:    { label: 'Guru',       cls: 'bg-amber-100 text-amber-700' },
    masyarakat: { label: 'Masyarakat', cls: 'bg-teal-100 text-teal-700' },
  }
  const badge = ROLE_BADGE[role] || ROLE_BADGE.student

  return (
    <AnimatePresence>
      {open && (
        <>
          {/* Backdrop */}
          <motion.div
            initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
            onClick={onClose}
            className="fixed inset-0 z-[90] bg-slate-900/60 backdrop-blur-sm"
          />
          {/* Drawer */}
          <motion.div
            initial={{ y: '100%' }}
            animate={{ y: 0 }}
            exit={{ y: '100%' }}
            transition={{ type: 'spring', damping: 30, stiffness: 280 }}
            className="fixed bottom-0 left-0 right-0 z-[100] bg-white rounded-t-[2.5rem] shadow-2xl pb-8 max-h-[85vh] overflow-y-auto"
          >
            {/* Handle */}
            <div className="flex justify-center pt-3 pb-1">
              <div className="w-10 h-1.5 bg-slate-200 rounded-full" />
            </div>

            {/* User Card */}
            {user && (
              <div className="mx-5 mt-3 mb-5 bg-slate-50 rounded-2xl px-4 py-3 flex items-center gap-3 border border-slate-100">
                <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-primary-500 to-indigo-600 flex items-center justify-center text-white text-sm font-black shrink-0">
                  {user.display?.[0]?.toUpperCase() || 'U'}
                </div>
                <div className="flex-1 min-w-0">
                  <p className="font-black text-slate-800 text-sm truncate">{user.display}</p>
                  <span className={`text-[9px] font-black px-2 py-0.5 rounded-lg uppercase ${badge.cls}`}>{badge.label}</span>
                </div>
                <button onClick={onClose} className="text-slate-300 hover:text-slate-500">
                  <X size={18} />
                </button>
              </div>
            )}

            {/* Title */}
            <p className="text-[10px] font-black text-slate-400 uppercase tracking-[0.2em] px-6 mb-3">Semua Menu</p>

            {/* Grid Menu */}
            <div className="grid grid-cols-3 gap-3 px-5">
              {menus.map(m => {
                const Icon = m.icon
                const isActive = activeTab === m.id
                return (
                  <button
                    key={m.id}
                    onClick={() => { setActiveTab(m.id); onClose() }}
                    className={`relative flex flex-col items-center justify-center gap-2 py-4 px-2 rounded-2xl transition-all active:scale-95 ${
                      isActive
                        ? 'bg-primary-600 text-white shadow-lg shadow-primary-100'
                        : 'bg-slate-50 hover:bg-slate-100 border border-slate-100'
                    }`}
                  >
                    {m.badge && !isActive && (
                      <span className="absolute -top-1 -right-1 text-[8px] font-black bg-amber-500 text-white px-1.5 py-0.5 rounded-full uppercase leading-none">
                        {m.badge}
                      </span>
                    )}
                    <div className={`w-10 h-10 rounded-xl flex items-center justify-center ${isActive ? 'bg-white/20' : m.color}`}>
                      <Icon size={20} className={isActive ? 'text-white' : ''} />
                    </div>
                    <span className={`text-[10px] font-black text-center leading-tight ${isActive ? 'text-white' : 'text-slate-600'}`}>
                      {m.label}
                    </span>
                  </button>
                )
              })}
            </div>

            {/* Logout */}
            <div className="px-5 mt-5">
              <button onClick={() => { onLogout(); onClose() }}
                className="w-full flex items-center justify-center gap-2 py-4 bg-red-50 border border-red-100 text-red-500 rounded-2xl font-black text-sm hover:bg-red-100 transition-colors active:scale-95">
                <LogOut size={18} /> Keluar Akun
              </button>
            </div>
          </motion.div>
        </>
      )}
    </AnimatePresence>
  )
}

// ── Main BottomNav ────────────────────────────────────────────────────
const BottomNav = ({ activeTab, setActiveTab, role, user, onLogout }) => {
  const [drawerOpen, setDrawerOpen] = useState(false)

  // Quick tabs: 4 item terpenting + tombol "Menu"
  const quickTabs =
    role === 'librarian'
      ? [
          { id: 'home',        icon: Home,       label: 'Beranda' },
          { id: 'catalog',     icon: Book,       label: 'Koleksi' },
          { id: 'ai',          icon: Sparkles,   label: 'AI', special: true, badge: 'AI' },
          { id: 'circulation', icon: Repeat,     label: 'Sirkulasi' },
        ]
      : [
          { id: 'home',    icon: Home,     label: 'Beranda' },
          { id: 'catalog', icon: Book,     label: 'Koleksi' },
          { id: 'ai',      icon: Sparkles, label: 'AI', special: true, badge: 'AI' },
          { id: 'search',  icon: Search,   label: 'Cari' },
        ]

  return (
    <>
      {/* Drawer */}
      <MenuDrawer
        open={drawerOpen}
        onClose={() => setDrawerOpen(false)}
        activeTab={activeTab}
        setActiveTab={setActiveTab}
        role={role}
        user={user}
        onLogout={onLogout}
      />

      {/* Bottom Bar */}
      <nav className="fixed bottom-0 left-0 right-0 max-w-md mx-auto bg-white/95 backdrop-blur-xl border-t border-slate-100 px-2 py-2 flex justify-between items-center z-50 shadow-[0_-8px_30px_rgba(15,23,42,0.08)]">
        {quickTabs.map(t => (
          <NavItem key={t.id} {...t} activeTab={activeTab} setActiveTab={setActiveTab} />
        ))}

        {/* Menu Button */}
        <button
          onClick={() => setDrawerOpen(true)}
          className={`flex flex-col items-center justify-center space-y-1 w-full relative transition-all ${
            drawerOpen ? 'text-primary-600' : 'text-slate-400'
          }`}
        >
          <div className={`p-2 rounded-2xl transition-all ${drawerOpen ? 'bg-primary-100 scale-110' : ''}`}>
            <Menu size={22} />
          </div>
          <span className="text-[9px] font-black uppercase tracking-wider">Menu</span>
        </button>
      </nav>
    </>
  )
}

export default BottomNav
