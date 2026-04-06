import React, { useState, useEffect } from 'react'
import { Plus, Table, Users, BarChart3, Trash2, Search, BookOpen, X, Camera, ScanLine, Edit2, Save, Shield, Settings, RefreshCcw } from 'lucide-react'
import { motion, AnimatePresence } from 'framer-motion'
import { Html5QrcodeScanner } from 'html5-qrcode'
import { USERS_DATA, getBookCover } from '../dataStore'
import { supabase } from '../lib/supabase'
import { safeParseStorage, setStorage, removeStorage } from '../utils/storage'

// ── Toast ─────────────────────────────────────────────────
const Toast = ({ msg, type, onClose }) => (
  <motion.div initial={{ y: 80, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 80, opacity: 0 }}
    className={`fixed bottom-24 md:bottom-8 left-1/2 -translate-x-1/2 z-50 px-8 py-4 rounded-2xl shadow-2xl flex items-center space-x-3 font-bold text-white text-sm whitespace-nowrap ${type === 'success' ? 'bg-emerald-600' : type === 'error' ? 'bg-red-500' : 'bg-slate-800'}`}>
    <span>{msg}</span>
    <button onClick={onClose}><X size={16} /></button>
  </motion.div>
)

// ── Modal Tambah Buku (+ Barcode Scanner) ─────────────────
const ModalTambahBuku = ({ onClose, onSave, categories = [] }) => {
  const [form, setForm] = useState({ title: '', author: '', category: categories[0]?.name || 'IPA', isbn: '', file_url: '', description: '' })
  const [scanning, setScanning] = useState(false)
  const [fetching, setFetching] = useState(false)
  const scannerRef = React.useRef(null)

  const startScan = () => {
    setScanning(true)
    setTimeout(() => {
      scannerRef.current = new Html5QrcodeScanner('barcode-reader', { fps: 10, qrbox: 250 }, false)
      scannerRef.current.render(
        (decodedText) => {
          setForm(p => ({ ...p, isbn: decodedText }))
          scannerRef.current?.clear()
          setScanning(false)
        },
        (err) => { /* ignore errors */ }
      )
    }, 300)
  }

  const stopScan = () => {
    scannerRef.current?.clear()
    setScanning(false)
  }

  // ✅ SIBI & REPOSITORI CRAWLER LOGIC
  const crawlFromURL = async () => {
    const url = prompt('Masukkan URL SIBI (buku.kemdikbud.go.id) atau Repositori Kemdikbud:');
    if (!url) return;
    setFetching(true);
    try {
      const proxy = `https://api.allorigins.win/get?url=${encodeURIComponent(url)}`;
      const res = await fetch(proxy);
      const data = await res.json();
      const html = data.contents;
      
      const parser = new DOMParser();
      const doc = parser.parseFromString(html, 'text/html');
      
      const title = doc.querySelector('meta[property="og:title"]')?.content || doc.title;
      const description = doc.querySelector('meta[property="og:description"]')?.content || "";
      const pdfLinkEl = doc.querySelector('a[href$=".pdf"]');
      let pdfLink = "";
      
      if (pdfLinkEl) {
        pdfLink = pdfLinkEl.href.startsWith('http') ? pdfLinkEl.href : new URL(pdfLinkEl.getAttribute('href'), url).href;
      }

      setForm(p => ({
        ...p,
        title: title.split('|')[0].trim() || p.title,
        description: description || p.description,
        file_url: pdfLink || p.file_url,
      }));
      
      alert('Berhasil mengambil metadata dari ' + new URL(url).hostname);
    } catch (e) {
      console.error('Scraping Error:', e);
      alert('Gagal mengambil data dari URL tersebut.');
    } finally {
      setFetching(false);
    }
  }

  const handleSave = async () => {
    if (!form.title || !form.author) { alert('Judul dan Pengarang wajib diisi!'); return }
    
    // Cari ID Kategori yang sesuai
    const selectedCat = categories.find(c => c.name === form.category)
    const catId = selectedCat ? selectedCat.id : null

    onSave({ 
      title: form.title, 
      author: form.author, 
      isbn: form.isbn, 
      description: form.description,
      file_url: form.file_url,
      type: 'digital',
      category_id: catId
    })
    onClose()
  }

  return (
    <div className="fixed inset-0 z-50 bg-slate-900/60 backdrop-blur-sm flex items-center justify-center p-4 overflow-y-auto">
      <motion.div initial={{ scale: 0.9, opacity: 0 }} animate={{ scale: 1, opacity: 1 }}
        className="bg-white rounded-[2.5rem] p-8 w-full max-w-lg shadow-2xl my-4">
        <div className="flex justify-between items-center mb-6">
          <h3 className="text-xl font-black text-slate-800">📚 Input Buku Baru</h3>
          <div className="flex items-center space-x-2">
            <button 
              onClick={crawlFromURL}
              className="px-4 py-2 bg-indigo-50 text-indigo-600 rounded-xl font-black text-[10px] uppercase tracking-widest hover:bg-indigo-100 transition-all border border-indigo-100"
            >
              Crawl SIBI/Repositori
            </button>
            <button onClick={onClose} className="p-2 text-slate-400 hover:text-red-500"><X size={20} /></button>
          </div>
        </div>

        {/* ISBN + Barcode Scanner */}
        <div className="mb-4">
          <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2 block">ISBN (manual atau scan barcode)</label>
          <div className="flex gap-2">
            <div className="relative flex-1">
              <input type="text" placeholder="978xxxxxxxxxx" value={form.isbn}
                onChange={e => setForm(p => ({ ...p, isbn: e.target.value }))}
                className="w-full bg-slate-50 rounded-2xl px-4 py-3 text-sm outline-none focus:ring-2 focus:ring-primary-500 font-medium border-none pr-10" />
              {form.isbn && (
                <button 
                  onClick={fetchMetadataByISBN}
                  disabled={fetching}
                  className="absolute right-2 top-1/2 -translate-y-1/2 p-2 text-primary-600 hover:bg-primary-50 rounded-lg transition-colors"
                  title="Ambil Data Otomatis (Crawler)"
                >
                  {fetching ? <div className="w-4 h-4 border-2 border-primary-600 border-t-transparent rounded-full animate-spin" /> : <ScanLine size={18} />}
                </button>
              )}
            </div>
            <button onClick={scanning ? stopScan : startScan}
              className={`px-4 py-3 rounded-2xl font-black text-xs text-white flex items-center space-x-2 transition-all active:scale-95 ${scanning ? 'bg-red-500' : 'bg-primary-600 shadow-lg shadow-primary-100'}`}>
              <Camera size={18} />
              <span>{scanning ? 'Stop' : 'Scan'}</span>
            </button>
          </div>
          {/* Barcode reader container */}
          <AnimatePresence>
            {scanning && (
              <motion.div initial={{ opacity: 0, height: 0 }} animate={{ opacity: 1, height: 'auto' }} exit={{ opacity: 0, height: 0 }}
                className="mt-3 overflow-hidden">
                <div id="barcode-reader" className="rounded-2xl overflow-hidden" />
                <p className="text-[10px] text-slate-400 text-center mt-2 font-bold">Arahkan kamera ke barcode buku</p>
              </motion.div>
            )}
          </AnimatePresence>
        </div>

        <div className="space-y-4">
          {[
            { key: 'title',    label: 'Judul Buku *',        placeholder: 'Masukkan judul buku...' },
            { key: 'author',   label: 'Pengarang *',          placeholder: 'Nama pengarang atau penerbit' },
            { key: 'file_url', label: 'Link Buku Digital',    placeholder: 'https://...' },
          ].map(f => (
            <div key={f.key}>
              <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">{f.label}</label>
              <input type="text" placeholder={f.placeholder} value={form[f.key]}
                onChange={e => setForm(p => ({ ...p, [f.key]: e.target.value }))}
                className="w-full bg-slate-50 rounded-2xl px-4 py-3 text-sm outline-none focus:ring-2 focus:ring-primary-500 font-medium border-none" />
            </div>
          ))}
          <div>
            <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Kategori</label>
            <select value={form.category} onChange={e => setForm(p => ({ ...p, category: e.target.value }))}
              className="w-full bg-slate-50 rounded-2xl px-4 py-3 text-sm outline-none focus:ring-2 focus:ring-primary-500 font-medium border-none appearance-none cursor-pointer">
              {categories.map(c => (
                <option key={c.id} value={c.name}>{c.name}</option>
              ))}
            </select>
          </div>
          <div>
            <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Deskripsi</label>
            <textarea placeholder="Deskripsi singkat buku..." value={form.description}
              onChange={e => setForm(p => ({ ...p, description: e.target.value }))}
              rows={3} className="w-full bg-slate-50 rounded-2xl px-4 py-3 text-sm outline-none focus:ring-2 focus:ring-primary-500 font-medium border-none resize-none" />
          </div>
        </div>
        <div className="flex gap-3 mt-6">
          <button onClick={onClose} className="flex-1 py-3 bg-slate-100 text-slate-600 rounded-2xl font-bold text-sm hover:bg-slate-200 transition-colors">Batal</button>
          <button onClick={handleSave} className="flex-1 py-3 bg-primary-600 text-white rounded-2xl font-black text-sm hover:bg-primary-700 shadow-lg shadow-primary-100 transition-all active:scale-95">Simpan Buku</button>
        </div>
      </motion.div>
    </div>
  )
}

