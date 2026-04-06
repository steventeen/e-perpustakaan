import React, { useState } from 'react';
import { User, Lock, Activity, Shield, Edit2, LogOut, Check } from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';
import { supabase } from '../lib/supabase';
import PointsModule from '../components/PointsModule';

// ── Toast ─────────────────────────────────────────────────
const Toast = ({ msg, type, onClose }) => (
  <motion.div initial={{ y: 80, opacity: 0 }} animate={{ y: 0, opacity: 1 }} exit={{ y: 80, opacity: 0 }}
    className={`fixed bottom-24 md:bottom-8 left-1/2 -translate-x-1/2 z-50 px-8 py-4 rounded-2xl shadow-2xl flex items-center space-x-3 font-bold text-white text-sm whitespace-nowrap ${type === 'success' ? 'bg-emerald-600' : type === 'error' ? 'bg-red-500' : 'bg-slate-800'}`}>
    <span>{msg}</span>
    <button onClick={onClose} className="ml-2 hover:opacity-70 text-white">✕</button>
  </motion.div>
)

const ACITIVITY_LOGS = [
  { id: 1, type: 'ai', text: 'Bertanya pada AI: "Rekomendasi buku fiksi ilmiah terbaik?"', date: 'Hari ini, 10:30' },
  { id: 2, type: 'ai', text: 'Bertanya pada AI: "Bagaimana cara meminjam ensiklopedia?"', date: 'Kemarin, 14:15' },
  { id: 3, type: 'system', text: 'Mengganti password akun', date: '2 hari yang lalu' },
  { id: 4, type: 'books', text: 'Membaca E-Book "Laskar Pelangi"', date: '3 hari yang lalu' },
];

