import React, { useState, useEffect } from 'react'
import { X, ExternalLink, Maximize2, RotateCcw, AlertTriangle, BookOpen } from 'lucide-react'
import { motion, AnimatePresence } from 'framer-motion'
import { logActivity } from '../utils/logger'

const EBookViewer = ({ book, onClose, user }) => {
  const [isLoading, setIsLoading] = useState(true)
  const [hasError, setHasError] = useState(false)
  const [viewMode, setViewMode] = useState('proxy') // 'proxy' or 'direct'

  useEffect(() => {
    if (book && user) {
      logActivity(user.id, user.username, 'book', `Membaca buku: ${book.title}`);
    }
  }, [book, user]);

  // Handle ESC key to close
  useEffect(() => {
    const handleEsc = (e) => {
      if (e.key === 'Escape') onClose()
    }
    window.addEventListener('keydown', handleEsc)
    return () => window.removeEventListener('keydown', handleEsc)
  }, [onClose])

  // LOGIK PENYEMBUNYIAN/PROXY: Gunakan Google Docs Viewer untuk PDF yang diblokir CORS
  const getReaderUrl = (url, mode) => {
    if (!url) return "https://buku.kemdikbud.go.id/katalog"
    
    if (mode === 'direct') return url;

    // Jika link adalah PDF langsung dari repositori luar, gunakan Google Viewer Proxy
    if (url.toLowerCase().endsWith('.pdf') || url.includes('/pdf/')) {
      // Fix potential double-encoding for filenames with spaces (like %20)
      const decoded = decodeURI(url);
      return `https://docs.google.com/viewer?url=${encodeURIComponent(decoded)}&embedded=true`
    }
    return url
  }

  const readerUrl = getReaderUrl(book?.file_url, viewMode)
  const originalUrl = book?.file_url || readerUrl

  return (
    <motion.div 
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
      className="fixed inset-0 z-[100] bg-slate-900/95 backdrop-blur-xl flex flex-col items-center justify-center p-4 md:p-8 font-['Outfit']"
    >
      {/* Header - Premium Glass */}
      <div className="w-full max-w-6xl flex justify-between items-center mb-6 px-2">
         <div className="flex items-center space-x-4">
            <div className="w-12 h-12 bg-primary-600 rounded-2xl flex items-center justify-center text-white shadow-xl shadow-primary-900/40">
               <BookOpen size={24} />
            </div>
            <div>
               <h3 className="text-white font-black text-lg md:text-xl line-clamp-1 tracking-tight">{book.title}</h3>
               <p className="text-slate-400 text-[10px] font-bold uppercase tracking-widest">{book.author} • Pembaca Literasi</p>
            </div>
         </div>
         <div className="flex items-center space-x-2 md:space-x-3">
            {/* Toggle Mode Button (Jika di HP/Layar kecil ini sangat membantu) */}
            <button 
              onClick={() => {
                setIsLoading(true);
                setViewMode(viewMode === 'proxy' ? 'direct' : 'proxy');
              }}
              className="px-4 py-2 bg-indigo-500/20 hover:bg-indigo-500/30 text-indigo-100 rounded-xl text-[10px] font-black uppercase tracking-widest transition-all hidden md:block border border-indigo-400/20"
            >
               {viewMode === 'proxy' ? 'Mode Alternatif' : 'Mode Standar'}
            </button>
            <a 
              href={originalUrl} 
              target="_blank" 
              rel="noopener noreferrer"
              className="p-3 bg-white/10 hover:bg-white/20 rounded-2xl text-white transition-colors"
              title="Download / Buka Asli"
            >
               <ExternalLink size={20} />
            </a>
            <button 
              onClick={onClose}
              className="p-3 bg-red-500/20 hover:bg-red-500/40 rounded-2xl text-red-500 transition-colors shadow-inner"
            >
               <X size={20} />
            </button>
         </div>
      </div>

      {/* Reader Frame */}
      <div className="w-full max-w-6xl flex-1 bg-white rounded-[3rem] shadow-2xl overflow-hidden relative border border-white/10">
         
         {/* Loading State Overlay */}
         <AnimatePresence>
          {isLoading && (
              <motion.div 
                initial={{ opacity: 1 }}
                exit={{ opacity: 0 }}
                className="absolute inset-0 z-10 bg-white flex flex-col items-center justify-center space-y-6"
              >
                <div className="w-16 h-16 border-4 border-primary-100 border-t-primary-600 rounded-full animate-spin shadow-lg"></div>
                <div className="text-center">
                    <p className="text-slate-800 font-black text-xl italic uppercase tracking-tighter">Memuat Dokumen...</p>
                    <p className="text-slate-400 text-[10px] font-black uppercase tracking-[0.2em] mt-2 px-10">Mencoba mengakses server Kemdikbud via {viewMode === 'proxy' ? 'Google Proxy' : 'Jalur Langsung'}</p>
                </div>
              </motion.div>
          )}
         </AnimatePresence>

         {/* Iframe Content */}
         <iframe 
           key={viewMode}
           src={readerUrl} 
           className="w-full h-full border-none bg-slate-50"
           onLoad={() => {
              setTimeout(() => setIsLoading(false), 1200)
           }}
           onError={() => setHasError(true)}
           title={book.title}
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
           allowFullScreen
         />

         {/* Error / Fallback Overlay */}
         {hasError && (
           <div className="absolute inset-0 bg-slate-50 flex flex-col items-center justify-center p-12 text-center z-20">
             <div className="w-24 h-24 bg-amber-100 text-amber-600 rounded-full flex items-center justify-center mb-8">
                <AlertTriangle size={48} />
             </div>
             <h4 className="text-2xl font-black text-slate-800 mb-4 tracking-tight">Koneksi Repository Terhambat</h4>
             <p className="text-slate-500 max-w-md mx-auto mb-10 font-medium leading-relaxed">
               PDF dari server Kemdikbud terkadang menolak pratinjau di aplikasi HP. 
               Silakan pilih metode di bawah agar buku tetap bisa terbaca.
             </p>
             <div className="flex flex-col md:flex-row gap-4">
              <button 
                onClick={() => {
                  setHasError(false);
                  setIsLoading(true);
                  setViewMode(viewMode === 'proxy' ? 'direct' : 'proxy');
                }}
                className="px-8 py-5 bg-slate-800 text-white rounded-2xl font-black uppercase tracking-widest shadow-xl hover:bg-black transition-all"
              >
                Coba Mode Alternatif
              </button>
              <a 
                href={originalUrl} 
                target="_blank" 
                rel="noopener noreferrer"
                className="px-8 py-5 bg-primary-600 text-white rounded-2xl font-black uppercase tracking-widest shadow-xl shadow-primary-100 hover:scale-105 active:scale-95 transition-all flex items-center justify-center space-x-3"
              >
                  <ExternalLink size={20} />
                  <span>Buka Dokumen Asli</span>
              </a>
             </div>
            </div>
         )}
      </div>

      {/* Footer Info */}
      <div className="w-full max-w-6xl mt-6 px-6 flex flex-col md:flex-row justify-between items-center text-slate-500/50 gap-4">
         <div className="flex items-center space-x-4">
            <p className="text-[9px] font-black uppercase tracking-[0.3em]">Session Persistence Layers v2.0</p>
            <div className={`px-2 py-0.5 rounded text-[8px] font-black uppercase ${viewMode === 'proxy' ? 'bg-indigo-500/10 text-indigo-400' : 'bg-amber-500/10 text-amber-500'}`}>
               Current: {viewMode}
            </div>
         </div>
         <button className="flex items-center space-x-2 text-[9px] font-black uppercase tracking-widest hover:text-white transition-colors" onClick={() => window.location.reload()}>
            <RotateCcw size={10} />
            <span>Muat Ulang Paksa Reader</span>
         </button>
      </div>
    </motion.div>
  )
}

export default EBookViewer