// ── Modal Edit Buku & Setting ───────────────────────────────────────
const ModalEditBuku = ({ book, onClose, onSave, categories = [] }) => {
  const [form, setForm] = useState({ ...book })

  const handleSave = () => {
    if (!form.title || !form.author) { alert('Judul dan Pengarang wajib diisi!'); return }
    onSave(form)
    onClose()
  }

  return (
    <div className="fixed inset-0 z-[60] bg-slate-900/60 backdrop-blur-sm flex items-center justify-center p-4 overflow-y-auto">
      <motion.div initial={{ scale: 0.9, opacity: 0 }} animate={{ scale: 1, opacity: 1 }}
        className="bg-white rounded-[2.5rem] p-8 w-full max-w-lg shadow-2xl my-4">
        <div className="flex justify-between items-center mb-6">
          <h3 className="text-xl font-black text-slate-800">⚙️ Edit Buku & Pengaturan</h3>
          <button onClick={onClose} className="p-2 text-slate-400 hover:text-red-500"><X size={20} /></button>
        </div>

        <div className="space-y-4">
          <div>
            <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Judul Buku *</label>
            <input type="text" value={form.title} onChange={e => setForm(p => ({...p, title: e.target.value}))} className="w-full bg-slate-50 rounded-2xl px-4 py-3 text-sm outline-none focus:ring-2 focus:ring-primary-500 font-medium" />
          </div>
          <div>
            <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Pengarang *</label>
            <input type="text" value={form.author} onChange={e => setForm(p => ({...p, author: e.target.value}))} className="w-full bg-slate-50 rounded-2xl px-4 py-3 text-sm outline-none focus:ring-2 focus:ring-primary-500 font-medium" />
          </div>
          <div>
            <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Kategori</label>
            <select value={form.category} onChange={e => setForm(p => ({ ...p, category: e.target.value }))} className="w-full bg-slate-50 rounded-2xl px-4 py-3 text-sm outline-none focus:ring-2 focus:ring-primary-500 font-medium cursor-pointer">
              {categories.map(c => <option key={c.id} value={c.name}>{c.name}</option>)}
            </select>
          </div>
          <div>
            <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Deskripsi</label>
            <textarea placeholder="Deskripsi singkat buku..." value={form.description || ''}
              onChange={e => setForm(p => ({ ...p, description: e.target.value }))}
              rows={3} className="w-full bg-slate-50 rounded-2xl px-4 py-3 text-sm outline-none focus:ring-2 focus:ring-primary-500 font-medium border-none resize-none" />
          </div>

          <div className="bg-amber-50 border border-amber-200 rounded-2xl p-4 mt-4">
            <label className="flex items-center space-x-3 cursor-pointer">
              <input type="checkbox" checked={!!form.requires_approval} onChange={e => setForm(p => ({...p, requires_approval: e.target.checked}))} className="w-5 h-5 text-amber-600 rounded focus:ring-amber-500 cursor-pointer" />
              <div>
                <p className="text-xs font-black text-amber-800 uppercase tracking-wider cursor-pointer">Perlu Persetujuan Kepala Perpus</p>
                <p className="text-[10px] text-amber-700 font-medium leading-tight cursor-pointer">Jika dicentang, anggota biasa tidak bisa membaca buku ini sebelum diizinkan.</p>
              </div>
            </label>
          </div>
        </div>

        <div className="flex gap-3 mt-6">
          <button onClick={onClose} className="flex-1 py-3 bg-slate-100 text-slate-600 rounded-2xl font-bold text-sm hover:bg-slate-200">Batal</button>
          <button onClick={handleSave} className="flex-1 py-3 bg-primary-600 text-white rounded-2xl font-black text-sm hover:bg-primary-700 active:scale-95 shadow-lg shadow-primary-100">Simpan Perubahan</button>
        </div>
      </motion.div>
    </div>
  )
}

