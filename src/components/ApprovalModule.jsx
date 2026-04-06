import React, { useState, useEffect, useCallback } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { CheckCircle, XCircle, Clock, BookOpen, Eye, ExternalLink, ChevronDown, RefreshCcw, Inbox, KeyRound, Bell } from 'lucide-react'
import { supabase } from '../lib/supabase'
import { sendNotification } from '../utils/notifications'

const STATUS_MAP = {
  pending:  { label: 'Menunggu', color: 'bg-amber-100 text-amber-700', icon: Clock },
  approved: { label: 'Disetujui', color: 'bg-emerald-100 text-emerald-700', icon: CheckCircle },
  rejected: { label: 'Ditolak', color: 'bg-red-100 text-red-700', icon: XCircle },
}

const ApprovalModule = ({ user }) => {
  const [requests, setRequests] = useState([])
  const [loading, setLoading]   = useState(true)
  const [filter, setFilter]     = useState('pending')
  const [selected, setSelected] = useState(null)
  const [note, setNote]         = useState('')
  const [submitting, setSubmitting] = useState(false)
  const [toast, setToast]       = useState(null)
  const [activeTab, setActiveTab] = useState('content') // 'content' | 'access'
  const [accessRequests, setAccessRequests] = useState([])
  const [loadingAccess, setLoadingAccess] = useState(false)
  const [accessDuration, setAccessDuration] = useState({}) // { [reqId]: days }

  const showToast = (msg, type = 'success') => {
    setToast({ msg, type })
    setTimeout(() => setToast(null), 3500)
  }

  const loadRequests = useCallback(async () => {
    setLoading(true)
    const query = supabase.from('book_requests').select('*').order('created_at', { ascending: false })
    if (filter !== 'all') query.eq('status', filter)
    const { data, error } = await query
    if (error) {
      showToast('Gagal memuat data: ' + error.message, 'error')
    } else {
      setRequests(data || [])
    }
    setLoading(false)
  }, [filter])

  const loadAccessRequests = useCallback(async () => {
    setLoadingAccess(true)
    // Baca dari localStorage (utama)
    const local = JSON.parse(localStorage.getItem('epus_book_access_requests') || '[]')
    // Coba juga dari Supabase (jika tabel tersedia)
    try {
      const { data } = await supabase
        .from('book_access_requests')
        .select('*')
        .order('requested_at', { ascending: false })
      if (data && data.length > 0) {
        // Gabungkan: Supabase sebagai sumber utama, localStorage sebagai fallback
        const merged = [...data]
        local.forEach(lr => {
          if (!merged.find(m => m.id === lr.id)) merged.push(lr)
        })
        setAccessRequests(merged)
      } else {
        setAccessRequests(local.sort((a, b) => new Date(b.requested_at) - new Date(a.requested_at)))
      }
    } catch(e) {
      setAccessRequests(local.sort((a, b) => new Date(b.requested_at) - new Date(a.requested_at)))
    }
    setLoadingAccess(false)
  }, [])

  const handleAccessAction = async (req, action) => {
    const durationDays = accessDuration[req.id] || 7 // default 7 hari
    const expiryDate = durationDays === 0 ? null : new Date(Date.now() + durationDays * 24 * 60 * 60 * 1000).toISOString()
    const durationLabel = durationDays === 0 ? 'Permanen' : `${durationDays} Hari`

    // Update status di localStorage
    const requests = JSON.parse(localStorage.getItem('epus_book_access_requests') || '[]')
    const updated = requests.map(r => r.id === req.id ? { ...r, status: action, reviewed_at: new Date().toISOString(), expiry_at: expiryDate } : r)
    localStorage.setItem('epus_book_access_requests', JSON.stringify(updated))

    if (action === 'approved') {
      // Simpan grant akses di localStorage dengan kadaluarsa
      const grants = JSON.parse(localStorage.getItem('epus_book_access_grants') || '[]')
      const idx = grants.findIndex(g => g.book_id === req.book_id && g.username === req.username)
      const grantData = {
        book_id: req.book_id,
        book_title: req.book_title,
        username: req.username,
        status: 'approved',
        granted_at: new Date().toISOString(),
        expiry_at: expiryDate,
        duration_label: durationLabel
      }
      if (idx > -1) grants[idx] = grantData
      else grants.push(grantData)
      localStorage.setItem('epus_book_access_grants', JSON.stringify(grants))

      const expiryText = durationDays === 0 ? 'Akses berlaku permanen.' : `Akses berlaku selama ${durationDays} hari hingga ${new Date(expiryDate).toLocaleDateString('id-ID')}.`
      // Kirim notifikasi ke user dengan info durasi
      await sendNotification(
        req.username,
        '✅ Akses Buku Disetujui!',
        `Permintaan Anda untuk membaca "${req.book_title}" telah disetujui oleh Pustakawan. ${expiryText} Silakan buka buku tersebut sekarang.`,
        'success',
        'catalog'
      )
      showToast(`✅ Akses "${req.book_title}" diberikan ke ${req.full_name} (${durationLabel})`)
      try {
        await supabase.from('book_access_requests').update({
          status: 'approved',
          expiry_at: expiryDate
        }).eq('id', req.id)
      } catch(e) {}
    } else {
      await sendNotification(req.username, '❌ Permintaan Akses Ditolak', `Maaf, permintaan Anda untuk membaca "${req.book_title}" tidak dapat disetujui. Hubungi Pustakawan untuk informasi lebih lanjut.`, 'error', null)
      showToast('Permintaan ditolak.', 'error')
      try { await supabase.from('book_access_requests').update({ status: 'rejected' }).eq('id', req.id) } catch(e) {}
    }
    loadAccessRequests()
  }

  useEffect(() => { loadRequests() }, [loadRequests])
  useEffect(() => { if (activeTab === 'access') loadAccessRequests() }, [activeTab, loadAccessRequests])

  const handleAction = async (req, action) => {
    setSubmitting(true)
    const { error } = await supabase.from('book_requests').update({
      status: action,
      reviewed_by: user?.username || 'admin',
      review_note: note,
      reviewed_at: new Date().toISOString()
    }).eq('id', req.id)

    if (error) {
      showToast('Gagal: ' + error.message, 'error')
    } else {
      if (action === 'approved') {
        // Masukkan ke tabel books
        let catId = null
        const { data: cat } = await supabase.from('categories').select('id').eq('name', req.category_name).maybeSingle()
        if (cat) {
          catId = cat.id
        } else {
          const { data: newCat } = await supabase.from('categories').insert({ name: req.category_name }).select('id').single()
          catId = newCat?.id
        }
        await supabase.from('books').insert({
          title: req.title,
          author: req.author,
          description: req.description,
          cover_url: req.cover_url,
          file_url: req.source_url,
          category_id: catId,
          type: 'digital',
          stock: 999
        })

        // Kirim notifikasi broadcast
        await sendNotification(
          null,
          '📖 Cerpen Baru Tersedia!',
          `"${req.title}" oleh ${req.author} kini tersedia di katalog.`,
          'success',
          'catalog'
        )
        showToast(`✅ "${req.title}" disetujui & ditambahkan ke katalog!`)
      } else {
        showToast(`❌ "${req.title}" ditolak.`, 'error')
      }
      setSelected(null)
      setNote('')
      loadRequests()
    }
    setSubmitting(false)
  }

  return (
    <div className="space-y-6">
      {/* Toast */}
      <AnimatePresence>
        {toast && (
          <motion.div
            initial={{ opacity: 0, y: -20 }} animate={{ opacity: 1, y: 0 }} exit={{ opacity: 0, y: -20 }}
            className={`fixed top-6 left-1/2 -translate-x-1/2 z-[300] px-6 py-4 rounded-2xl shadow-2xl font-bold text-sm text-white ${toast.type === 'error' ? 'bg-red-600' : 'bg-emerald-600'}`}
          >
            {toast.msg}
          </motion.div>
        )}
      </AnimatePresence>

      {/* Header */}
      <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
        <div>
          <h3 className="text-xl font-black text-slate-800 flex items-center gap-2">
            <Inbox size={20} className="text-amber-500" /> Persetujuan Akses
          </h3>
          <p className="text-xs text-slate-400 font-medium mt-0.5">
            Kelola permintaan akses buku &amp; konten yang perlu disetujui
          </p>
        </div>
        <button onClick={activeTab === 'content' ? loadRequests : loadAccessRequests} className="flex items-center gap-2 px-4 py-2 bg-slate-100 rounded-xl text-xs font-black text-slate-500 hover:bg-slate-200 transition-all active:scale-95">
          <RefreshCcw size={14} /> Refresh
        </button>
      </div>

      {/* Tab Switch */}
      <div className="flex bg-slate-100 rounded-2xl p-1">
        {[['content', <><BookOpen size={13} /> Konten Buku/PDF</>, 'Konten'], ['access', <><KeyRound size={13} /> Permintaan Akses Buku</>, 'Akses']].map(([tab, icon, label]) => (
          <button key={tab} onClick={() => setActiveTab(tab)}
            className={`flex-1 flex items-center justify-center gap-1.5 py-2.5 rounded-xl text-xs font-black uppercase tracking-widest transition-all ${activeTab === tab ? 'bg-white text-primary-700 shadow-sm' : 'text-slate-400 hover:text-slate-600'}`}>
            {icon}
          </button>
        ))}
      </div>


      {/* ── TAB: KONTEN BUKU/PDF ── */}
      {activeTab === 'content' && (<>
      {/* Filter Tabs */}
      <div className="flex gap-2 flex-wrap">
        {[['all','Semua'],['pending','⏳ Menunggu'],['approved','✅ Disetujui'],['rejected','❌ Ditolak']].map(([val, lbl]) => (
          <button key={val} onClick={() => setFilter(val)}
            className={`px-4 py-2 rounded-xl text-[10px] font-black uppercase tracking-widest transition-all active:scale-95 ${filter === val ? 'bg-primary-600 text-white shadow-lg shadow-primary-100' : 'bg-slate-100 text-slate-500 hover:bg-slate-200'}`}>
            {lbl}
          </button>
        ))}
      </div>

      {/* List */}
      {loading ? (
        <div className="flex justify-center py-16">
          <motion.div animate={{ rotate: 360 }} transition={{ repeat: Infinity, duration: 1, ease: 'linear' }}>
            <RefreshCcw size={28} className="text-primary-400" />
          </motion.div>
        </div>
      ) : requests.length === 0 ? (
        <div className="text-center py-16 text-slate-300">
          <Inbox size={48} className="mx-auto mb-3" />
          <p className="font-bold text-slate-400">Tidak ada data untuk filter ini</p>
        </div>
      ) : (
        <div className="space-y-3">
          {requests.map(req => {
            const st = STATUS_MAP[req.status] || STATUS_MAP.pending
            const Icon = st.icon
            const isOpen = selected?.id === req.id

            return (
              <motion.div key={req.id} layout
                className={`bg-white rounded-3xl border transition-all overflow-hidden ${isOpen ? 'border-primary-200 shadow-lg' : 'border-slate-100 hover:border-slate-200'}`}>
                {/* Row */}
                <button onClick={() => setSelected(isOpen ? null : req)} className="w-full text-left p-5 flex items-center gap-4">
                  {req.cover_url ? (
                    <img src={req.cover_url} alt={req.title} className="w-14 h-14 rounded-2xl object-cover flex-shrink-0 bg-slate-100" onError={e => e.target.style.display='none'} />
                  ) : (
                    <div className="w-14 h-14 rounded-2xl bg-gradient-to-br from-primary-100 to-indigo-100 flex items-center justify-center flex-shrink-0">
                      <BookOpen size={20} className="text-primary-500" />
                    </div>
                  )}
                  <div className="flex-1 min-w-0">
                    <h4 className="font-black text-slate-800 text-sm leading-tight line-clamp-1">{req.title}</h4>
                    <p className="text-[11px] text-slate-500 font-bold mt-0.5">{req.author} · <span className="text-slate-400">{req.source_url?.replace('https://','').split('/')[0]}</span></p>
                    <p className="text-[10px] text-slate-400 mt-0.5 line-clamp-1">{req.description}</p>
                  </div>
                  <div className="flex items-center gap-2 flex-shrink-0">
                    <span className={`px-3 py-1 rounded-full text-[9px] font-black uppercase tracking-wider ${st.color}`}>
                      <Icon size={10} className="inline mr-1" />{st.label}
                    </span>
                    <ChevronDown size={16} className={`text-slate-300 transition-transform ${isOpen ? 'rotate-180' : ''}`} />
                  </div>
                </button>

                {/* Detail Expand */}
                <AnimatePresence>
                  {isOpen && (
                    <motion.div initial={{ height: 0 }} animate={{ height: 'auto' }} exit={{ height: 0 }}
                      className="overflow-hidden border-t border-slate-100">
                      <div className="p-5 space-y-4">
                        <div className="flex gap-3">
                          <a href={req.source_url} target="_blank" rel="noopener noreferrer"
                            className="flex items-center gap-1.5 px-4 py-2 bg-slate-100 hover:bg-slate-200 rounded-xl text-[10px] font-black uppercase tracking-widest text-slate-600 transition-all">
                            <Eye size={12} /> Preview <ExternalLink size={10} />
                          </a>
                        </div>

                        {req.status === 'pending' && (
                          <div className="space-y-3">
                            <textarea value={note} onChange={e => setNote(e.target.value)}
                              placeholder="Catatan review (opsional)..."
                              className="w-full border border-slate-200 rounded-2xl px-4 py-3 text-sm font-medium text-slate-700 focus:outline-none focus:border-primary-400 resize-none"
                              rows={2} />
                            <div className="flex gap-3">
                              <button onClick={() => handleAction(req, 'approved')} disabled={submitting}
                                className="flex-1 py-3.5 bg-emerald-600 hover:bg-emerald-700 text-white rounded-2xl font-black text-xs uppercase tracking-widest transition-all active:scale-95 shadow-lg shadow-emerald-100 disabled:opacity-50">
                                ✅ Setujui & Publikasikan
                              </button>
                              <button onClick={() => handleAction(req, 'rejected')} disabled={submitting}
                                className="flex-1 py-3.5 bg-red-500 hover:bg-red-600 text-white rounded-2xl font-black text-xs uppercase tracking-widest transition-all active:scale-95 shadow-lg shadow-red-100 disabled:opacity-50">
                                ❌ Tolak
                              </button>
                            </div>
                          </div>
                        )}

                        {req.status !== 'pending' && req.review_note && (
                          <div className="bg-slate-50 rounded-2xl p-4 text-sm text-slate-600">
                            <span className="font-black text-slate-700">Catatan: </span>{req.review_note}
                          </div>
                        )}
                      </div>
                </motion.div>
              )}
            </AnimatePresence>
          </motion.div>
        )
      })}
      </div>
      )}
      </>)}

      {/* ── TAB: PERMINTAAN AKSES BUKU ── */}
      {activeTab === 'access' && (
        <div className="space-y-3">
          {loadingAccess ? (
            <div className="flex justify-center py-16">
              <motion.div animate={{ rotate: 360 }} transition={{ repeat: Infinity, duration: 1, ease: 'linear' }}>
                <RefreshCcw size={28} className="text-primary-400" />
              </motion.div>
            </div>
          ) : accessRequests.length === 0 ? (
            <div className="text-center py-16 text-slate-300">
              <KeyRound size={48} className="mx-auto mb-3" />
              <p className="font-bold text-slate-400">Belum ada permintaan akses buku</p>
              <p className="text-xs text-slate-300 mt-1">Permintaan akan muncul saat anggota mencoba membuka buku terkunci</p>
            </div>
          ) : (
            accessRequests.map(req => {
              const statusConfig = {
                pending:  { label: '⏳ Menunggu',   cls: 'bg-amber-100 text-amber-700' },
                approved: { label: '✅ Disetujui',   cls: 'bg-emerald-100 text-emerald-700' },
                rejected: { label: '❌ Ditolak',     cls: 'bg-red-100 text-red-600' },
              }[req.status] || { label: '⏳ Menunggu', cls: 'bg-amber-100 text-amber-700' }
              return (
                <div key={req.id} className={`bg-white rounded-3xl border p-5 shadow-sm space-y-3 ${req.status === 'pending' ? 'border-amber-200' : 'border-slate-100'}`}>
                  {/* Info Row */}
                  <div className="flex items-start gap-3">
                    <div className="w-11 h-11 rounded-2xl bg-amber-50 flex items-center justify-center shrink-0">
                      <KeyRound size={18} className="text-amber-500" />
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="font-black text-slate-800 text-sm line-clamp-1">📖 {req.book_title || req.title || 'Buku'}</p>
                      <p className="text-xs text-slate-500 font-medium mt-0.5">
                        Pemohon: <span className="font-black text-slate-700">{req.full_name || req.username}</span>
                        {req.username && req.full_name && <span className="text-slate-400"> (@{req.username})</span>}
                      </p>
                      <p className="text-[10px] text-slate-400 mt-1 font-bold">
                        {req.requested_at ? new Date(req.requested_at).toLocaleString('id-ID') : req.created_at ? new Date(req.created_at).toLocaleString('id-ID') : ''}
                      </p>
                    </div>
                    <span className={`px-3 py-1 rounded-full text-[9px] font-black uppercase tracking-wider shrink-0 ${statusConfig.cls}`}>
                      {statusConfig.label}
                    </span>
                  </div>
                  {/* Action Buttons — hanya tampil jika masih pending */}
                  {req.status === 'pending' && (
                    <div className="space-y-2 pt-1">
                      {/* Pilihan Durasi Akses */}
                      <div className="bg-slate-50 rounded-2xl p-3 border border-slate-100">
                        <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2">⏱ Durasi Akses</p>
                        <div className="grid grid-cols-4 gap-1.5">
                          {[{v:1,l:'1 Hari'},{v:7,l:'7 Hari'},{v:30,l:'30 Hari'},{v:0,l:'Permanen'}].map(opt => (
                            <button key={opt.v} type="button"
                              onClick={() => setAccessDuration(prev => ({...prev, [req.id]: opt.v}))}
                              className={`py-2 rounded-xl text-[10px] font-black uppercase tracking-wide transition-all ${
                                (accessDuration[req.id] ?? 7) === opt.v
                                  ? 'bg-primary-600 text-white shadow-sm'
                                  : 'bg-white text-slate-500 border border-slate-200 hover:border-primary-300'
                              }`}>
                              {opt.l}
                            </button>
                          ))}
                        </div>
                      </div>
                      <div className="flex gap-2">
                        <button
                          onClick={() => handleAccessAction(req, 'approved')}
                          className="flex-1 py-2.5 bg-emerald-600 hover:bg-emerald-700 text-white rounded-2xl font-black text-xs uppercase tracking-widest transition-all active:scale-95 shadow-lg shadow-emerald-100">
                          ✅ Setujui Akses
                        </button>
                        <button
                          onClick={() => handleAccessAction(req, 'rejected')}
                          className="flex-1 py-2.5 bg-red-500 hover:bg-red-600 text-white rounded-2xl font-black text-xs uppercase tracking-widest transition-all active:scale-95 shadow-lg shadow-red-100">
                          ❌ Tolak
                        </button>
                      </div>
                    </div>
                  )}
                  {req.status === 'approved' && (
                    <div className="bg-emerald-50 rounded-2xl px-4 py-2.5 text-xs font-bold text-emerald-700">
                      ✅ Akses telah diberikan — pengguna dapat membaca buku ini
                    </div>
                  )}
                  {req.status === 'rejected' && (
                    <div className="bg-red-50 rounded-2xl px-4 py-2.5 text-xs font-bold text-red-600">
                      ❌ Permintaan ditolak — notifikasi penolakan telah dikirim ke pengguna
                    </div>
                  )}
                </div>
              )
            })
          )}
        </div>
      )}
    </div>
  )
}

export default ApprovalModule