const Profile = ({ role, setRole, user, setUser, schoolIdentity, setActiveTab, onLogout }) => {
  const [isEditing, setIsEditing] = useState(false);
  const [isChangingPassword, setIsChangingPassword] = useState(false);
  const [toast, setToast] = useState(null)

  const showToast = (msg, type = 'success') => {
    setToast({ msg, type })
    setTimeout(() => setToast(null), 3000)
  }
  
  // Persist profile data (Name, ID, Email, Phone) in localStorage
  const [profileData, setProfileData] = useState(() => {
    const saved = localStorage.getItem('epus_users')
    const defaults = {
      name: user?.display || 'Nama Pengguna',
      indentityNumber: user?.id_num || (user?.role === 'teacher' ? '19XXXXXXXXXXX' : user?.username || '12345678'),
      email: user?.email || (user?.username ? `${user.username}@sekolah.sch.id` : ''),
      phone: user?.phone || ''
    }

    if (saved && user) {
       const parsed = JSON.parse(saved)
       const match = parsed.find(u => u.username === user.username)
       if (match) {
         return {
           name: match.display || match.full_name || defaults.name,
           indentityNumber: match.id_num || defaults.indentityNumber,
           email: match.email || defaults.email,
           phone: match.phone || defaults.phone
         }
       }
    }
    return defaults;
  });

  const [passwordData, setPasswordData] = useState({ current: '', new: '', confirm: '' });

  const handleProfileSubmit = async (e) => {
    e.preventDefault();
    if(setUser && user) {
      const uData = { 
        full_name: profileData.name,
        nip: user.role === 'teacher' ? profileData.indentityNumber : null,
        grade_level: user.role === 'student' ? user.grade_level : null,
        // (Simplified mapping to profiles table schema)
      };

      // 1. Update Supabase
      const { error } = await supabase
        .from('profiles')
        .update({ 
           full_name: profileData.name,
           nip: profileData.indentityNumber
        })
        .eq('username', user.username);

      if (error) {
        showToast("Gagal update ke database: " + error.message, "error");
      }

      // 2. Global state update
      setUser({ ...user, ...uData, display: profileData.name, id_num: profileData.indentityNumber });
      
      // 3. LocalStorage persistence
      const saved = JSON.parse(localStorage.getItem('epus_users') || '[]')
      const idx = saved.findIndex(u => u.username === user.username)
      
      const sessionUser = { 
        ...user, 
        ...uData, 
        display: profileData.name, 
        id_num: profileData.indentityNumber,
        email: profileData.email,
        phone: profileData.phone
      };

      if (idx > -1) saved[idx] = { ...saved[idx], ...sessionUser }
      else saved.push(sessionUser)
      
      localStorage.setItem('epus_users', JSON.stringify(saved))
      localStorage.setItem('epus_session_user', JSON.stringify(sessionUser))
    }
    setIsEditing(false);
    showToast("Profil berhasil diperbarui!");
  };

  const handlePasswordSubmit = (e) => {
    e.preventDefault();
    if(passwordData.new !== passwordData.confirm) {
      alert("Password baru dan konfirmasi tidak cocok!");
      return;
    }
    
    const saved = JSON.parse(localStorage.getItem('epus_users') || '[]')
    const idx = saved.findIndex(u => u.username === user.username)
    if (idx > -1) {
      saved[idx].password = passwordData.new
    } else {
      saved.push({ username: user.username, password: passwordData.new })
    }
    localStorage.setItem('epus_users', JSON.stringify(saved))

    setIsChangingPassword(false);
    setPasswordData({ current: '', new: '', confirm: '' });
    alert("Password berhasil diubah!");
  };

  return (
    <div className="bg-slate-50 min-h-screen pb-32 md:pb-8 font-['Outfit']">
      <AnimatePresence>
        {toast && <Toast msg={toast.msg} type={toast.type} onClose={() => setToast(null)} />}
      </AnimatePresence>
      {/* Header */}
      <header className="px-6 pt-10 pb-6 bg-white border-b border-slate-100 flex items-center justify-between sticky top-0 z-20 shadow-sm">
        <h1 className="text-2xl font-black text-slate-800 tracking-tight">Profil & Akun</h1>
      </header>

      <div className="px-6 mt-6 max-w-2xl mx-auto space-y-6">
        
        {/* Identitas Sekolah */}
        <div className="bg-white rounded-[2.5rem] p-6 shadow-sm border border-slate-100 flex items-center space-x-4">
          <div className="w-16 h-16 bg-slate-50 rounded-2xl flex items-center justify-center p-2 overflow-hidden shrink-0">
            {schoolIdentity?.logo ? (
              <img src={schoolIdentity.logo} alt="Logo Sekolah" className="w-full h-full object-contain" />
            ) : (
               <div className="w-10 h-10 border-2 border-slate-200 rounded-full flex items-center justify-center text-slate-400 font-bold">🏫</div>
            )}
          </div>
          <div>
            <h3 className="text-sm font-black text-slate-800 uppercase tracking-widest mb-1">E-Perpustakaan</h3>
            <p className="text-sm text-slate-600 font-bold leading-tight">{schoolIdentity?.name}</p>
          </div>
        </div>

        {/* User Card */}
        <motion.div 
          initial={{ opacity: 0, y: 10 }} animate={{ opacity: 1, y: 0 }}
          className="bg-gradient-to-br from-primary-600 to-indigo-700 rounded-[2.5rem] p-8 text-white shadow-2xl shadow-primary-200 relative overflow-hidden"
        >
          <div className="absolute top-0 right-0 w-32 h-32 bg-white/10 rounded-full -mr-16 -mt-16 blur-2xl" />
          <div className="flex items-center space-x-5 mb-8 relative z-10">
            <div className="w-20 h-20 bg-white/20 rounded-[1.5rem] flex items-center justify-center backdrop-blur-md text-3xl font-black border-2 border-white/40 shadow-xl overflow-hidden">
               {profileData.name.substring(0, 1).toUpperCase()}
            </div>
            <div>
              <h2 className="text-2xl font-black tracking-tight">{profileData.name}</h2>
              <p className="text-primary-100/80 text-[10px] font-black uppercase tracking-[0.2em] mt-1">NIS/NIP: {profileData.indentityNumber}</p>
            </div>
          </div>
          
          <div className="bg-white/10 rounded-2xl p-4 backdrop-blur-sm border border-white/10 flex justify-between items-center">
            <div>
              <p className="text-[10px] text-primary-200 uppercase tracking-[0.2em] font-black mb-1.5 opacity-70">Akses Pengguna</p>
              <div className="flex items-center space-x-2">
                <div className="w-6 h-6 bg-white/20 rounded-lg flex items-center justify-center">
                  {role === 'librarian' ? <Shield size={14} /> : <User size={14} />}
                </div>
                <span className="font-black text-sm uppercase tracking-widest">{role === 'librarian' ? 'Pustakawan' : role}</span>
              </div>
            </div>
          </div>
        </motion.div>

        {/* Edit Profile & Password */}
        <div className="bg-white rounded-[2.5rem] p-6 pt-8 shadow-sm border border-slate-100 space-y-6">
          <div className="flex items-center justify-between pb-4 border-b border-slate-100">
            <h3 className="text-[10px] font-black text-slate-400 uppercase tracking-[0.2em] flex items-center">
              <User size={14} className="mr-2 text-primary-500" />
              Kelola Informasi
            </h3>
            <button 
              onClick={() => setIsEditing(!isEditing)}
              className={`px-4 py-2 rounded-xl text-[10px] font-black uppercase tracking-widest transition-all ${isEditing ? 'bg-slate-100 text-slate-500' : 'bg-primary-600 text-white shadow-lg shadow-primary-100'}`}
            >
              {isEditing ? 'Batal' : 'Edit Profil'}
            </button>
          </div>

          {isEditing ? (
            <form onSubmit={handleProfileSubmit} className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <div className="md:col-span-2">
                <label className="block text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2">Nama Lengkap</label>
                <input 
                  type="text" 
                  value={profileData.name}
                  onChange={(e) => setProfileData({...profileData, name: e.target.value})}
                  className="w-full bg-slate-50 border-none rounded-2xl px-4 py-4 text-sm font-bold focus:ring-2 focus:ring-primary-500 outline-none" 
                  required
                />
              </div>
              <div>
                <label className="block text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2">NIS / NIP</label>
                <input 
                  type="text" 
                  value={profileData.indentityNumber}
                  onChange={(e) => setProfileData({...profileData, indentityNumber: e.target.value})}
                  className="w-full bg-slate-50 border-none rounded-2xl px-4 py-4 text-sm font-bold focus:ring-2 focus:ring-primary-500 outline-none" 
                  required
                />
              </div>
              <div>
                <label className="block text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2">Nomor WhatsApp</label>
                <input 
                  type="text" 
                  placeholder="08xxxxxxxxxx"
                  value={profileData.phone}
                  onChange={(e) => setProfileData({...profileData, phone: e.target.value})}
                  className="w-full bg-slate-50 border-none rounded-2xl px-4 py-4 text-sm font-bold focus:ring-2 focus:ring-primary-500 outline-none" 
                />
              </div>
              <div className="md:col-span-2">
                <label className="block text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2">Email Notifikasi</label>
                <input 
                  type="email" 
                  placeholder="user@email.com"
                  value={profileData.email}
                  onChange={(e) => setProfileData({...profileData, email: e.target.value})}
                  className="w-full bg-slate-50 border-none rounded-2xl px-4 py-4 text-sm font-bold focus:ring-2 focus:ring-primary-500 outline-none" 
                />
              </div>
              <button type="submit" className="md:col-span-2 w-full bg-slate-800 text-white font-black text-[10px] uppercase tracking-[0.2em] py-5 rounded-2xl shadow-xl active:scale-95 transition-all mt-2">
                Simpan Perubahan Profil
              </button>
            </form>
          ) : (
             <div className="grid grid-cols-1 md:grid-cols-2 gap-y-6 gap-x-4">
              <div className="md:col-span-2">
                <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1.5 opacity-70">Nama Lengkap</p>
                <p className="text-slate-800 font-black text-lg tracking-tight leading-tight">{profileData.name}</p>
              </div>
              <div>
                <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1.5 opacity-70">NIS / NIP</p>
                <p className="text-slate-700 font-bold">{profileData.indentityNumber}</p>
              </div>
              <div>
                <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1.5 opacity-70">WhatsApp</p>
                <p className="text-slate-700 font-bold">{profileData.phone || '-'}</p>
              </div>
              <div className="md:col-span-2">
                <p className="text-[10px] font-black text-slate-400 uppercase tracking-widest mb-1.5 opacity-70">Email Notifikasi</p>
                <p className="text-slate-700 font-bold">{profileData.email || '-'}</p>
              </div>
            </div>
          )}

          <div className="pt-6 border-t border-slate-100">
            <button 
              onClick={() => setIsChangingPassword(!isChangingPassword)}
              className="w-full flex items-center justify-between py-2 text-slate-500 hover:text-slate-800 transition-colors group"
            >
              <div className="flex items-center text-[10px] font-black uppercase tracking-widest">
                <Lock size={14} className="mr-2 text-slate-400" />
                <span>Ganti Password Akun</span>
              </div>
              <div className={`px-3 py-1 rounded-lg text-[9px] font-black uppercase tracking-widest transition-all ${isChangingPassword ? 'bg-red-50 text-red-500' : 'bg-slate-50'}`}>
                {isChangingPassword ? 'Batal' : 'Ganti'}
              </div>
            </button>

            {isChangingPassword && (
              <motion.form 
                initial={{ opacity: 0, scale: 0.95 }} animate={{ opacity: 1, scale: 1 }}
                onSubmit={handlePasswordSubmit} 
                className="space-y-4 mt-6 bg-slate-50 p-6 rounded-3xl"
              >
                <div>
                  <label className="block text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2">Password Baru</label>
                  <input 
                    type="password" 
                    value={passwordData.new}
                    onChange={(e) => setPasswordData({...passwordData, new: e.target.value})}
                    className="w-full bg-white border-2 border-slate-100 rounded-2xl px-4 py-4 text-sm font-bold outline-none focus:border-primary-500" 
                    required
                  />
                </div>
                <div>
                  <label className="block text-[10px] font-black text-slate-400 uppercase tracking-widest mb-2">Konfirmasi Password Baru</label>
                  <input 
                    type="password" 
                    value={passwordData.confirm}
                    onChange={(e) => setPasswordData({...passwordData, confirm: e.target.value})}
                    className="w-full bg-white border-2 border-slate-100 rounded-2xl px-4 py-4 text-sm font-bold outline-none focus:border-primary-500" 
                    required
                  />
                </div>
                <button type="submit" className="w-full bg-primary-600 text-white font-black text-xs uppercase tracking-[0.2em] py-5 rounded-2xl shadow-lg active:scale-95 transition-all">
                  Perbarui Password
                </button>
              </motion.form>
            )}
          </div>
        </div>

        {/* Leaderboard & Points System */}
        <div className="-mx-2 md:mx-0">
          <PointsModule user={user} />
        </div>

        {/* Quick Menu (Mobile Only) */}
        <div className="md:hidden grid grid-cols-2 gap-4 mt-6">
          <button onClick={() => setActiveTab('guide')}
            className="bg-white p-5 rounded-[2rem] border border-slate-100 shadow-sm flex flex-col items-center text-center group active:scale-95 transition-all">
            <div className="w-12 h-12 bg-indigo-50 rounded-2xl flex items-center justify-center text-indigo-600 mb-3 group-hover:bg-indigo-600 group-hover:text-white transition-colors">
              <Check size={24} />
            </div>
            <p className="text-xs font-black text-slate-800 uppercase tracking-widest">Informasi</p>
            <p className="text-[10px] font-bold text-slate-400 mt-1 uppercase">Panduan App</p>
          </button>
          <button onClick={() => onLogout()}
            className="bg-white p-5 rounded-[2rem] border border-slate-100 shadow-sm flex flex-col items-center text-center group active:scale-95 transition-all">
            <div className="w-12 h-12 bg-red-50 rounded-2xl flex items-center justify-center text-red-600 mb-3 group-hover:bg-red-600 group-hover:text-white transition-colors">
              <LogOut size={22} />
            </div>
            <p className="text-xs font-black text-slate-800 uppercase tracking-widest">Keamanan</p>
            <p className="text-[10px] font-bold text-slate-400 mt-1 uppercase">Keluar Akun</p>
          </button>
        </div>

        <p className="text-center text-slate-400 text-[10px] font-black uppercase tracking-[0.2em] pt-8">
           e-Perpus Digital v1.0.0
        </p>

      </div>
    </div>
  );
};

export default Profile;