// ── Modal Kelola Kategori ──
const ModalKelolaKategori = ({ onClose, categories, refreshCategories }) => {
  const [newCat, setNewCat] = useState('')
  const [saving, setSaving] = useState(false)

  const handleAdd = async () => {
    if (!newCat.trim()) return
    setSaving(true)
    const { error } = await supabase.from('categories').insert([{ name: newCat }])
    if (error) alert(error.message)
    else {
      setNewCat('')
      refreshCategories()
    }
    setSaving(false)
  }

  const handleDelete = async (id, name) => {
    if (!window.confirm(`Hapus kategori "${name}"? Ini mungkin mengosongkan kategori buku yang menggunakan ini.`)) return
    const { error } = await supabase.from('categories').delete().eq('id', id)
    if (error) alert(error.message)
    else refreshCategories()
  }

  return (
    <div className="fixed inset-0 z-50 bg-slate-900/60 backdrop-blur-sm flex items-center justify-center p-4">
      <motion.div initial={{ scale: 0.9, opacity: 0 }} animate={{ scale: 1, opacity: 1 }}
        className="bg-white rounded-[2.5rem] p-8 w-full max-w-md shadow-2xl">
        <div className="flex justify-between items-center mb-6">
          <h3 className="text-xl font-black text-slate-800">🏷️ Kelola Kategori</h3>
          <button onClick={onClose} className="p-2 text-slate-400 hover:text-red-500"><X size={20} /></button>
        </div>

        <div className="flex gap-2 mb-6">
          <input type="text" placeholder="Nama kategori baru..." value={newCat} 
            onChange={e => setNewCat(e.target.value)}
            className="flex-1 bg-slate-50 rounded-xl px-4 py-3 text-sm outline-none focus:ring-2 focus:ring-primary-500 font-medium border-none" />
          <button onClick={handleAdd} disabled={saving}
            className="px-4 py-3 bg-primary-600 text-white rounded-xl font-black text-xs uppercase tracking-widest active:scale-95 transition-all">
            {saving ? '...' : 'Tambah'}
          </button>
        </div>

        <div className="space-y-2 max-h-60 overflow-y-auto pr-2 custom-scrollbar">
          {categories.map(c => (
            <div key={c.id} className="flex items-center justify-between p-3 bg-slate-50 rounded-xl group">
              <span className="text-sm font-bold text-slate-700">{c.name}</span>
              <button onClick={() => handleDelete(c.id, c.name)} className="opacity-0 group-hover:opacity-100 text-red-400 hover:text-red-600 transition-all p-1">
                <Trash2 size={16} />
              </button>
            </div>
          ))}
        </div>

        <button onClick={onClose}
          className="mt-6 w-full py-3 bg-slate-100 text-slate-600 rounded-2xl font-bold text-sm hover:bg-slate-200 transition-colors">
          Tutup
        </button>
      </motion.div>
    </div>
  )
}

