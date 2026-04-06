import React from 'react'
import { Bell, Search, Book, ChevronRight, Bookmark, User, Settings } from 'lucide-react'
import { motion } from 'framer-motion'
import { CATEGORIES, getBookCover } from '../dataStore'

const Home = ({ books, categories, activeCategory, setActiveCategory, onOpenReader, onSeeAll, schoolIdentity }) => {
  const displayCategories = ['Semua', ...categories.map(c => c.name)]
  
  // Filter featured books based on category
  const filteredBooks = activeCategory === 'Semua' 
    ? books 
    : books.filter(b => b.category === activeCategory)
    
  const FEATURED_BOOKS = filteredBooks.slice(0, 8)

  const getCategoryCount = (catName) => {
    if (catName === 'Semua') return books.length
    return books.filter(book => book.category === catName).length
  }

  return (
    <div className="pb-24 space-y-10 font-['Outfit']">

      {/* ── HERO SECTION ── */}
      <section className="relative px-6 pt-10 pb-10 overflow-hidden bg-slate-900 rounded-b-[4rem] shadow-2xl">
        <div className="absolute top-0 right-0 w-72 h-72 bg-primary-500/20 rounded-full blur-[90px] -mr-36 -mt-36 pointer-events-none" />
        <div className="absolute bottom-0 left-0 w-64 h-64 bg-indigo-500/20 rounded-full blur-[80px] -ml-32 -mb-32 pointer-events-none" />

        <div className="relative z-10">
          <header className="flex justify-between items-start mb-8">
            <div className="flex-1">
              <p className="text-[10px] font-black text-primary-400 uppercase tracking-[0.2em] mb-1.5 opacity-80 line-clamp-1">{schoolIdentity?.name || 'PERPUSTAKAAN DIGITAL'}</p>
              <h1 className="text-3xl font-black text-white tracking-tighter uppercase leading-none">
                e-Perpus <span className="text-indigo-400">Digital</span>
              </h1>
            </div>
            <div className="w-11 h-11 bg-white/10 rounded-xl flex items-center justify-center text-white backdrop-blur-md border border-white/20 ml-4 shrink-0">
              <User size={20} />
            </div>
          </header>

          {/* Search Bar */}
          <div className="glass p-2 rounded-[2rem] flex items-center shadow-2xl border border-white/10">
            <div className="bg-primary-600 p-3 rounded-2xl text-white shadow-lg shadow-primary-900/30">
              <Search size={20} />
            </div>
            <input
              type="text"
              placeholder="Cari judul buku atau pengarang..."
              readOnly
              onClick={onSeeAll}
              className="flex-1 bg-transparent border-none px-4 text-white placeholder-slate-400 font-medium outline-none text-sm cursor-pointer"
            />
          </div>
        </div>
      </section>

      {/* ── KATEGORI ── */}
      <section className="px-6">
        <div className="flex space-x-3 overflow-x-auto hide-scrollbar py-2">
          {displayCategories.map(cat => (
            <button
              key={cat}
              onClick={() => setActiveCategory(cat)}
              className={`px-6 py-3 rounded-2xl whitespace-nowrap text-sm font-black transition-all duration-300 flex items-center shadow-sm ${
                activeCategory === cat
                  ? 'bg-primary-600 text-white shadow-xl shadow-primary-200 scale-105'
                  : 'bg-white text-slate-500 hover:bg-slate-50 border border-slate-100'
              }`}
            >
              <span>{cat}</span>
              <span className={`ml-2 px-2 py-0.5 rounded-lg text-[10px] ${
                activeCategory === cat ? 'bg-white/20 text-white shadow-inner' : 'bg-slate-100 text-slate-400 font-bold'
              }`}>
                {getCategoryCount(cat)}
              </span>
            </button>
          ))}
        </div>
      </section>

      {/* ── KOLEKSI TERPOPULER ── */}
      <section className="px-6">
        <div className="flex justify-between items-end mb-6">
          <div>
            <h2 className="text-2xl font-black text-slate-800 tracking-tight">Koleksi Pilihan</h2>
            <p className="text-xs text-slate-400 font-bold uppercase tracking-widest mt-1">Buku terbaru di perpustakaan</p>
          </div>
          {/* ✅ LIHAT SEMUA — FUNGSIONAL */}
          <button
            onClick={onSeeAll}
            className="flex items-center space-x-1 text-xs font-black text-primary-600 uppercase tracking-widest hover:bg-primary-50 px-4 py-2 rounded-xl transition-all active:scale-95"
          >
            <span>Lihat Semua</span>
            <ChevronRight size={14} />
          </button>
        </div>

        {/* Book Cards Grid */}
        <div className="flex space-x-6 overflow-x-auto hide-scrollbar py-4 md:grid md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-6 md:gap-8 md:space-x-0 md:overflow-visible">
          {FEATURED_BOOKS.map(book => (
            <motion.div
              key={book.id}
              whileHover={{ y: -10 }}
              className="min-w-[160px] flex flex-col group cursor-pointer md:min-w-0"
              onClick={() => onOpenReader(book)}
            >
              <div className="relative mb-4 group">
                <img
                  src={book.cover_url || getBookCover(book.title, book.isbn)}
                  alt={book.title}
                  className="rounded-[2rem] shadow-[0_16px_40px_rgba(30,41,59,0.1)] w-full h-[220px] object-cover group-hover:shadow-[0_24px_50px_rgba(30,41,59,0.18)] transition-all duration-500 bg-slate-100"
                />
                {/* Hover Overlay */}
                <div className="absolute inset-0 bg-gradient-to-t from-slate-900/90 via-slate-900/30 to-transparent opacity-0 group-hover:opacity-100 transition-all duration-400 rounded-[2rem] flex flex-col justify-end p-4">
                  <button className="w-full py-3 bg-primary-600 text-white rounded-xl text-[10px] font-black uppercase tracking-[0.2em] shadow-xl active:scale-95 transition-all">
                    📖 Baca
                  </button>
                </div>
                {/* Bookmark badge */}
                <div className="absolute top-3 right-3 opacity-0 group-hover:opacity-100 transition-all delay-75 translate-y-1 group-hover:translate-y-0">
                  <div className="glass p-2 rounded-xl text-primary-600 shadow-xl border-white/20">
                    <Bookmark size={16} fill="currentColor" />
                  </div>
                </div>
              </div>
              <div className="px-1">
                <p className="text-primary-600 font-black text-[9px] uppercase tracking-[0.2em] mb-1">{book.category}</p>
                <h4 className="font-black text-sm text-slate-800 line-clamp-2 leading-tight tracking-tight">{book.title}</h4>
                <p className="text-xs text-slate-400 font-bold mt-1">{book.author}</p>
              </div>
            </motion.div>
          ))}
          {FEATURED_BOOKS.length === 0 && (
             <div className="py-8 text-center w-full col-span-full">
               <p className="text-slate-400 font-bold text-sm">Belum ada buku yang ditambahkan.</p>
             </div>
          )}
        </div>
      </section>

      {/* ── REWARD CARD ── */}
      <section className="px-6 pb-4">
        <div className="bg-gradient-to-br from-indigo-600 via-primary-600 to-primary-400 rounded-[3.5rem] p-8 text-white shadow-[0_20px_50px_rgba(2,132,199,0.25)] relative overflow-hidden group">
          <div className="absolute top-0 right-0 w-64 h-64 bg-white/10 rounded-full blur-[60px] translate-x-32 -translate-y-32 pointer-events-none" />
          <div className="absolute bottom-0 left-0 w-32 h-32 bg-indigo-900/20 rounded-full blur-[40px] -ml-16 -mb-16 pointer-events-none" />
          <div className="relative z-10 flex flex-col md:flex-row md:items-center justify-between gap-6">
            <div>
              <p className="text-primary-100 text-[10px] font-black uppercase tracking-[0.3em] mb-2 opacity-80">Literacy Points</p>
              <h3 className="text-5xl font-black tracking-tighter mb-4">
                1.250 <span className="text-xl font-medium opacity-60">PTS</span>
              </h3>
              <div className="flex items-center space-x-3 bg-white/10 w-fit px-5 py-2 rounded-2xl backdrop-blur-md border border-white/10">
                <div className="w-2 h-2 rounded-full bg-emerald-400 animate-pulse" />
                <span className="text-[10px] font-black uppercase tracking-widest">Level: Reader Master</span>
              </div>
            </div>
            <div className="hidden md:flex h-28 w-28 bg-white/10 rounded-[2rem] border border-white/10 items-center justify-center backdrop-blur-xl group-hover:scale-110 transition-transform">
              <Book size={44} className="text-primary-100" />
            </div>
          </div>
        </div>
      </section>

    </div>
  )
}

export default Home
