import React, { useState, useEffect } from 'react'
import { BookOpen, Settings, HelpCircle, ChevronRight, LogOut, User, BarChart3, FileText, Download, Info, Phone, Mail, Globe, X, Clock, AlertTriangle } from 'lucide-react'
import { supabase } from '../lib/supabase'

// ── Settings Page ──────────────────────────────────────────────
export const SettingsPage = ({ role, setRole }) => {
  const handleSave = () => alert('✅ Pengaturan berhasil disimpan!')

  return (
    <div className="p-6 md:p-12 space-y-8 pb-24">
      <header>
        <h1 className="text-3xl font-black text-slate-800 tracking-tight mb-1">Pengaturan</h1>
        <p className="text-slate-400 font-medium text-sm">Konfigurasi aplikasi perpustakaan Anda</p>
      </header>

      {/* Identitas Sekolah */}
      <section className="bg-white rounded-3xl p-6 shadow-sm border border-slate-100">
        <h3 className="font-black text-slate-800 mb-5 flex items-center">
          <span className="w-8 h-8 bg-blue-100 text-base rounded-xl flex items-center justify-center mr-3">🏫</span>
          Identitas Sekolah
        </h3>
        <div className="space-y-4">
          {[
            { label: 'Nama Sekolah', placeholder: 'SMP Negeri 1 ...', type: 'text' },
            { label: 'Alamat Lengkap', placeholder: 'Jl. ...', type: 'text' },
            { label: 'NPSN', placeholder: '12345678', type: 'text' },
            { label: 'Email Sekolah', placeholder: 'email@sekolah.sch.id', type: 'email' },
            { label: 'No. Telepon', placeholder: '0811...', type: 'tel' },
          ].map(f => (
            <div key={f.label}>
              <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">{f.label}</label>
              <input type={f.type} placeholder={f.placeholder}
                className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium" />
            </div>
          ))}
          <div className="grid grid-cols-2 gap-4">
            <div>
              <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Jenjang</label>
              <select defaultValue="SMP" className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm font-medium outline-none">
                <option>SD</option><option>SMP</option><option>SMA</option>
              </select>
            </div>
            <div>
              <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Durasi Pinjam (hari)</label>
              <input type="number" defaultValue={7}
                className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm font-medium outline-none" />
            </div>
          </div>
        </div>
        <button onClick={handleSave}
          className="mt-5 w-full bg-slate-800 text-white font-black text-sm py-4 rounded-2xl hover:bg-black transition-colors active:scale-95">
          💾 Simpan Identitas
        </button>
      </section>

      {/* Role Switcher */}
      <section className="bg-white rounded-3xl p-6 shadow-sm border border-slate-100">
        <h3 className="font-black text-slate-800 mb-4 flex items-center">
          <span className="w-8 h-8 bg-purple-100 text-base rounded-xl flex items-center justify-center mr-3">🔑</span>
          Mode Pengguna
        </h3>
        <p className="text-slate-500 text-sm font-medium mb-4">Mode aktif saat ini: <span className="font-black text-primary-600 uppercase">{role}</span></p>
        <div className="grid grid-cols-2 gap-3">
          {[['student', '👨‍🎓 Mode Siswa'], ['librarian', '👩‍💼 Mode Pustakawan']].map(([r, label]) => (
            <button key={r} onClick={() => setRole(r)}
              className={`py-4 rounded-2xl font-black text-sm transition-all active:scale-95 ${role === r ? 'bg-primary-600 text-white shadow-lg shadow-primary-100' : 'bg-slate-100 text-slate-500 hover:bg-slate-200'}`}>
              {label}
            </button>
          ))}
        </div>
      </section>

      {/* Tema */}
      <section className="bg-white rounded-3xl p-6 shadow-sm border border-slate-100">
        <h3 className="font-black text-slate-800 mb-4 flex items-center">
          <span className="w-8 h-8 bg-amber-100 text-base rounded-xl flex items-center justify-center mr-3">🎨</span>
          Preferensi Tampilan
        </h3>
        <div className="space-y-3">
          {[
            { label: 'Tampilan Default (Terang)', active: true },
            { label: 'Tampilan Gelap (Segera Hadir)', active: false },
          ].map(t => (
            <div key={t.label} className={`flex items-center justify-between p-4 rounded-2xl border ${t.active ? 'border-primary-200 bg-primary-50' : 'border-slate-100 bg-slate-50'}`}>
              <span className="font-bold text-sm text-slate-700">{t.label}</span>
              <div className={`w-5 h-5 rounded-full border-2 flex items-center justify-center ${t.active ? 'border-primary-600 bg-primary-600' : 'border-slate-300'}`}>
                {t.active && <div className="w-2 h-2 bg-white rounded-full" />}
              </div>
            </div>
          ))}
        </div>
      </section>
    </div>
  )
}