// ── Modal Kelola Anggota (+ Edit User & Role) ──────────────
const ModalAnggota = ({ onClose }) => {
  const [users, setUsers] = useState([])
  const [loading, setLoading] = useState(true)
  const [search, setSearch] = useState('')
  const [filterG, setFilterG] = useState('all')
  const [editingId, setEditingId] = useState(null)
  const [editForm, setEditForm] = useState({})

  const loadAllUsers = async () => {
    setLoading(true)
    try {
      // 1. Ambil data dari Supabase (Pusat)
      const { data: dbProfiles } = await supabase.from('profiles').select('*')
      const { data: approvedRequests } = await supabase.from('user_requests').select('*').eq('status', 'approved')
      
      // 2. Gabungkan dengan USERS_DATA (Hardcoded) dan localStorage (Perubahan Lokal)
      const localUsers = safeParseStorage('epus_users', [])

      let merged = [...USERS_DATA]

      // Gabungkan profil dari database
      if (dbProfiles) {
        dbProfiles.forEach(p => {
          const idx = merged.findIndex(u => u.username === p.username)
          if (idx > -1) merged[idx] = { ...merged[idx], ...p, id: p.id || merged[idx].id }
          else merged.push({ ...p, id: p.id || Date.now() + Math.random() })
        })
      }

      // Gabungkan pendaftar yang sudah disetujui tapi belum masuk ke profiles (Back-up)
      if (approvedRequests) {
        approvedRequests.forEach(req => {
          const idx = merged.findIndex(u => u.username === req.username)
          if (idx === -1) {
            merged.push({ 
              id: req.id || Date.now() + Math.random(),
              username:  req.username,
              full_name: req.full_name || req.username,
              role:      'masyarakat',
              email:     req.email
            })
          }
        })
      }

      // Gabungkan perubahan dari localStorage (prioritas terakhir jika ada edit lokal)
      localUsers.forEach(p => {
        const idx = merged.findIndex(u => u.username === p.username)
        if (idx > -1) merged[idx] = { ...merged[idx], ...p }
      })

      setUsers(merged)
    } catch (e) {
      console.error(e)
      setUsers([...USERS_DATA])
    }
    setLoading(false)
  }

  useEffect(() => {
    loadAllUsers()
  }, [])

  const filtered = users.filter(u => {
    const fn = (u.full_name || '').toLowerCase()
    const un = (u.username || '').toLowerCase()
    const s  = search.toLowerCase()
    
    const matchSearch = fn.includes(s) || un.includes(s)
    const matchFilter = filterG === 'all' || u.role === filterG || u.grade === filterG || u.grade_level === filterG
    return matchSearch && matchFilter
  })

  const startEdit = (u) => { setEditingId(u.id); setEditForm({ ...u }) }
  const saveEdit = async () => {
    let finalEdit = { ...editForm }
    let isPasswordChanged = false
    if (finalEdit.password && finalEdit.password.trim() !== '') {
      isPasswordChanged = true
    } else {
      delete finalEdit.password
    }

    const updatedUsers = users.map(u => u.id === editingId ? { ...u, ...finalEdit } : u)
    setUsers(updatedUsers)
    // Simpan ke localStorage
    setStorage('epus_users', updatedUsers)

    
    // Update profil di Supabase juga
    try {
      await supabase.from('profiles').update({
        full_name: finalEdit.full_name,
        role: finalEdit.role,
        grade_level: finalEdit.grade
      }).eq('username', finalEdit.username)
    } catch(e) {}

    if (isPasswordChanged) {
      alert(`✅ Profil dan Password untuk user "${finalEdit.full_name}" berhasil diperbarui!`)
    } else {
      alert(`✅ Profil untuk user "${finalEdit.full_name}" berhasil diperbarui!`)
    }
    setEditingId(null)
  }
  const cancelEdit = () => setEditingId(null)

  const handleDeleteUser = async (u) => {
    if (!window.confirm(`Hapus anggota "${u.full_name || u.username}"?`)) return
    
    // 1. Hapus dari state lokal
    setUsers(prev => prev.filter(user => user.username !== u.username))
    
    // 2. Hapus dari Database Supabase
    try {
      await supabase.from('profiles').delete().eq('username', u.username)
      await supabase.from('user_requests').delete().eq('username', u.username)
    } catch(e) {}
    
    // 3. Simpan state sisa ke localStorage
    setStorage('epus_users', updatedLocal)

    
    alert(`🗑️ Anggota "${u.full_name || u.username}" telah dihapus.`)
  }

  const ROLE_COLORS = {
    student:    'bg-emerald-100 text-emerald-700',
    teacher:    'bg-amber-100 text-amber-700',
    librarian:  'bg-primary-100 text-primary-700',
    masyarakat: 'bg-indigo-100 text-indigo-700',
  }
  const AVATAR_COLORS = { student: '#059669', teacher: '#d97706', librarian: '#4f46e5', masyarakat: '#6366f1' }

  return (
    <div className="fixed inset-0 z-50 bg-slate-900/60 backdrop-blur-sm flex items-center justify-center p-4">
      <motion.div initial={{ scale: 0.9, opacity: 0 }} animate={{ scale: 1, opacity: 1 }}
        className="bg-white rounded-[2.5rem] p-6 w-full max-w-lg shadow-2xl flex flex-col max-h-[90vh]">
        <div className="flex justify-between items-center mb-4">
          <h3 className="text-xl font-black text-slate-800">👥 Kelola Anggota ({users.length})</h3>
          <button onClick={onClose} className="p-2 text-slate-400 hover:text-red-500"><X size={20} /></button>
        </div>

        {/* Search */}
        <div className="relative mb-3">
          <Search size={16} className="absolute left-4 top-1/2 -translate-y-1/2 text-slate-400" />
          <input type="text" placeholder="Cari nama atau username..." value={search}
            onChange={e => setSearch(e.target.value)}
            className="w-full bg-slate-50 rounded-2xl pl-10 pr-4 py-3 text-sm font-medium outline-none focus:ring-2 focus:ring-primary-500 border-none" />
        </div>

        {/* Filter tabs */}
        <div className="flex gap-2 mb-4 overflow-x-auto hide-scrollbar">
          {[['all','Semua'],['student','Siswa'],['teacher','Guru'],['masyarakat','Umum'],['7','Kls 7'],['8','Kls 8'],['9','Kls 9']].map(([v,l]) => (
            <button key={v} onClick={() => setFilterG(v)}
              className={`px-3 py-1.5 rounded-xl text-[10px] font-black uppercase whitespace-nowrap transition-all ${filterG===v ? 'bg-primary-600 text-white' : 'bg-slate-100 text-slate-500 hover:bg-slate-200'}`}>
              {l}
            </button>
          ))}
        </div>

        {/* User list */}
        <div className="overflow-y-auto space-y-2 flex-1">
          {loading ? (
            <div className="text-center py-12">
              <RefreshCcw size={24} className="animate-spin text-primary-500 mx-auto mb-2" />
              <p className="text-xs font-black text-slate-400 uppercase tracking-widest">Memuat anggota...</p>
            </div>
          ) : (
            filtered.map((u) => (
              <div key={u.username || u.id}>
                {editingId === u.id ? (
                  // ── EDIT FORM ────────────────────────────
                  <motion.div initial={{ opacity: 0 }} animate={{ opacity: 1 }}
                    className="bg-primary-50 border border-primary-100 rounded-2xl p-4 space-y-3">
                    <div className="grid grid-cols-2 gap-3">
                      <div>
                        <label className="text-[9px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Nama Lengkap</label>
                        <input value={editForm.full_name} onChange={e => setEditForm(p=>({...p, full_name: e.target.value}))}
                          className="w-full bg-white rounded-xl px-3 py-2 text-xs font-bold outline-none focus:ring-2 focus:ring-primary-400 border-none" />
                      </div>
                      <div>
                        <label className="text-[9px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Username</label>
                        <input value={editForm.username} onChange={e => setEditForm(p=>({...p, username: e.target.value}))}
                          className="w-full bg-white rounded-xl px-3 py-2 text-xs font-bold outline-none focus:ring-2 focus:ring-primary-400 border-none" />
                      </div>
                      <div>
                        <label className="text-[9px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Role</label>
                        <select value={editForm.role} onChange={e => setEditForm(p=>({...p, role: e.target.value}))}
                          className="w-full bg-white rounded-xl px-3 py-2 text-xs font-bold outline-none focus:ring-2 focus:ring-primary-400 border-none">
                          <option value="student">Siswa</option>
                          <option value="teacher">Guru</option>
                          <option value="librarian">Pustakawan</option>
                          <option value="masyarakat">Umum</option>
                        </select>
                      </div>
                      <div>
                        <label className="text-[9px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Kelas (jika siswa)</label>
                        <select value={editForm.grade || ''} onChange={e => setEditForm(p=>({...p, grade: e.target.value}))}
                          className="w-full bg-white rounded-xl px-3 py-2 text-xs font-bold outline-none focus:ring-2 focus:ring-primary-400 border-none">
                          <option value="">-</option>
                          <option value="7">7</option>
                          <option value="8">8</option>
                          <option value="9">9</option>
                        </select>
                      </div>
                      <div className="col-span-2">
                        <label className="text-[9px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Ganti Password Baru</label>
                        <input 
                          type="password"
                          placeholder="Ketikan password baru untuk meriset..." 
                          value={editForm.password || ''} 
                          onChange={e => setEditForm(p=>({...p, password: e.target.value}))}
                          className="w-full bg-white rounded-xl px-4 py-3 text-sm font-bold outline-none focus:ring-2 focus:ring-primary-400 border-none" 
                        />
                        <p className="text-[9px] text-slate-400 mt-1 uppercase tracking-wider font-bold">Kosongkan jika tidak ingin mengganti password</p>
                      </div>
                    </div>
                    <div className="flex gap-2">
                      <button onClick={cancelEdit} className="flex-1 py-2 bg-white text-slate-500 rounded-xl font-black text-xs hover:bg-slate-100 transition-colors">Batal</button>
                      <button onClick={saveEdit} className="flex-1 py-2 bg-primary-600 text-white rounded-xl font-black text-xs hover:bg-primary-700 transition-all active:scale-95 flex items-center justify-center space-x-1">
                        <Save size={14} /><span>Simpan</span>
                      </button>
                    </div>
                  </motion.div>
                ) : (
                  // ── USER ROW ──────────────────────────────
                  <div className="flex items-center px-3 py-3 bg-slate-50 hover:bg-slate-100 rounded-2xl transition-colors group">
                    <div className="w-9 h-9 rounded-xl flex items-center justify-center text-white text-xs font-black mr-3 shrink-0"
                      style={{ background: AVATAR_COLORS[u.role] || '#6366f1' }}>
                      {(u.full_name || u.username || 'U').split(' ').map(w=>w[0]).slice(0,2).join('')}
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-sm font-black text-slate-800 truncate">{u.full_name || u.username}</p>
                      <div className="flex items-center gap-2 mt-0.5">
                        <span className={`text-[9px] font-black px-2 py-0.5 rounded-lg uppercase ${ROLE_COLORS[u.role] || 'bg-slate-100 text-slate-500'}`}>
                          {u.role === 'teacher' ? 'Guru' : 
                           u.role === 'librarian' ? 'Pustakawan' : 
                           u.role === 'masyarakat' ? 'Umum' : 
                           `Kls ${u.grade || u.grade_level || '-'}`}
                        </span>
                        <span className="text-[10px] text-slate-400 font-mono truncate">{u.username}</span>
                      </div>
                    </div>
                    <button
                      onClick={() => startEdit(u)}
                      className="opacity-0 group-hover:opacity-100 p-2 text-slate-400 hover:text-blue-500 transition-all ml-1 shrink-0"
                      title="Edit">
                      <Edit2 size={16} />
                    </button>
                    <button
                      onClick={() => handleDeleteUser(u)}
                      className="opacity-0 group-hover:opacity-100 p-2 text-slate-400 hover:text-red-500 transition-all shrink-0"
                      title="Hapus">
                      <Trash2 size={16} />
                    </button>
                  </div>
                )}
              </div>
            ))
          )}
          {filtered.length === 0 && !loading && (
            <p className="text-center text-slate-400 py-8 font-medium text-sm">Tidak ada anggota ditemukan.</p>
          )}
        </div>

        <button onClick={onClose}
          className="mt-5 w-full py-3 bg-slate-800 text-white rounded-2xl font-black text-sm hover:bg-black transition-colors">
          Tutup
        </button>
      </motion.div>
    </div>
  )
}

