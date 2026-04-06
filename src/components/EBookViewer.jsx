import React, { useState, useEffect, useRef } from 'react'
import { X, ExternalLink, Maximize2, Minimize2, RotateCcw, AlertTriangle, BookOpen } from 'lucide-react'
import { motion, AnimatePresence } from 'framer-motion'
import { logActivity } from '../utils/logger'

const EBookViewer = ({ book, onClose, user }) => {
  const [isLoading, setIsLoading] = useState(true)
  const [hasError, setHasError] = useState(false)
  const [viewMode, setViewMode] = useState('proxy') // 'proxy' or 'direct'
  const [isFullscreen, setIsFullscreen] = useState(false)
  const readerRef = useRef(null)

  // Fullscreen Handler
  const toggleFullscreen = () => {
    if (!document.fullscreenElement) {
      if (readerRef.current?.requestFullscreen) {
        readerRef.current.requestFullscreen().catch(() => {})
        setIsFullscreen(true)
      }
    } else {
      if (document.exitFullscreen) {
        document.exitFullscreen()
        setIsFullscreen(false)
      }
    }
  }

  useEffect(() => {
    if (book && user) {
      logActivity(user.id, user.username, 'book', `Membaca buku: ${book.title}`);
    }
    
    // Auto enter fullscreen on mount (best effort)
    const timer = setTimeout(() => {
      // Hanya berjalan jika ada interaksi sebelumnya
      if (readerRef.current?.requestFullscreen) {
        readerRef.current.requestFullscreen().catch(() => {})
      }
    }, 500)

    // SAFETY BREAK: Jika loading belum selesai dalam 10 detik, paksa stop agar user bisa melihat status
    const loadingSafety = setTimeout(() => {
       setIsLoading(false);
    }, 10000);
    
    return () => {
      clearTimeout(timer);
      clearTimeout(loadingSafety);
    }
  }, [book, user]);

  // Handle ESC key and Fullscreen Change
  useEffect(() => {
    const handleEsc = (e) => {
      if (e.key === 'Escape') onClose && onClose()
    }
    const handleFsChange = () => {
      setIsFullscreen(!!document.fullscreenElement)
    }
    window.addEventListener('keydown', handleEsc)
    document.addEventListener('fullscreenchange', handleFsChange)
    return () => {
      window.removeEventListener('keydown', handleEsc)
      document.removeEventListener('fullscreenchange', handleFsChange)
    }
  }, [onClose]);

  // EXTRACT SLUG FOR NATIVE READER
  const getBookSlug = (url) => {
    if (!url || typeof url !== 'string') return null;
    try {
      const cleanUrl = url.endsWith('/') ? url.slice(0, -1) : url;
      const parts = cleanUrl.split('/');
      const slug = parts[parts.length - 1];
      return slug || null;
    } catch(e) { return null; }
  }
  
  const bookSlug = getBookSlug(book?.file_url);
  const isPerpusOrg = book?.file_url?.includes('perpus.org') || false;

  // LOGIK PENYEMBUNYIAN/PROXY: Gunakan Google Docs Viewer untuk PDF yang diblokir CORS
  const getReaderUrl = (url, mode) => {
    if (!url) return "https://buku.kemdikbud.go.id/katalog"
    
    // Jika perpus.org, kita pakai Native Reader (null signaling)
    if (url.includes('perpus.org')) return null;

    if (mode === 'direct') return url;

    // Jika link adalah PDF langsung dari repositori luar, gunakan Google Viewer Proxy
    if (url.toLowerCase().endsWith('.pdf') || url.includes('/pdf/')) {
      const decoded = decodeURI(url);
      return `https://docs.google.com/viewer?url=${encodeURIComponent(decoded)}&embedded=true`
    }
    return url
  }

  const readerUrl = getReaderUrl(book?.file_url, viewMode)
  const originalUrl = book?.file_url || readerUrl

  return (
    <motion.div 
      ref={readerRef}
      initial={{ opacity: 0 }}
      animate={{ opacity: 1 }}
      exit={{ opacity: 0 }}
      className={`fixed inset-0 z-[100] bg-slate-900 flex flex-col items-center justify-center font-['Outfit'] ${isFullscreen ? 'p-0' : 'p-4 md:p-8'}`}
    >
      {/* Header - Premium Glass */}
      <div className={`w-full ${isFullscreen ? 'max-w-none bg-slate-900/80 backdrop-blur-md px-6 py-4 border-b border-white/5' : 'max-w-6xl mb-6 px-2'} flex justify-between items-center transition-all`}>
         <div className="flex items-center space-x-4">
            <div className={`bg-primary-600 rounded-2xl flex items-center justify-center text-white shadow-xl shadow-primary-900/40 ${isFullscreen ? 'w-10 h-10' : 'w-12 h-12'}`}>
               <BookOpen size={isFullscreen ? 20 : 24} />
            </div>
            <div>
               <h3 className={`text-white font-black line-clamp-1 tracking-tight ${isFullscreen ? 'text-base' : 'text-lg md:text-xl'}`}>{book.title}</h3>
               <p className="text-slate-500 text-[10px] font-black uppercase tracking-widest leading-none mt-1">Pembaca Literasi Digital</p>
            </div>
         </div>
         <div className="flex items-center space-x-2 md:space-x-3">
            <button 
              onClick={toggleFullscreen}
              className="p-3 bg-white/10 hover:bg-white/20 rounded-2xl text-white transition-all active:scale-90"
              title="Focus Mode"
            >
               {isFullscreen ? <Minimize2 size={20} /> : <Maximize2 size={20} />}
            </button>
            <button 
              onClick={() => {
                setIsLoading(true);
                setViewMode(viewMode === 'proxy' ? 'direct' : 'proxy');
              }}
              className="px-4 py-3 bg-indigo-500/20 hover:bg-indigo-500/30 text-indigo-100 rounded-2xl text-[10px] font-black uppercase tracking-widest transition-all hidden lg:block border border-indigo-400/20"
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

      {/* Reader Frame - Cinema View */}
      <div className={`w-full flex-1 bg-white shadow-2xl overflow-hidden relative transition-all duration-500 ${isFullscreen ? 'max-w-none' : 'max-w-6xl rounded-[3rem] border border-white/10'}`}>
         
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
                    <p className="text-slate-400 text-[10px] font-black uppercase tracking-[0.2em] mt-2">Menyiapkan buku untuk tampilan Cinema Mode</p>
                </div>
              </motion.div>
          )}
         </AnimatePresence>

         {/* Content Area */}
         {readerUrl ? (
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
         ) : isPerpusOrg ? (
           /* SEAMLESS NATIVE READER UNTUK PERPUS.ORG */
           <div className="w-full h-full bg-slate-100 overflow-y-auto overflow-x-hidden p-4 md:p-8 space-y-8 flex flex-col items-center custom-scrollbar">
              <div className="max-w-3xl w-full space-y-12 pb-24">
                {/* Loop pages (limit to 60 for performance, perpus usually has less) */}
                {bookSlug && [...Array(60)].map((_, i) => (
                  <div key={i} className="relative group flex flex-col items-center w-full">
                    <img 
                      src={`https://images.weserv.nl/?url=${encodeURIComponent(`https://image-v2.free-ebook.my.id/sketch/${bookSlug}/${bookSlug}-${i}.jpg`)}&w=1000`}
                      referrerPolicy="no-referrer"
                      alt={`Halaman ${i+1}`}
                      className="w-full shadow-2xl rounded-sm border border-slate-200 bg-white"
                      loading="lazy"
                      onLoad={() => {
                        if (i === 0) setIsLoading(false);
                      }}
                      onError={(e) => {
                        // Jika halaman 0 gagal, beri tahu sistem
                        if (i === 0) {
                           setIsLoading(false);
                           setHasError(true);
                        }
                        // Sembunyikan halaman yang tidak ada (akhir buku)
                        if (e.target.parentElement) {
                           e.target.parentElement.style.display = 'none';
                        }
                      }}
                    />
                    <div className="mt-4 px-4 py-1 bg-slate-800/10 text-slate-400 text-[10px] font-black uppercase tracking-widest rounded-full opacity-0 group-hover:opacity-100 transition-opacity">
                      Halaman {i + 1}
                    </div>
                  </div>
                ))}
              </div>
              
              {/* Bottom Info for external link if they want interactive mode */}
              <div className="py-12 text-center border-t border-slate-200 w-full max-w-3xl">
                 <p className="text-slate-400 text-xs font-bold mb-6">Anda telah mencapai akhir koleksi kustom kami.</p>
                 <a 
                   href={originalUrl} target="_blank" rel="noopener noreferrer"
                   className="inline-flex items-center space-x-2 px-6 py-3 bg-white border border-slate-200 text-slate-600 rounded-xl text-[10px] font-black uppercase tracking-widest hover:bg-slate-50 transition-all"
                 >
                    <ExternalLink size={14} />
                    <span>Buka Mode Interaktif Perpus.org</span>
                 </a>
              </div>
           </div>
         ) : (
           /* FALLBACK LAINNYA */
           <div className="absolute inset-0 bg-slate-50 flex flex-col items-center justify-center p-8 text-center z-20">
             <div className="w-24 h-24 bg-primary-100 text-primary-600 rounded-[2.5rem] flex items-center justify-center mb-8 shadow-xl shadow-primary-100/20">
                <AlertTriangle size={40} />
             </div>
             <h4 className="text-2xl font-black text-slate-800 mb-2 tracking-tight">Konten Terblokir</h4>
             <p className="text-slate-400 text-sm max-w-sm mb-10 font-bold leading-relaxed">
               Konten ini tidak dapat ditampilkan secara langsung karena kebijakan keamanan.
             </p>
             <a 
               href={originalUrl} target="_blank" rel="noopener noreferrer"
               className="px-10 py-5 bg-primary-600 text-white rounded-[2rem] font-black uppercase tracking-widest shadow-2xl"
             >
                 <BookOpen size={20} />
                 <span>Buka Jendela Baru</span>
             </a>
           </div>
         )}

         {/* Error / Fallback Overlay */}
         {hasError && (
           <div className="absolute inset-0 bg-slate-50 flex flex-col items-center justify-center p-12 text-center z-20">
             <div className="w-24 h-24 bg-amber-100 text-amber-600 rounded-full flex items-center justify-center mb-8">
                <AlertTriangle size={48} />
             </div>
             <h4 className="text-2xl font-black text-slate-800 mb-4 tracking-tight">Gagal Memuat lewat {viewMode}</h4>
             <div className="flex flex-col md:flex-row gap-4">
              <button 
                onClick={() => {
                  setHasError(false);
                  setIsLoading(true);
                  setViewMode(viewMode === 'proxy' ? 'direct' : 'proxy');
                }}
                className="px-8 py-5 bg-slate-800 text-white rounded-2xl font-black uppercase tracking-widest shadow-xl hover:bg-black transition-all"
              >
                Ganti Mode Baca
              </button>
              <a 
                href={originalUrl} 
                target="_blank" 
                rel="noopener noreferrer"
                className="px-8 py-5 bg-primary-600 text-white rounded-2xl font-black uppercase tracking-widest shadow-xl shadow-primary-100 hover:scale-105 active:scale-95 transition-all flex items-center justify-center space-x-3"
              >
                  <ExternalLink size={20} />
                  <span>Buka Jendela Baru</span>
              </a>
             </div>
            </div>
         )}
      </div>

      {/* Footer Info - Hanya tampil di window mode */}
      {!isFullscreen && (
        <div className="w-full max-w-6xl mt-6 px-6 flex justify-between items-center text-slate-500/50">
           <p className="text-[9px] font-black uppercase tracking-[0.3em]">Cinema Reader v3.0 — Fit to Screen</p>
           <button className="flex items-center space-x-2 text-[9px] font-black uppercase tracking-widest hover:text-white transition-colors" onClick={() => window.location.reload()}>
              <RotateCcw size={10} />
              <span>Muat Ulang</span>
           </button>
        </div>
      )}
    </motion.div>
  )
}

export default EBookViewer