// ── Guide / Panduan Page ───────────────────────────────────────
export const GuidePage = () => {
  const steps = [
    { icon: '🔍', title: 'Cari Buku', desc: 'Gunakan fitur Pencarian atau Katalog untuk menemukan buku berdasarkan judul, pengarang, atau kategori mata pelajaran.' },
    { icon: '📖', title: 'Baca Digital', desc: 'Klik tombol "Baca Digital" pada kartu buku untuk membuka pembaca e-book langsung di dalam aplikasi.' },
    { icon: '📥', title: 'Peminjaman', desc: 'Pustakawan dapat mencatat peminjaman buku melalui menu Sirkulasi. Cari nama siswa dan buku yang akan dipinjam.' },
    { icon: '📤', title: 'Pengembalian', desc: 'Catat pengembalian buku melalui tab Pengembalian di menu Sirkulasi. Sistem otomatis menghitung keterlambatan.' },
    { icon: '📚', title: 'Tambah Koleksi', desc: 'Pustakawan dapat menambah buku baru melalui tombol "Input Buku Baru" di Admin Panel.' },
    { icon: '👥', title: 'Kelola Anggota', desc: 'Lihat seluruh daftar siswa dan guru melalui tombol "Kelola Anggota". Filter berdasarkan kelas atau peran.' },
  ]

  return (
    <div className="p-6 md:p-12 space-y-8 pb-24">
      <header>
        <h1 className="text-3xl font-black text-slate-800 tracking-tight mb-1">Panduan Penggunaan</h1>
        <p className="text-slate-400 font-medium text-sm">Cara menggunakan e-Perpus Digital dengan mudah</p>
      </header>

      {/* Hero */}
      <div className="bg-gradient-to-br from-primary-600 to-indigo-600 rounded-[2.5rem] p-8 text-white shadow-2xl shadow-primary-100">
        <div className="text-4xl mb-4">📖</div>
        <h2 className="text-2xl font-black tracking-tight mb-2">Selamat Datang di<br/>e-Perpus Digital</h2>
        <p className="text-primary-100 font-medium text-sm leading-relaxed">Sistem perpustakaan digital sekolah yang dirancang untuk memudahkan akses koleksi buku dan manajemen sirkulasi.</p>
      </div>

      {/* Steps */}
      <section>
        <h3 className="font-black text-slate-800 text-lg mb-4">Cara Penggunaan</h3>
        <div className="space-y-3">
          {steps.map((s, i) => (
            <div key={i} className="bg-white rounded-3xl p-5 shadow-sm border border-slate-100 flex items-start space-x-4">
              <div className="w-12 h-12 bg-primary-50 rounded-2xl flex items-center justify-center text-2xl shrink-0">{s.icon}</div>
              <div>
                <h4 className="font-black text-slate-800 mb-1">{s.title}</h4>
                <p className="text-slate-500 text-sm font-medium leading-relaxed">{s.desc}</p>
              </div>
            </div>
          ))}
        </div>
      </section>

      {/* Kontak */}
      <section className="bg-slate-800 rounded-3xl p-6 text-white shadow-xl shadow-slate-900/10">
        <h3 className="font-black mb-6 flex items-center text-primary-400">
          <Info size={19} className="mr-2" /> Butuh Bantuan?
        </h3>
        <div className="space-y-4">
          {[
            { 
              icon: Mail, 
              label: 'Email Support', 
              val: 'jeniferlumoindong68@guru.smp.belajar.id', 
              link: 'mailto:jeniferlumoindong68@guru.smp.belajar.id' 
            },
            { 
              icon: Phone, 
              label: 'Telepon / WhatsApp', 
              val: '082399499912', 
              link: 'https://wa.me/6282399499912' 
            },
          ].map(c => (
            <a 
              key={c.label} 
              href={c.link}
              target={c.link.startsWith('http') ? '_blank' : undefined}
              rel="noopener noreferrer"
              className="flex items-center space-x-4 p-4 bg-white/5 rounded-2xl hover:bg-white/10 transition-colors border border-white/5 group"
            >
              <div className="w-10 h-10 bg-primary-500/10 rounded-xl flex items-center justify-center text-primary-400 group-hover:scale-110 transition-transform">
                <c.icon size={20} />
              </div>
              <div className="flex-1">
                <p className="text-[10px] font-black uppercase tracking-[0.2em] text-slate-500 mb-0.5">{c.label}</p>
                <p className="font-bold text-sm text-slate-100">{c.val}</p>
              </div>
              <ChevronRight size={16} className="text-slate-600 group-hover:text-primary-400 transition-colors" />
            </a>
          ))}
        </div>
      </section>
    </div>
  )
}

