import React from 'react'
import { Home, Book, Repeat, LayoutGrid, User, Search, HelpCircle, LogOut, BarChart3, Sparkles, Inbox } from 'lucide-react'

const SidebarItem = ({ id, icon: Icon, label, activeTab, setActiveTab, danger }) => (
  <button
    onClick={() => setActiveTab(id)}
    className={`w-full flex items-center space-x-3 px-5 py-3.5 transition-all duration-300 rounded-2xl mb-1 ${
      activeTab === id
        ? 'bg-primary-600 text-white shadow-lg shadow-primary-100'
        : danger
          ? 'text-red-500 hover:bg-red-50'
          : 'text-slate-500 hover:bg-slate-50'
    }`}
  >
    <Icon size={20} />
    <span className="font-bold text-sm tracking-wide">{label}</span>
  </button>
)

const ROLE_BADGE = {
  librarian: { label: 'Pustakawan', cls: 'bg-primary-100 text-primary-700' },
  student:   { label: 'Siswa',      cls: 'bg-emerald-100 text-emerald-700' },
  teacher:   { label: 'Guru',       cls: 'bg-amber-100 text-amber-700' },
}

const Sidebar = ({ activeTab, setActiveTab, role, user, onLogout, notificationBell }) => {
  const badge = ROLE_BADGE[role] || ROLE_BADGE.student
  return (
    <aside className="hidden md:flex flex-col w-72 bg-white border-r border-slate-100 h-screen sticky top-0 p-6 overflow-y-auto shadow-sm">
      {/* Branding */}
      <div className="flex items-center space-x-3 mb-5 px-2 text-primary-600 font-black text-xl italic uppercase tracking-tighter">
        <div className="w-10 h-10 bg-primary-600 text-white rounded-xl flex items-center justify-center not-italic shadow-lg shadow-primary-100">📖</div>
        <span>e-Perpus</span>
      </div>

      {/* User Info Card */}
      {user && (
        <div className="bg-slate-50 rounded-2xl px-4 py-3 mb-6 border border-slate-100 flex items-center space-x-3">
          <div className="w-10 h-10 bg-gradient-to-br from-primary-500 to-indigo-600 rounded-xl flex items-center justify-center text-white text-xs font-black shrink-0">
            {user.display?.split(' ').map(w=>w[0]).slice(0,2).join('') || 'US'}
          </div>
          <div className="min-w-0 flex-1">
            <p className="text-sm font-black text-slate-800 truncate">{user.display}</p>
            <span className={`text-[9px] font-black px-2 py-0.5 rounded-lg uppercase ${badge.cls}`}>{badge.label}</span>
          </div>
          {/* Notification Bell (Desktop) */}
          {notificationBell && (
            <div className="flex-shrink-0 bg-slate-800 rounded-xl p-1">{notificationBell}</div>
          )}
        </div>
      )}

      {/* Main Navigation */}
      <div className="flex-1 space-y-1">
        <p className="text-[10px] font-black text-slate-400 uppercase tracking-[0.2em] mb-3 px-2">Menu Utama</p>
        <SidebarItem id="home"    icon={Home}   label="Dashboard"    activeTab={activeTab} setActiveTab={setActiveTab} />
        <SidebarItem id="catalog" icon={Book}   label="Koleksi Buku" activeTab={activeTab} setActiveTab={setActiveTab} />
        <SidebarItem id="search"  icon={Search} label="Cari Buku"    activeTab={activeTab} setActiveTab={setActiveTab} />

        {/* AI Tutor — Special item */}
        <div className="relative mt-1">
          <SidebarItem id="ai" icon={Sparkles} label="Tanya AI Tutor" activeTab={activeTab} setActiveTab={setActiveTab} />
          {activeTab !== 'ai' && (
            <span className="absolute right-3 top-1/2 -translate-y-1/2 text-[8px] font-black bg-gradient-to-r from-indigo-500 to-purple-500 text-white px-2 py-0.5 rounded-full uppercase tracking-wider">
              NEW
            </span>
          )}
        </div>

        {role === 'librarian' && (
          <>
            <p className="text-[10px] font-black text-slate-400 uppercase tracking-[0.2em] mt-6 mb-3 px-2">Administrasi</p>
            <SidebarItem id="circulation" icon={Repeat}      label="Sirkulasi"      activeTab={activeTab} setActiveTab={setActiveTab} />
            <SidebarItem id="admin"       icon={LayoutGrid}  label="Admin Panel"    activeTab={activeTab} setActiveTab={setActiveTab} />
            <SidebarItem id="reports"     icon={BarChart3}   label="Laporan"        activeTab={activeTab} setActiveTab={setActiveTab} />
            <div className="relative">
              <SidebarItem id="approval" icon={Inbox} label="Persetujuan Cerpen" activeTab={activeTab} setActiveTab={setActiveTab} />
              {activeTab !== 'approval' && (
                <span className="absolute right-3 top-1/2 -translate-y-1/2 text-[8px] font-black bg-amber-500 text-white px-2 py-0.5 rounded-full uppercase tracking-wider">Review</span>
              )}
            </div>
          </>
        )}

        <p className="text-[10px] font-black text-slate-400 uppercase tracking-[0.2em] mt-6 mb-3 px-2">Akun Saya</p>
        <SidebarItem id="profile" icon={User} label="Profil & Kartu" activeTab={activeTab} setActiveTab={setActiveTab} />
      </div>

      {/* Bottom Actions */}
      <div className="pt-5 border-t border-slate-100 space-y-1">
        <SidebarItem id="guide"    icon={HelpCircle}  label="Panduan"    activeTab={activeTab} setActiveTab={setActiveTab} />
        <button
          onClick={onLogout}
          className="w-full flex items-center space-x-3 px-5 py-3.5 text-red-500 hover:bg-red-50 transition-all rounded-2xl font-bold text-sm"
        >
          <LogOut size={20} />
          <span>Keluar Akun</span>
        </button>
      </div>
    </aside>
  )
}

export default Sidebar
