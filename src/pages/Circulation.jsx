import React, { useState } from 'react'
import { Search, User, Book, Calendar, CheckCircle2, RotateCcw, AlertTriangle, ScanLine, X } from 'lucide-react'
import { motion, AnimatePresence } from 'framer-motion'
import { USERS_DATA } from '../dataStore'

const Toast = ({ msg, type, onClose }) => (
  <motion.div
    initial={{ y: 80, opacity: 0 }}
    animate={{ y: 0, opacity: 1 }}
    exit={{ y: 80, opacity: 0 }}
    className={`fixed bottom-24 md:bottom-8 left-1/2 -translate-x-1/2 z-50 px-8 py-4 rounded-2xl shadow-2xl flex items-center space-x-3 font-bold text-white text-sm ${type === 'success' ? 'bg-emerald-600' : 'bg-red-500'}`}
  >
    {type === 'success' ? <CheckCircle2 size={20} /> : <AlertTriangle size={20} />}
    <span>{msg}</span>
    <button onClick={onClose}><X size={16} /></button>
  </motion.div>
)

// Simulasi data pinjaman aktif
const ACTIVE_LOANS = [
  { id: 'L001', book_title: 'IPA Kelas 7', borrower: 'Benzema Denis Semuel Robot', grade: '7', due: 'H-1', late: false },
  { id: 'L002', book_title: 'Matematika Kelas 8', borrower: 'Eklesia Watuseke', grade: '8', due: 'Terlambat 3 Hari', late: true },
]