// ── Reports Page ───────────────────────────────────────────────
export const ReportsPage = ({ stats, booksCount }) => {
  const [logs, setLogs] = useState([])
  const [activeModal, setActiveModal] = useState(null) // null | 'active' | 'late'
  const [modalData, setModalData] = useState([])
  const [modalLoading, setModalLoading] = useState(false)

  useEffect(() => {
    const savedLogs = JSON.parse(localStorage.getItem('epus_activity_logs') || '[]')
    setLogs(savedLogs)
  }, [])

  const openModal = async (type) => {
    setActiveModal(type)
    setModalLoading(true)
    setModalData([])
    try {
      let query = supabase.from('borrowings').select('*, books(title, author)')
      if (type === 'active') {
        query = query.eq('status', 'borrowed')
      } else if (type === 'late') {
        query = query.eq('status', 'late')
      }
      const { data, error } = await query.order('borrow_date', { ascending: false }).limit(50)
      if (!error) setModalData(data || [])
    } catch(e) {}
    setModalLoading(false)
  }

  const displayStats = [
    { label: 'Total Koleksi', value: booksCount || '0', sub: 'Judul Buku', color: 'from-primary-500 to-primary-700' },
    { label: 'Total Anggota', value: stats?.users || '0', sub: 'Siswa & Guru', color: 'from-indigo-500 to-indigo-700' },
    { label: 'Pinjam Aktif', value: stats?.active || '0', sub: 'Saat Ini', color: 'from-amber-500 to-amber-700' },
    { label: 'Terlambat', value: stats?.late || '0', sub: 'Perlu Ditindak', color: 'from-red-500 to-red-700' },
  ]

  const getLogIcon = (type) => {
     if (type === 'book') return '📖'
     if (type === 'ai') return '🤖'
     if (type === 'circulation') return '🔄'
     return '⚙️'
  }

  const getLogColor = (type) => {
     if (type === 'book') return 'bg-blue-100 text-blue-600'
     if (type === 'ai') return 'bg-purple-100 text-purple-600'
     if (type === 'circulation') return 'bg-amber-100 text-amber-600'
     return 'bg-slate-200 text-slate-600'
  }

  const formatTime = (iso) => {
     if (!iso) return '-'
     const d = new Date(iso)
     return d.toLocaleTimeString('id-ID', { hour: '2-digit', minute: '2-digit' })
  }

  return (
    <div className="p-6 md:p-12 space-y-8 pb-24">
      {/* Modal Pinjam Aktif / Terlambat */}
      {activeModal && (
        <div className="fixed inset-0 z-[60] bg-slate-900/60 backdrop-blur-sm flex items-end sm:items-center justify-center p-4" onClick={() => setActiveModal(null)}>
          <div className="bg-white rounded-[2.5rem] w-full max-w-lg max-h-[80vh] overflow-hidden shadow-2xl flex flex-col" onClick={e => e.stopPropagation()}>
            {/* Modal Header */}
            <div className={`p-6 flex items-center justify-between ${activeModal === 'active' ? 'bg-gradient-to-r from-amber-500 to-amber-600' : 'bg-gradient-to-r from-red-500 to-red-600'}`}>
              <div className="flex items-center gap-3">
                {activeModal === 'active'
                  ? <Clock size={24} className="text-white" />
                  : <AlertTriangle size={24} className="text-white" />}
                <div>
                  <h3 className="font-black text-white text-lg">{activeModal === 'active' ? 'Pinjam Aktif' : 'Terlambat Kembalikan'}</h3>
                  <p className="text-white/70 text-xs font-medium">{modalData.length} data ditemukan</p>
                </div>
              </div>
              <button onClick={() => setActiveModal(null)} className="p-2 bg-white/20 rounded-xl hover:bg-white/30 transition-colors">
                <X size={20} className="text-white" />
              </button>
            </div>
            {/* Modal Body */}
            <div className="overflow-y-auto flex-1 p-5 space-y-3">
              {modalLoading ? (
                <div className="py-12 flex flex-col items-center text-slate-400">
                  <div className="w-8 h-8 border-4 border-slate-200 border-t-primary-500 rounded-full animate-spin mb-3" />
                  <p className="text-sm font-bold">Memuat data...</p>
                </div>
              ) : modalData.length === 0 ? (
                <div className="py-12 text-center text-slate-400">
                  <BookOpen size={40} className="mx-auto mb-3 opacity-30" />
                  <p className="font-bold text-sm">Tidak ada data {activeModal === 'active' ? 'peminjaman aktif' : 'keterlambatan'}</p>
                </div>
              ) : (
                modalData.map((item, i) => (
                  <div key={i} className={`rounded-2xl border p-4 flex items-center gap-3 ${
                    activeModal === 'late' ? 'bg-red-50 border-red-100' : 'bg-amber-50 border-amber-100'
                  }`}>
                    <div className={`w-10 h-10 rounded-xl flex items-center justify-center shrink-0 ${
                      activeModal === 'late' ? 'bg-red-100' : 'bg-amber-100'
                    }`}>
                      <BookOpen size={18} className={activeModal === 'late' ? 'text-red-500' : 'text-amber-600'} />
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="font-black text-slate-800 text-sm line-clamp-1">{item.books?.title || 'Buku'}</p>
                      <p className="text-xs text-slate-500 font-medium">
                        Peminjam: <span className="font-black">{item.user_id}</span>
                      </p>
                      <div className="flex items-center gap-3 mt-1">
                        <span className="text-[10px] text-slate-400 font-bold">Pinjam: {item.borrow_date}</span>
                        <span className="text-[10px] text-slate-400 font-bold">Jatuh tempo: {item.due_date}</span>
                      </div>
                    </div>
                    {activeModal === 'late' && (
                      <span className="px-2 py-1 bg-red-500 text-white text-[9px] font-black rounded-lg uppercase shrink-0">Terlambat</span>
                    )}
                  </div>
                ))
              )}
            </div>
          </div>
        </div>
      )}

      <header className="flex items-center justify-between">
        <div>
          <h1 className="text-3xl font-black text-slate-800 tracking-tight mb-1">Laporan</h1>
          <p className="text-slate-400 font-medium text-sm">Statistik perpustakaan Anda secara ringkas</p>
        </div>
        <div className="bg-primary-50 text-primary-600 px-4 py-2 rounded-2xl font-black text-xs border border-primary-100 uppercase tracking-widest animate-pulse">
          Modul 16 Aktif
        </div>
      </header>

      {/* Stats Grid */}
      <div className="grid grid-cols-2 gap-4">
        {displayStats.map(s => (
          <div key={s.label}
            onClick={() => {
              if (s.label === 'Pinjam Aktif') openModal('active')
              if (s.label === 'Terlambat') openModal('late')
            }}
            className={`bg-gradient-to-br ${s.color} rounded-3xl p-5 text-white shadow-xl ${
              (s.label === 'Pinjam Aktif' || s.label === 'Terlambat') ? 'cursor-pointer active:scale-95 transition-transform' : ''
            }`}>
            <p className="text-3xl font-black mb-1">{s.value}</p>
            <p className="text-[10px] font-black uppercase tracking-widest opacity-70">{s.sub}</p>
            <p className="text-xs font-bold mt-2 opacity-80">{s.label}</p>
            {(s.label === 'Pinjam Aktif' || s.label === 'Terlambat') && (
              <p className="text-[9px] font-black uppercase tracking-wider opacity-50 mt-1">Ketuk untuk detail →</p>
            )}
          </div>
        ))}
      </div>

      {/* Bar Chart */}
      <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100">
        <h4 className="font-black text-slate-800 mb-6 text-sm">Aktivitas Peminjaman — 7 Hari Terakhir</h4>
        <div className="h-40 flex items-end justify-between space-x-2">
          {[40, 70, 45, 90, 100, 60, 85].map((h, i) => (
            <div key={i} className="flex-1 flex flex-col items-center">
              <div
                className={`w-full rounded-t-xl transition-all ${i === 4 ? 'bg-primary-600 shadow-lg shadow-primary-100' : 'bg-primary-100'}`}
                style={{ height: `${h}%` }}
              />
              <span className="text-[10px] text-slate-400 mt-2 font-bold">{['S','S','R','K','J','S','M'][i]}</span>
            </div>
          ))}
        </div>
      </div>

      {/* ── LOG AKTIVITAS DETAIL (MODUL 16 ENHANCED) ── */}
      <div className="bg-white rounded-[2.5rem] p-8 shadow-sm border border-slate-100">
        <div className="flex flex-col md:flex-row md:items-center justify-between mb-8 gap-4">
          <div>
            <h4 className="font-black text-slate-800 text-lg tracking-tight">Log Aktivitas Detail</h4>
            <p className="text-xs text-slate-400 font-medium">Pantau setiap aksi pengguna secara real-time</p>
          </div>
          <div className="flex gap-2 bg-slate-50 p-1.5 rounded-2xl border border-slate-100">
            {['Hari', 'Minggu', 'Bulan'].map(f => (
              <button key={f} className={`px-4 py-2 rounded-xl text-[10px] font-black uppercase tracking-widest transition-all ${f === 'Hari' ? 'bg-white text-primary-600 shadow-sm' : 'text-slate-400 hover:text-slate-600'}`}>
                {f}
              </button>
            ))}
          </div>
        </div>

        <div className="space-y-4 max-h-[500px] overflow-y-auto pr-2">
          {logs.length > 0 ? (
            logs.map((log, i) => (
              <div key={i} className="flex items-center justify-between p-4 bg-slate-50/50 rounded-2xl border border-transparent hover:border-slate-200 transition-all group">
                <div className="flex items-center space-x-4">
                  <div className={`w-10 h-10 rounded-xl flex items-center justify-center text-lg ${getLogColor(log.action_type)}`}>
                    {getLogIcon(log.action_type)}
                  </div>
                  <div>
                    <p className="text-sm font-black text-slate-800">{log.username}</p>
                    <p className="text-[10px] text-slate-500 font-bold uppercase tracking-wider">
                      {log.action_type === 'ai' ? '🤖 AI Tutor' : log.action_type === 'book' ? '📖 Reader' : '⚙️ System'} • 
                      <span className="text-slate-400 ml-1">{log.description}</span>
                    </p>
                  </div>
                </div>
                <div className="text-right">
                   <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest">{formatTime(log.created_at)}</p>
                </div>
              </div>
            ))
          ) : (
            <div className="py-12 text-center text-slate-400 flex flex-col items-center">
               <div className="w-16 h-16 bg-slate-100 rounded-full flex items-center justify-center mb-4">⚙️</div>
               <p className="text-sm font-bold uppercase tracking-widest">Belum ada aktivitas tercatat</p>
               <p className="text-[10px] mt-1 font-medium italic">Aktivitas akan muncul saat pengguna mulai berinteraksi...</p>
            </div>
          )}
        </div>

        <button className="w-full mt-6 py-4 border-2 border-dashed border-slate-200 rounded-3xl text-[10px] font-black text-slate-400 uppercase tracking-[0.2em] hover:bg-slate-50 transition-all">
          Lihat Semua Aktivitas
        </button>
      </div>

      {/* Export Actions */}
      <div className="bg-slate-800 rounded-3xl p-6 text-white">
        <h4 className="font-black mb-2 flex items-center"><FileText size={18} className="mr-2" /> Ekspor Laporan</h4>
        <p className="text-slate-400 text-xs font-medium mb-5">Unduh laporan untuk keperluan administrasi sekolah.</p>
        <div className="grid grid-cols-2 gap-3">
          <button onClick={() => alert('Ekspor Excel membutuhkan koneksi server backend.')}
            className="flex items-center justify-center space-x-2 bg-emerald-600 hover:bg-emerald-700 py-4 rounded-2xl font-black text-sm transition-colors active:scale-95">
            <Download size={18} /><span>Excel</span>
          </button>
          <button onClick={() => window.print()}
            className="flex items-center justify-center space-x-2 bg-red-600 hover:bg-red-700 py-4 rounded-2xl font-black text-sm transition-colors active:scale-95">
            <Download size={18} /><span>Cetak/PDF</span>
          </button>
        </div>
      </div>
    </div>
  )
}
