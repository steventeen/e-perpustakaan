import React, { useState, useEffect, useRef } from 'react'
import { Search, Filter, BookOpen, Bookmark, Star, X, ChevronDown, SlidersHorizontal } from 'lucide-react'
import { motion, AnimatePresence } from 'framer-motion'
import { BOOKS_DATA, CATEGORIES, getBookCover } from '../dataStore'

const Catalog = ({ books = [], categories = [], onOpenReader, autoFocus }) => {
  const displayCategories = ['Semua', ...categories.map(c => c.name)]
  const [searchTerm, setSearchTerm] = useState('')
  const [activeCategory, setActiveCategory] = useState('Semua')
  const [showFilter, setShowFilter] = useState(false)
  const [sortBy, setSortBy] = useState('default')
  const [typeFilter, setTypeFilter] = useState('all')
  const searchRef = useRef(null)

  // Auto focus jika dibuka dari tab Cari
  useEffect(() => {
    if (autoFocus && searchRef.current) {
      setTimeout(() => searchRef.current?.focus(), 300)
    }
  }, [autoFocus])

  // Filter & Sort Logic
  let filteredBooks = (books.length > 0 ? books : BOOKS_DATA).filter(book => {
    const matchesSearch = book.title.toLowerCase().includes(searchTerm.toLowerCase()) ||
                          book.author.toLowerCase().includes(searchTerm.toLowerCase()) ||
                          book.isbn?.toLowerCase().includes(searchTerm.toLowerCase())
    const matchesCategory = activeCategory === 'Semua' || book.category === activeCategory
    const matchesType = typeFilter === 'all' || book.type === typeFilter
    return matchesSearch && matchesCategory && matchesType
  })

  if (sortBy === 'az') filteredBooks = [...filteredBooks].sort((a, b) => a.title.localeCompare(b.title))
  if (sortBy === 'za') filteredBooks = [...filteredBooks].sort((a, b) => b.title.localeCompare(a.title))
  if (sortBy === 'author') filteredBooks = [...filteredBooks].sort((a, b) => a.author.localeCompare(b.author))

  return (
    <div className="min-h-screen pb-24">

      {/* ── HEADER ── */}
      <header className="px-6 pt-10 pb-6 bg-white border-b border-slate-100 sticky top-0 z-20 shadow-sm">
        <div className="flex items-end justify-between mb-4">
          <div>
            <h1 className="text-2xl font-black text-slate-800 tracking-tight">E-Katalog</h1>
            <p className="text-slate-400 text-xs font-bold uppercase tracking-widest mt-0.5">
              {filteredBooks.length} dari {BOOKS_DATA.length} koleksi
            </p>
          </div>
          {/* ✅ FILTER BUTTON — FUNGSIONAL */}
          <button
            onClick={() => setShowFilter(true)}
            className={`flex items-center space-x-2 px-5 py-3 rounded-2xl font-black text-xs uppercase tracking-widest transition-all active:scale-95 ${
              sortBy !== 'default' || typeFilter !== 'all'
                ? 'bg-primary-600 text-white shadow-lg shadow-primary-100'
                : 'bg-slate-100 text-slate-500 hover:bg-slate-200'
            }`}
          >
            <SlidersHorizontal size={16} />
            <span>Filter{sortBy !== 'default' || typeFilter !== 'all' ? ' ✓' : ''}</span>
          </button>
        </div>

        {/* Search Bar */}
        <div className="flex items-center bg-slate-50 rounded-2xl px-4 py-3 border border-slate-100">
          <Search size={18} className="text-slate-400 mr-3 shrink-0" />
          <input
            ref={searchRef}
            type="text"
            placeholder="Cari judul, pengarang, atau ISBN..."
            value={searchTerm}
            onChange={e => setSearchTerm(e.target.value)}
            className="flex-1 bg-transparent border-none outline-none text-sm font-medium text-slate-700 placeholder-slate-300"
          />
          {searchTerm && (
            <button onClick={() => setSearchTerm('')} className="text-slate-400 hover:text-red-500 ml-2">
              <X size={16} />
            </button>
          )}
        </div>

        {/* Category Pills */}
        <div className="flex space-x-2 overflow-x-auto hide-scrollbar mt-3 pb-1">
          {displayCategories.map(cat => (
            <button
              key={cat}
              onClick={() => setActiveCategory(cat)}
              className={`px-4 py-2 rounded-xl whitespace-nowrap text-[10px] font-black uppercase tracking-widest transition-all shrink-0 ${
                activeCategory === cat
                  ? 'bg-primary-600 text-white shadow-lg'
                  : 'bg-slate-100 text-slate-500 hover:bg-slate-200'
              }`}
            >
              {cat}
            </button>
          ))}
        </div>
      </header>

      {/* ── FILTER PANEL (Bottom Sheet) ── */}
      <AnimatePresence>
        {showFilter && (
          <>
            <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }} exit={{ opacity: 0 }}
              className="fixed inset-0 z-40 bg-slate-900/40 backdrop-blur-sm"
              onClick={() => setShowFilter(false)}
            />
            <motion.div
              initial={{ y: '100%' }} animate={{ y: 0 }} exit={{ y: '100%' }}
              transition={{ type: 'spring', damping: 30, stiffness: 250 }}
              className="fixed bottom-0 left-0 right-0 z-50 bg-white rounded-t-[3rem] p-8 shadow-2xl max-w-lg mx-auto"
            >
              <div className="w-12 h-1 bg-slate-200 rounded-full mx-auto mb-6" />
              <div className="flex justify-between items-center mb-6">
                <h3 className="text-xl font-black text-slate-800">Filter & Urutkan</h3>
                <button onClick={() => setShowFilter(false)} className="text-slate-400 hover:text-red-500">
                  <X size={20} />
                </button>
              </div>

              {/* Sort */}
              <div className="mb-6">
                <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-3">Urutkan Berdasarkan</p>
                <div className="grid grid-cols-2 gap-2">
                  {[
                    ['default', '📌 Default'],
                    ['az', '🔤 A → Z'],
                    ['za', '🔤 Z → A'],
                    ['author', '👤 Pengarang'],
                  ].map(([val, label]) => (
                    <button key={val} onClick={() => setSortBy(val)}
                      className={`py-3 rounded-2xl text-xs font-black uppercase tracking-widest transition-all active:scale-95 ${
                        sortBy === val ? 'bg-primary-600 text-white shadow-lg shadow-primary-100' : 'bg-slate-100 text-slate-500 hover:bg-slate-200'
                      }`}>
                      {label}
                    </button>
                  ))}
                </div>
              </div>

              {/* Type */}
              <div className="mb-8">
                <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-3">Tipe Buku</p>
                <div className="grid grid-cols-3 gap-2">
                  {[['all','Semua'], ['digital','Digital'], ['physical','Fisik']].map(([val, label]) => (
                    <button key={val} onClick={() => setTypeFilter(val)}
                      className={`py-3 rounded-2xl text-xs font-black uppercase tracking-widest transition-all active:scale-95 ${
                        typeFilter === val ? 'bg-primary-600 text-white shadow-lg shadow-primary-100' : 'bg-slate-100 text-slate-500 hover:bg-slate-200'
                      }`}>
                      {label}
                    </button>
                  ))}
                </div>
              </div>

              <div className="flex gap-3">
                <button
                  onClick={() => { setSortBy('default'); setTypeFilter('all'); setShowFilter(false) }}
                  className="flex-1 py-4 bg-slate-100 text-slate-600 rounded-2xl font-black text-sm hover:bg-slate-200 transition-colors"
                >
                  Reset Filter
                </button>
                <button
                  onClick={() => setShowFilter(false)}
                  className="flex-1 py-4 bg-primary-600 text-white rounded-2xl font-black text-sm shadow-lg shadow-primary-100 hover:bg-primary-700 transition-all active:scale-95"
                >
                  Terapkan ✓
                </button>
              </div>
            </motion.div>
          </>
        )}
      </AnimatePresence>

      {/* ── BOOK GRID ── */}
      <div className="p-6 md:p-10">
        {filteredBooks.length === 0 ? (
          <div className="flex flex-col items-center justify-center py-24 text-slate-300">
            <div className="w-24 h-24 bg-slate-100 rounded-full flex items-center justify-center mb-6">
              <Search size={40} />
            </div>
            <p className="text-xl font-black text-slate-400 tracking-tight">Buku tidak ditemukan</p>
            <p className="text-sm font-medium mt-1 text-slate-300">Coba kata kunci atau kategori lain</p>
            <button onClick={() => { setSearchTerm(''); setActiveCategory('Semua') }}
              className="mt-6 px-8 py-3 bg-primary-600 text-white rounded-2xl font-black text-sm active:scale-95 transition-all shadow-lg">
              Reset Pencarian
            </button>
          </div>
        ) : (
          <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-6 md:gap-8">
            {filteredBooks.map((book, i) => (
              <motion.div
                key={book.id}
                initial={{ opacity: 0, y: 20 }}
                animate={{ opacity: 1, y: 0 }}
                transition={{ delay: Math.min(i * 0.04, 0.3) }}
                whileHover={{ y: -8 }}
                className="group cursor-pointer flex flex-col"
                onClick={() => onOpenReader(book)}
              >
                <div className="relative mb-4">
                  <img
                    src={book.cover_url || getBookCover(book.title, book.isbn)}
                    alt={book.title}
                    className="rounded-[2rem] shadow-[0_12px_35px_rgba(15,23,42,0.1)] w-full h-[220px] md:h-[280px] object-cover group-hover:shadow-[0_24px_50px_rgba(15,23,42,0.15)] transition-all duration-500 bg-slate-100"
                  />
                  <div className="absolute inset-0 bg-slate-900/60 opacity-0 group-hover:opacity-100 transition-all duration-400 rounded-[2rem] flex flex-col justify-center items-center gap-3 p-4">
                    <div className="w-12 h-12 bg-white/20 rounded-full flex items-center justify-center backdrop-blur-md">
                      <BookOpen size={22} className="text-white" />
                    </div>
                    <p className="text-[9px] font-black uppercase tracking-[0.3em] text-white">Buka Digital</p>
                  </div>
                  <div className="absolute top-3 right-3 opacity-0 group-hover:opacity-100 transition-all translate-y-1 group-hover:translate-y-0">
                    <div className="glass p-2 rounded-xl text-primary-600 shadow-xl border-white/20">
                      <Bookmark size={16} />
                    </div>
                  </div>
                  {book.type === 'digital' && (
                    <div className="absolute bottom-3 left-3">
                      <span className="bg-emerald-600/90 text-white text-[8px] font-black uppercase tracking-widest px-2 py-1 rounded-lg backdrop-blur-sm">
                        Digital
                      </span>
                    </div>
                  )}
                </div>
                <div className="px-1">
                  <p className="text-primary-600 font-black text-[9px] uppercase tracking-[0.15em] mb-1">{book.category}</p>
                  <h4 className="font-black text-sm text-slate-800 line-clamp-2 leading-tight tracking-tight min-h-[2.5rem]">{book.title}</h4>
                  <p className="text-xs text-slate-400 font-bold mt-1 truncate">{book.author}</p>
                </div>
              </motion.div>
            ))}
          </div>
        )}
      </div>
    </div>
  )
}

export default Catalog