// ── LIBRARIAN PANEL UTAMA ─────────────────────────────────
const LibrarianPanel = ({ categories = [], schoolIdentity, setSchoolIdentity, books, setBooks, refreshBooks, refreshCategories, stats }) => {
  const [activeView, setActiveView] = useState('inventory')
  const [showModalBuku, setShowModalBuku] = useState(false)
  const [showModalAnggota, setShowModalAnggota] = useState(false)
  const [showModalKategori, setShowModalKategori] = useState(false)
  const [showModalEditBuku, setShowModalEditBuku] = useState(false)
  const [editingBook, setEditingBook] = useState(null)
  const [filterCat, setFilterCat] = useState('Semua')
  const [searchBook, setSearchBook] = useState('')
  const [toast, setToast] = useState(null)
  const [identityForm, setIdentityForm] = useState(schoolIdentity || { name: '', department: '', logo: '' })

  React.useEffect(() => {
    if (schoolIdentity) setIdentityForm(schoolIdentity)
  }, [schoolIdentity])

  const [smtpForm, setSmtpForm] = useState(() => {
    return safeParseStorage('epus_smtp', { host: 'smtp.gmail.com', port: '465', user: '', pass: '', sender: 'Notifikasi Perpustakaan' })
  })


  const [emailTemplate, setEmailTemplate] = useState(() => {
    return localStorage.getItem('epus_email_template') || 'Halo {{name}}, Buku "{{title}}" telah berhasil masuk ke daftar bacaan Anda. Selamat membaca!'
  })


  const showToast = (msg, type = 'success') => {
    setToast({ msg, type })
    setTimeout(() => setToast(null), 3000)
  }

  const handleSaveBuku = async (newBook) => {
    // Tampilkan loading toast
    showToast('Menyimpan buku ke database...', 'info')
    
    // Insert ke supabase
    const { error } = await supabase.from('books').insert([newBook])
    
    if (error) {
      showToast(`❌ Gagal menyimpan: ${error.message}`, 'error')
    } else {
      showToast(`✅ Buku "${newBook.title}" berhasil ditambahkan!`, 'success')
      if (refreshBooks) refreshBooks() // trigger refetch
    }
  }

  const handleSaveEditBuku = async (updatedBook) => {
    showToast('Menyimpan perubahan...', 'info')
    const selectedCat = categories.find(c => c.name === updatedBook.category)
    
    try {
      const { error } = await supabase.from('books').update({
        title: updatedBook.title,
        author: updatedBook.author,
        requires_approval: !!updatedBook.requires_approval,
        category_id: selectedCat ? selectedCat.id : null,
        description: updatedBook.description
      }).eq('id', updatedBook.id)
      
      if (error) {
        showToast(`❌ Gagal mengubah buku: ${error.message}. (Apabila kolom requires_approval tidak ada, tambahkan kolom tsb di Supabase)`, 'error')
      } else {
        showToast(`✅ Buku "${updatedBook.title}" berhasil diperbarui!`, 'success')
        if (refreshBooks) refreshBooks()
        setShowModalEditBuku(false)
        setEditingBook(null)
      }
    } catch (e) {
      showToast(`❌ Kesalahan koneksi jaringan.`, 'error')
    }
  }

  // ✅ TOMBOL HAPUS BUKU — FUNGSIONAL SUPABASE
  const handleDeleteBook = async (id, title) => {
    if (window.confirm(`Hapus buku "${title}" dari daftar inventaris?`)) {
      const { error } = await supabase.from('books').delete().eq('id', id)
      if (error) {
         showToast(`❌ Gagal menghapus: ${error.message}`, 'error')
      } else {
         showToast(`🗑️ Buku "${title}" dihapus.`, 'error')
         if (refreshBooks) refreshBooks()
      }
    }
  }

  const filteredInventory = books.filter(b => {
    const matchCat = filterCat === 'Semua' || b.category === filterCat
    const matchSearch = b.title.toLowerCase().includes(searchBook.toLowerCase()) ||
                        b.author.toLowerCase().includes(searchBook.toLowerCase())
    return matchCat && matchSearch
  })

  const [totalUsers, setTotalUsers] = useState(USERS_DATA.length)

  useEffect(() => {
    const fetchTotal = async () => {
      const { data: profiles } = await supabase.from('profiles').select('id')
      const { data: requests } = await supabase.from('user_requests').select('id').eq('status', 'approved')
      
      const dbU = profiles ? profiles.length : 0
      const dbR = requests ? requests.length : 0
      setTotalUsers(USERS_DATA.length + dbU + dbR)
    }
    fetchTotal()
  }, [])

  return (
    <div className="min-h-screen bg-slate-50 p-6 pt-12 pb-32">
      {/* Toast */}
      <AnimatePresence>
        {toast && <Toast msg={toast.msg} type={toast.type} onClose={() => setToast(null)} />}
      </AnimatePresence>

      {/* Modals */}
      <AnimatePresence>
        {showModalBuku && <ModalTambahBuku onClose={() => setShowModalBuku(false)} onSave={handleSaveBuku} categories={categories} />}
        {showModalAnggota && <ModalAnggota onClose={() => setShowModalAnggota(false)} />}
        {showModalKategori && <ModalKelolaKategori onClose={() => setShowModalKategori(false)} categories={categories} refreshCategories={refreshCategories} />}
        {showModalEditBuku && editingBook && <ModalEditBuku book={editingBook} onClose={() => {setShowModalEditBuku(false); setEditingBook(null)}} onSave={handleSaveEditBuku} categories={categories} />}
      </AnimatePresence>

      <header className="mb-8">
        <h1 className="text-3xl font-black text-slate-800 tracking-tight">Panel Pustakawan</h1>
        <p className="text-slate-400 text-sm font-medium mt-1">Kelola koleksi dan data perpustakaan</p>
      </header>

      {/* Quick Actions */}
      <div className="grid grid-cols-2 gap-4 mb-8">
        <button onClick={() => setShowModalBuku(true)}
          className="bg-white p-5 rounded-3xl shadow-sm text-left group hover:bg-primary-600 transition-all active:scale-95 border border-slate-100">
          <div className="bg-primary-100 p-2 w-10 h-10 rounded-xl flex items-center justify-center mb-3 group-hover:bg-white/20">
            <Plus className="text-primary-600 group-hover:text-white" size={20} />
          </div>
          <p className="text-xs font-black text-slate-400 group-hover:text-primary-100 uppercase tracking-wider">Input</p>
          <p className="text-sm font-black text-slate-800 group-hover:text-white">Buku Baru</p>
        </button>
        <button onClick={() => setShowModalAnggota(true)}
          className="bg-white p-5 rounded-3xl shadow-sm text-left group hover:bg-emerald-600 transition-all active:scale-95 border border-slate-100">
          <div className="bg-emerald-100 p-2 w-10 h-10 rounded-xl flex items-center justify-center mb-3 group-hover:bg-white/20">
            <Users className="text-emerald-600 group-hover:text-white" size={20} />
          </div>
          <p className="text-xs font-black text-slate-400 group-hover:text-emerald-100 uppercase tracking-wider">Kelola</p>
          <p className="text-sm font-black text-slate-800 group-hover:text-white">Anggota ({totalUsers})</p>
        </button>
        <button onClick={() => setShowModalKategori(true)}
          className="bg-white p-5 rounded-3xl shadow-sm text-left group hover:bg-amber-600 transition-all active:scale-95 border border-slate-100">
          <div className="bg-amber-100 p-2 w-10 h-10 rounded-xl flex items-center justify-center mb-3 group-hover:bg-white/20">
            <Shield className="text-amber-600 group-hover:text-white" size={20} />
          </div>
          <p className="text-xs font-black text-slate-400 group-hover:text-amber-100 uppercase tracking-wider">Kelola</p>
          <p className="text-sm font-black text-slate-800 group-hover:text-white">Kategori ({categories.length})</p>
        </button>
      </div>

      {/* Tabs */}
      <div className="flex bg-white/70 p-1 rounded-2xl mb-6 shadow-inner border border-slate-100">
        {[['inventory','📖 Inventaris'],['stats','📊 Laporan'],['settings','⚙️ Pengaturan']].map(([id,label]) => (
          <button key={id} onClick={() => setActiveView(id)}
            className={`flex-1 py-3 rounded-xl transition-all text-xs font-black ${activeView === id ? 'bg-white shadow text-primary-600' : 'text-slate-400 hover:text-slate-600'}`}>
            {label}
          </button>
        ))}
      </div>

      {/* ── INVENTORY ── */}
      {activeView === 'inventory' && (
        <div className="space-y-4">
          {/* Filter & Search */}
          <div className="bg-white p-4 rounded-3xl border border-slate-100 shadow-sm space-y-3">
            <div className="relative">
              <Search size={16} className="absolute left-4 top-1/2 -translate-y-1/2 text-slate-400" />
              <input type="text" placeholder="Cari judul atau pengarang..." value={searchBook}
                onChange={e => setSearchBook(e.target.value)}
                className="w-full bg-slate-50 rounded-2xl pl-10 pr-4 py-3 text-sm font-medium outline-none focus:ring-2 focus:ring-primary-500 border-none" />
            </div>
            <div className="flex gap-2 overflow-x-auto hide-scrollbar">
              {['Semua', ...categories.map(c => c.name)].map(c => (
                <button key={c} onClick={() => setFilterCat(c)}
                  className={`px-4 py-2 rounded-xl text-[10px] font-black uppercase tracking-widest whitespace-nowrap transition-all ${filterCat===c ? 'bg-primary-600 text-white shadow' : 'bg-slate-100 text-slate-500 hover:bg-slate-200'}`}>
                  {c}
                </button>
              ))}
            </div>
          </div>

          <div className="flex justify-between items-center text-xs text-slate-400 font-black uppercase tracking-widest px-2">
            <span>Menampilkan {filteredInventory.length} dari {books.length} buku</span>
          </div>

          {filteredInventory.map((book, i) => (
            <motion.div key={book.id} initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.025 }}
              className="bg-white p-4 rounded-3xl flex items-center justify-between shadow-sm border border-slate-100 group">
              <div className="flex items-center space-x-4 flex-1 min-w-0">
                <img src={getBookCover(book.title, book.isbn)} alt={book.title}
                  className="w-12 h-16 rounded-xl object-cover bg-slate-100 shrink-0" />
                <div className="min-w-0">
                  <h4 className="font-black text-slate-800 text-sm line-clamp-1">{book.title}</h4>
                  <p className="text-xs text-slate-400 font-medium">{book.author}</p>
                  <span className="text-[10px] bg-primary-50 text-primary-600 font-black px-2 py-0.5 rounded-lg uppercase">{book.category}</span>
                </div>
              </div>
              <div className="flex space-x-2 shrink-0 ml-3">
                {book.file_url && (
                  <button onClick={() => window.open(book.file_url, '_blank')}
                    className="p-2 text-slate-300 hover:text-primary-600 transition-colors" title="Buka Link">
                    <BookOpen size={16} />
                  </button>
                )}
                <button onClick={() => { setEditingBook(book); setShowModalEditBuku(true); }}
                  className="p-2 text-slate-300 hover:text-blue-500 transition-colors" title="Edit Buku">
                  <Edit2 size={16} />
                </button>
                <button onClick={() => { setEditingBook(book); setShowModalEditBuku(true); }}
                  className={`${book.requires_approval ? 'text-amber-500' : 'text-slate-300'} p-2 hover:text-amber-500 transition-colors`} title="Pengaturan Persetujuan">
                  <Settings size={16} />
                </button>
                {/* ✅ HAPUS BUKU — FUNGSIONAL */}
                <button
                  onClick={() => handleDeleteBook(book.id, book.title)}
                  className="p-2 text-slate-300 hover:text-red-500 transition-colors" title="Hapus Buku">
                  <Trash2 size={16} />
                </button>
              </div>
            </motion.div>
          ))}

          {filteredInventory.length === 0 && (
            <div className="text-center py-16 text-slate-300">
              <Search size={40} className="mx-auto mb-4" />
              <p className="font-bold text-sm">Tidak ada buku ditemukan</p>
            </div>
          )}
        </div>
      )}

      {/* ── LAPORAN ── */}
      {activeView === 'stats' && (
        <div className="space-y-6">
          <div className="bg-slate-800 p-6 rounded-[2.5rem] text-white shadow-xl">
            <div className="flex justify-between items-start mb-6">
              <div>
                <h4 className="font-black text-lg">Laporan Perpustakaan</h4>
                <p className="text-slate-400 text-[10px] uppercase tracking-widest font-bold">
                  {new Date().toLocaleDateString('id-ID', { month: 'long', year: 'numeric' })}
                </p>
              </div>
              <BarChart3 size={24} className="text-primary-400" />
            </div>
            <div className="grid grid-cols-2 gap-3">
              <button onClick={() => alert('Ekspor Excel membutuhkan koneksi backend.')}
                className="flex items-center justify-center bg-emerald-600 hover:bg-emerald-700 py-3 rounded-2xl font-black text-xs transition-colors active:scale-95">
                📗 Ekspor Excel
              </button>
              <button onClick={() => window.print()}
                className="flex items-center justify-center bg-red-600 hover:bg-red-700 py-3 rounded-2xl font-black text-xs transition-colors active:scale-95">
                📕 Cetak/PDF
              </button>
            </div>
          </div>
          <div className="grid grid-cols-2 gap-4">
            {[
              { label: 'Total Koleksi', value: books.length, icon: '📚' },
              { label: 'Total Anggota', value: stats?.users || 0, icon: '👥' },
              { label: 'Pinjaman Aktif', value: stats?.active || 0, icon: '📤' },
              { label: 'Terlambat', value: stats?.late || 0, icon: '⚠️' },
            ].map(s => (
              <div key={s.label} className="bg-white p-5 rounded-3xl border border-slate-100 shadow-sm text-center">
                <div className="text-2xl mb-2">{s.icon}</div>
                <p className="text-2xl font-black text-slate-800">{s.value}</p>
                <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest mt-1">{s.label}</p>
              </div>
            ))}
          </div>
          <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100">
            <h4 className="font-black text-slate-800 mb-6 text-sm">Grafik Peminjaman — 7 Hari</h4>
            <div className="h-40 flex items-end justify-between space-x-2">
              {[40, 70, 45, 90, 100, 60, 85].map((h, i) => (
                <div key={i} className="flex-1 flex flex-col items-center">
                  <motion.div initial={{ height: 0 }} animate={{ height: `${h}%` }} transition={{ delay: i * 0.1 }}
                    className={`w-full rounded-t-xl ${i === 4 ? 'bg-primary-600 shadow-lg shadow-primary-100' : 'bg-primary-100'}`} />
                  <span className="text-[10px] text-slate-400 mt-2 font-bold">{['S','S','R','K','J','S','M'][i]}</span>
                </div>
              ))}
            </div>
          </div>
        </div>
      )}

      {/* ── PENGATURAN ── */}
      {activeView === 'settings' && (
        <div className="space-y-6">
          <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100">
            <h4 className="font-black text-slate-800 mb-5 text-sm flex items-center">
              <span className="w-8 h-8 bg-blue-100 text-base rounded-xl flex items-center justify-center mr-3">🏫</span>
              Identitas Perpustakaan
            </h4>
            <div className="space-y-4">
              <div>
                <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Nama Sekolah</label>
                <input type="text" value={identityForm.name} onChange={e => setIdentityForm(p => ({...p, name: e.target.value}))} className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium" />
              </div>
              <div>
                <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Departemen / Kementerian</label>
                <input type="text" value={identityForm.department} onChange={e => setIdentityForm(p => ({...p, department: e.target.value}))} className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium" />
              </div>
              <div>
                <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Logo Sekolah (Upload)</label>
                <div className="flex items-center space-x-4">
                  <div className="w-16 h-16 bg-slate-50 rounded-2xl flex items-center justify-center p-2 border-2 border-dashed border-slate-200 overflow-hidden shrink-0">
                    {identityForm.logo ? (
                      <img src={identityForm.logo} alt="Logo" className="w-full h-full object-contain" />
                    ) : (
                      <Camera size={20} className="text-slate-300" />
                    )}
                  </div>
                  <label className="flex-1">
                    <div className="bg-slate-100 hover:bg-slate-200 py-3 px-4 rounded-2xl text-xs font-black text-slate-600 text-center cursor-pointer transition-colors border border-slate-200">
                      PILIH FILE GAMBAR
                    </div>
                    <input 
                      type="file" 
                      accept="image/*" 
                      className="hidden" 
                      onChange={(e) => {
                        const file = e.target.files[0];
                        if (file) {
                          const reader = new FileReader();
                          reader.onloadend = () => setIdentityForm(p => ({ ...p, logo: reader.result }));
                          reader.readAsDataURL(file);
                        }
                      }} 
                    />
                  </label>
                </div>
              </div>
              <button 
                onClick={async () => { 
                  showToast('⏳ Menyimpan ke sistem...', 'info');
                  try {
                    // Update ke Supabase satu per satu atau gunakan rpc jika ada
                    await supabase.from('settings').upsert([
                      { key: 'school_name', value: identityForm.name },
                      { key: 'school_department', value: identityForm.department },
                      { key: 'school_logo', value: identityForm.logo }
                    ], { onConflict: 'key' });
                    
                    setSchoolIdentity(identityForm); 
                    showToast('✅ Pengaturan Identitas dan Logo berhasil disimpan ke sistem pusat!');
                  } catch (e) {
                    showToast('❌ Gagal menyimpan ke server, tapi tersimpan lokal.', 'error');
                    setSchoolIdentity(identityForm); 
                  }
                }}
                className="w-full bg-slate-800 text-white font-black text-sm py-4 rounded-2xl hover:bg-black transition-colors active:scale-95">
                💾 Simpan Identitas
              </button>
            </div>
          </div>

          {/* SMTP SETTINGS */}
          <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100">
            <h4 className="font-black text-slate-800 mb-5 text-sm flex items-center">
              <span className="w-8 h-8 bg-amber-100 text-base rounded-xl flex items-center justify-center mr-3">📧</span>
              Konfigurasi Email (SMTP)
            </h4>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div>
                <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">SMTP Host</label>
                <input type="text" value={smtpForm.host} onChange={e => setSmtpForm(p=>({...p, host: e.target.value}))} placeholder="smtp.domain.com" className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium" />
              </div>
              <div>
                <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Port</label>
                <input type="text" value={smtpForm.port} onChange={e => setSmtpForm(p=>({...p, port: e.target.value}))} placeholder="465" className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium" />
              </div>
              <div>
                <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Username / Email</label>
                <input type="text" value={smtpForm.user} onChange={e => setSmtpForm(p=>({...p, user: e.target.value}))} className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium" />
              </div>
              <div>
                <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Password / App Password</label>
                <input type="password" value={smtpForm.pass} onChange={e => setSmtpForm(p=>({...p, pass: e.target.value}))} className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium" />
              </div>
              <div className="md:col-span-2">
                <label className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1 block">Nama Pengirim (Sender Name)</label>
                <input type="text" value={smtpForm.sender} onChange={e => setSmtpForm(p=>({...p, sender: e.target.value}))} className="w-full bg-slate-50 border-none rounded-2xl p-3 text-sm focus:ring-2 focus:ring-primary-500 outline-none font-medium" />
              </div>
              <button 
                onClick={async () => { 
                  showToast('⏳ Menyimpan Konfigurasi SMTP...', 'info');
                  try {
                    await supabase.from('settings').upsert([
                      { key: 'email_host', value: smtpForm.host },
                      { key: 'email_port', value: smtpForm.port },
                      { key: 'email_user', value: smtpForm.user },
                      { key: 'email_password', value: smtpForm.pass },
                      { key: 'email_from_name', value: smtpForm.sender }
                    ], { onConflict: 'key' });
                    
                    setStorage('epus_smtp', smtpForm);
                    showToast('✅ Konfigurasi SMTP berhasil disimpan ke sistem!');
                  } catch (e) {
                    localStorage.setItem('epus_smtp', JSON.stringify(smtpForm));
                    showToast('⚠️ Tersimpan di browser ini saja (Gagal ke server).', 'warning');
                  }
                }}
                className="md:col-span-2 w-full bg-primary-600 text-white font-black text-sm py-4 rounded-2xl hover:bg-primary-700 transition-colors active:scale-95 shadow-lg shadow-primary-100">
                💾 Simpan Konfigurasi SMTP
              </button>
            </div>
          </div>

          {/* EMAIL TEMPLATE */}
          <div className="bg-white p-6 rounded-3xl shadow-sm border border-slate-100">
            <h4 className="font-black text-slate-800 mb-5 text-sm flex items-center">
              <span className="w-8 h-8 bg-purple-100 text-base rounded-xl flex items-center justify-center mr-3">📝</span>
              Template Notifikasi Email
            </h4>
            <div className="space-y-4">
              <p className="text-[10px] text-slate-400 font-bold uppercase tracking-wider">Gunakan {"{{name}}"} dan {"{{title}}"} sebagai variabel pengganti</p>
              <textarea 
                rows={5}
                value={emailTemplate}
                onChange={e => setEmailTemplate(e.target.value)}
                className="w-full bg-slate-50 border-none rounded-2xl p-4 text-sm focus:ring-2 focus:ring-purple-500 outline-none font-medium resize-none"
              />
              <button 
                onClick={async () => { 
                  showToast('⏳ Menyimpan Template...', 'info');
                  try {
                    await supabase.from('settings').upsert([
                      { key: 'email_template', value: emailTemplate }
                    ], { onConflict: 'key' });
                    
                    setStorage('epus_email_template', emailTemplate);
                    showToast('✅ Template Email berhasil diperbarui di sistem!');
                  } catch (e) {
                    setStorage('epus_email_template', emailTemplate);
                    showToast('⚠️ Tersimpan di browser ini saja.', 'warning');
                  }

                }}
                className="w-full bg-purple-600 text-white font-black text-sm py-4 rounded-2xl hover:bg-purple-700 transition-colors active:scale-95 shadow-lg shadow-purple-100">
                💾 Simpan Template Email
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  )
}

export default LibrarianPanel