const Circulation = ({ books = [] }) => {
  const [activeTab, setActiveTab] = useState('pinjam')
  const [memberSearch, setMemberSearch] = useState('')
  const [bookSearch, setBookSearch] = useState('')
  const [selectedMember, setSelectedMember] = useState(null)
  const [selectedBook, setSelectedBook] = useState(null)
  const [toast, setToast] = useState(null)
  const [loans, setLoans] = useState(ACTIVE_LOANS)

  const showToast = (msg, type = 'success') => {
    setToast({ msg, type })
    setTimeout(() => setToast(null), 3500)
  }

  const filteredMembers = memberSearch.length > 1
    ? USERS_DATA.filter(u => u.role === 'student' && u.full_name.toLowerCase().includes(memberSearch.toLowerCase()))
    : []

  const filteredBooks = bookSearch.length > 1
    ? books.filter(b => b.title.toLowerCase().includes(bookSearch.toLowerCase()))
    : []

  const handleKonfirmasi = () => {
    if (!selectedMember) { showToast('Pilih nama peminjam terlebih dahulu!', 'error'); return }
    if (!selectedBook) { showToast('Pilih buku yang akan dipinjam!', 'error'); return }
    showToast(`✅ Pinjaman "${selectedBook.title}" untuk ${selectedMember.full_name} berhasil dicatat!`)
    setSelectedMember(null)
    setSelectedBook(null)
    setMemberSearch('')
    setBookSearch('')
  }

  const handleReturn = (loanId) => {
    setLoans(prev => prev.filter(l => l.id !== loanId))
    showToast('✅ Buku berhasil dikembalikan!')
  }

  const handleRenew = (loan) => {
    showToast(`🔄 Pinjaman "${loan.book_title}" diperpanjang 7 hari!`)
  }

  return (
    <div className="min-h-screen bg-slate-50 p-6 pt-12 pb-32">
      <header className="mb-8">
        <h1 className="text-3xl font-black text-slate-800 tracking-tight">Sirkulasi Buku</h1>
        <p className="text-slate-400 text-sm font-medium mt-1">Kelola peminjaman & pengembalian secara real-time</p>
      </header>

      {/* Toast */}
      <AnimatePresence>
        {toast && <Toast msg={toast.msg} type={toast.type} onClose={() => setToast(null)} />}
      </AnimatePresence>

      {/* Mode Tabs */}
      <div className="flex bg-white/70 p-1 rounded-2xl mb-8 shadow-inner border border-slate-100">
        {['pinjam', 'kembali'].map(tab => (
          <button
            key={tab}
            onClick={() => setActiveTab(tab)}
            className={`flex-1 py-3 rounded-xl transition-all font-black text-sm uppercase tracking-wide ${activeTab === tab ? 'bg-primary-600 text-white shadow-lg' : 'text-slate-400 hover:text-slate-600'}`}
          >
            {tab === 'pinjam' ? '📥 Peminjaman Baru' : '📤 Pengembalian'}
          </button>
        ))}
      </div>

      {activeTab === 'pinjam' ? (
        <div className="space-y-6">
          {/* Step 1: Pilih Anggota */}
          <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100">
            <div className="flex items-center mb-4 text-primary-600 font-black text-xs uppercase tracking-widest">
              <User size={16} className="mr-2" /> Langkah 1 — Pilih Peminjam
            </div>
            <div className="relative mb-3">
              <Search size={18} className="absolute left-4 top-1/2 -translate-y-1/2 text-slate-400" />
              <input
                type="text"
                placeholder="Ketik nama siswa..."
                value={memberSearch}
                onChange={e => { setMemberSearch(e.target.value); setSelectedMember(null) }}
                className="w-full bg-slate-50 border-none rounded-2xl py-4 pl-12 pr-4 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium"
              />
            </div>
            {/* Dropdown result */}
            {filteredMembers.length > 0 && !selectedMember && (
              <div className="space-y-2 max-h-40 overflow-y-auto">
                {filteredMembers.slice(0, 5).map(u => (
                  <button key={u.id} onClick={() => { setSelectedMember(u); setMemberSearch(u.full_name) }}
                    className="w-full text-left px-4 py-3 bg-slate-50 hover:bg-primary-50 rounded-2xl text-sm font-medium transition-colors">
                    <span className="font-bold text-slate-800">{u.full_name}</span>
                    <span className="text-slate-400 ml-2 text-xs">Kelas {u.grade}</span>
                  </button>
                ))}
              </div>
            )}
            {selectedMember && (
              <div className="flex items-center p-4 bg-primary-50 rounded-2xl border border-primary-100 mt-2">
                <div className="w-10 h-10 bg-primary-600 rounded-full flex items-center justify-center text-white font-black text-xs mr-3">
                  {selectedMember.full_name.split(' ').map(w=>w[0]).slice(0,2).join('')}
                </div>
                <div>
                  <h5 className="font-black text-slate-800 text-sm">{selectedMember.full_name}</h5>
                  <p className="text-[10px] text-primary-600 font-bold uppercase tracking-wide">Kelas {selectedMember.grade} • {selectedMember.username}</p>
                </div>
                <button onClick={() => { setSelectedMember(null); setMemberSearch('') }} className="ml-auto text-slate-300 hover:text-red-500">
                  <X size={18} />
                </button>
              </div>
            )}
          </div>

          {/* Step 2: Pilih Buku */}
          <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100">
            <div className="flex items-center mb-4 text-primary-600 font-black text-xs uppercase tracking-widest">
              <Book size={16} className="mr-2" /> Langkah 2 — Pilih Buku
            </div>
            <div className="relative mb-3">
              <ScanLine size={18} className="absolute left-4 top-1/2 -translate-y-1/2 text-slate-400" />
              <input
                type="text"
                placeholder="Ketik judul buku..."
                value={bookSearch}
                onChange={e => { setBookSearch(e.target.value); setSelectedBook(null) }}
                className="w-full bg-slate-50 border-none rounded-2xl py-4 pl-12 pr-4 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium"
              />
            </div>
            {filteredBooks.length > 0 && !selectedBook && (
              <div className="space-y-2 max-h-40 overflow-y-auto">
                {filteredBooks.slice(0, 5).map(b => (
                  <button key={b.id} onClick={() => { setSelectedBook(b); setBookSearch(b.title) }}
                    className="w-full text-left px-4 py-3 bg-slate-50 hover:bg-primary-50 rounded-2xl text-sm font-medium transition-colors">
                    <span className="font-bold text-slate-800">{b.title}</span>
                    <span className="text-slate-400 ml-2 text-xs">{b.category}</span>
                  </button>
                ))}
              </div>
            )}
            {selectedBook && (
              <div className="flex items-center p-4 bg-emerald-50 rounded-2xl border border-emerald-100 mt-2">
                <div className="w-10 h-10 bg-emerald-600 rounded-xl flex items-center justify-center text-white mr-3">
                  <Book size={18} />
                </div>
                <div className="flex-1">
                  <h5 className="font-black text-slate-800 text-sm line-clamp-1">{selectedBook.title}</h5>
                  <p className="text-[10px] text-emerald-600 font-bold uppercase tracking-wide">{selectedBook.category}</p>
                </div>
                <button onClick={() => { setSelectedBook(null); setBookSearch('') }} className="text-slate-300 hover:text-red-500">
                  <X size={18} />
                </button>
              </div>
            )}
          </div>

          {/* Summary & Konfirmasi */}
          <div className="bg-slate-800 p-6 rounded-3xl text-white shadow-xl">
            <div className="flex justify-between items-center mb-6">
              <div>
                <div className="flex items-center text-slate-400 text-[10px] font-bold uppercase tracking-widest mb-1">
                  <Calendar size={14} className="mr-1" /> Tenggat Kembali
                </div>
                <p className="text-lg font-black">
                  {new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toLocaleDateString('id-ID', { day: 'numeric', month: 'long', year: 'numeric' })}
                </p>
                <p className="text-[10px] text-primary-400 font-bold">(Durasi 7 Hari)</p>
              </div>
              <div className="bg-white/10 p-4 rounded-2xl">
                <CheckCircle2 size={32} className="text-primary-400" />
              </div>
            </div>
            <button
              onClick={handleKonfirmasi}
              className="w-full bg-primary-600 hover:bg-primary-500 text-white font-black py-4 rounded-2xl shadow-lg shadow-primary-900/40 active:scale-95 transition-all text-sm uppercase tracking-widest"
            >
              ✅ Konfirmasi Pinjaman
            </button>
          </div>
        </div>
      ) : (
        <div className="space-y-4">
          <div className="text-xs font-black text-slate-400 uppercase tracking-widest px-2 mb-4">Daftar Peminjaman Aktif ({loans.length})</div>
          {loans.length === 0 && (
            <div className="text-center py-20 text-slate-300">
              <CheckCircle2 size={48} className="mx-auto mb-4" />
              <p className="font-bold">Tidak ada peminjaman aktif</p>
            </div>
          )}
          {loans.map(loan => (
            <motion.div key={loan.id} layout initial={{ opacity: 0 }} animate={{ opacity: 1 }}
              className={`p-5 rounded-3xl border flex items-center justify-between ${loan.late ? 'bg-red-50 border-red-100' : 'bg-white border-slate-100 shadow-sm'}`}
            >
              <div className="flex items-center space-x-4">
                <div className={`w-12 h-16 rounded-xl flex items-center justify-center text-xs font-bold ${loan.late ? 'bg-red-100 text-red-400' : 'bg-slate-100 text-slate-400'}`}>
                  <Book size={20} />
                </div>
                <div>
                  <h4 className={`font-black text-sm ${loan.late ? 'text-red-900' : 'text-slate-800'}`}>{loan.book_title}</h4>
                  <p className={`text-[10px] mb-1 ${loan.late ? 'text-red-400' : 'text-slate-400'}`}>{loan.borrower} (Kls {loan.grade})</p>
                  <div className={`flex items-center text-[10px] font-black ${loan.late ? 'text-red-600' : 'text-amber-500'}`}>
                    {loan.late ? <AlertTriangle size={12} className="mr-1" /> : <Calendar size={12} className="mr-1" />}
                    {loan.due}
                  </div>
                </div>
              </div>
              <div className="flex gap-2">
                <button onClick={() => handleReturn(loan.id)}
                  className={`p-3 rounded-2xl transition-colors ${loan.late ? 'bg-red-600 text-white shadow-md' : 'bg-emerald-50 text-emerald-600 hover:bg-emerald-100'}`} title="Kembalikan">
                  <CheckCircle2 size={20} />
                </button>
                {!loan.late && (
                  <button onClick={() => handleRenew(loan)}
                    className="p-3 bg-blue-50 text-blue-600 rounded-2xl hover:bg-blue-100 transition-colors" title="Perpanjang">
                    <RotateCcw size={20} />
                  </button>
                )}
              </div>
            </motion.div>
          ))}
        </div>
      )}
    </div>
  )
}

export default Circulation
