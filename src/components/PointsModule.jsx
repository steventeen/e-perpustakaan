import React, { useState, useMemo } from 'react'
import { motion } from 'framer-motion'
import { Trophy, Star, TrendingUp, Clock, BookOpen, Sparkles, Users, ChevronRight, Award } from 'lucide-react'
import { getPointsData, getLevel, getLeaderboard, POINT_VALUES } from '../utils/points'

const ACTION_LABELS = {
  login: { label: 'Login Harian', icon: '🔑', color: 'bg-blue-50 text-blue-600' },
  read_book: { label: 'Membaca Buku', icon: '📖', color: 'bg-emerald-50 text-emerald-600' },
  finish_book: { label: 'Selesai Baca', icon: '✅', color: 'bg-purple-50 text-purple-600' },
  ask_ai: { label: 'Tanya AI', icon: '🤖', color: 'bg-indigo-50 text-indigo-600' },
  borrow: { label: 'Pinjam Buku', icon: '📚', color: 'bg-amber-50 text-amber-600' },
}

const timeAgo = (iso) => {
  if (!iso) return ''
  const diff = (Date.now() - new Date(iso)) / 1000
  if (diff < 60)    return 'Baru saja'
  if (diff < 3600)  return `${Math.floor(diff/60)} mnt lalu`
  if (diff < 86400) return `${Math.floor(diff/3600)} jam lalu`
  return `${Math.floor(diff/86400)} hari lalu`
}

const PointsModule = ({ user }) => {
  const [tab, setTab] = useState('overview') // overview | history | leaderboard

  const data = useMemo(() => getPointsData(user?.username), [user])
  const level = useMemo(() => getLevel(data.total), [data.total])
  const leaderboard = useMemo(() => getLeaderboard(), [])
  const history = useMemo(() => [...(data.history || [])].reverse().slice(0, 50), [data])

  return (
    <div className="p-6 md:p-10 pb-28 space-y-6 font-['Outfit']">

      {/* ── Hero Card ── */}
      <motion.div
        initial={{ opacity: 0, y: 20 }} animate={{ opacity: 1, y: 0 }}
        className="relative overflow-hidden bg-gradient-to-br from-indigo-600 via-primary-600 to-primary-400 rounded-[3rem] p-7 text-white shadow-2xl shadow-primary-200"
      >
        <div className="absolute top-0 right-0 w-64 h-64 bg-white/10 rounded-full blur-[60px] translate-x-24 -translate-y-24" />
        <div className="absolute bottom-0 left-0 w-40 h-40 bg-indigo-900/20 rounded-full blur-[50px] -ml-20 -mb-20" />

        <div className="relative z-10 flex flex-col md:flex-row md:items-center justify-between gap-6">
          <div>
            <p className="text-primary-100 text-[10px] font-black uppercase tracking-[0.3em] mb-1 opacity-80">Literacy Points</p>
            <h2 className="text-5xl font-black tracking-tighter">
              {data.total.toLocaleString()} <span className="text-xl font-medium opacity-60">PTS</span>
            </h2>
            <div className="flex items-center gap-3 mt-4">
              <div className="flex items-center gap-2 bg-white/10 px-4 py-2 rounded-2xl backdrop-blur-md border border-white/10">
                <span className="text-lg">{level.emoji}</span>
                <span className="text-[10px] font-black uppercase tracking-widest">{level.name}</span>
              </div>
              {level.nextLevel && (
                <span className="text-[10px] font-medium opacity-60">
                  → {level.nextLevel.min - data.total} pts ke "{level.nextLevel.name}"
                </span>
              )}
            </div>

            {/* Progress bar */}
            {level.nextLevel && (
              <div className="mt-3 w-full max-w-xs">
                <div className="h-2 bg-white/20 rounded-full overflow-hidden">
                  <motion.div
                    initial={{ width: 0 }}
                    animate={{ width: `${level.progress}%` }}
                    transition={{ duration: 1, ease: 'easeOut' }}
                    className="h-full bg-white rounded-full"
                  />
                </div>
                <p className="text-[9px] font-bold opacity-50 mt-1">{Math.round(level.progress)}% menuju level berikutnya</p>
              </div>
            )}
          </div>

          <div className="hidden md:flex w-24 h-24 bg-white/10 rounded-[2rem] border border-white/10 items-center justify-center backdrop-blur-xl">
            <Trophy size={40} className="text-yellow-300" />
          </div>
        </div>
      </motion.div>

      {/* ── Cara Mendapat Poin ── */}
      <div>
        <h3 className="text-lg font-black text-slate-800 mb-3 flex items-center gap-2">
          <Star size={18} className="text-amber-500" /> Cara Mendapat Poin
        </h3>
        <div className="grid grid-cols-2 md:grid-cols-5 gap-3">
          {Object.entries(POINT_VALUES).map(([key, pts]) => {
            const a = ACTION_LABELS[key]
            return (
              <div key={key} className="bg-white rounded-2xl p-4 border border-slate-100 text-center hover:shadow-md transition-shadow">
                <span className="text-2xl">{a?.icon || '📝'}</span>
                <p className="text-[10px] font-black text-slate-600 mt-2 uppercase tracking-wider">{a?.label || key}</p>
                <p className="text-xl font-black text-primary-600 mt-1">+{pts}</p>
              </div>
            )
          })}
        </div>
      </div>

      {/* ── Tabs ── */}
      <div className="flex gap-2">
        {[['overview','📊 Ringkasan'],['history','📜 Riwayat'],['leaderboard','🏆 Peringkat']].map(([id, label]) => (
          <button key={id} onClick={() => setTab(id)}
            className={`px-5 py-2.5 rounded-xl text-[10px] font-black uppercase tracking-widest transition-all active:scale-95 ${
              tab === id ? 'bg-primary-600 text-white shadow-lg' : 'bg-slate-100 text-slate-500 hover:bg-slate-200'
            }`}>
            {label}
          </button>
        ))}
      </div>

      {/* ── TAB: Ringkasan ── */}
      {tab === 'overview' && (
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
          {[
            { label: 'Total Poin', value: data.total, icon: Award, color: 'text-primary-600 bg-primary-50' },
            { label: 'Level Saat Ini', value: level.name, icon: TrendingUp, color: 'text-indigo-600 bg-indigo-50' },
            { label: 'Total Aktivitas', value: data.history?.length || 0, icon: Clock, color: 'text-emerald-600 bg-emerald-50' },
            { label: 'Buku Dibaca', value: data.history?.filter(h => h.action === 'read_book').length || 0, icon: BookOpen, color: 'text-purple-600 bg-purple-50' },
          ].map((stat, i) => (
            <motion.div key={stat.label}
              initial={{ opacity: 0, y: 16 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.08 }}
              className="bg-white rounded-2xl p-5 border border-slate-100">
              <div className={`w-10 h-10 rounded-xl ${stat.color} flex items-center justify-center mb-3`}>
                <stat.icon size={20} />
              </div>
              <p className="text-2xl font-black text-slate-800">{typeof stat.value === 'number' ? stat.value.toLocaleString() : stat.value}</p>
              <p className="text-[10px] font-black text-slate-400 uppercase tracking-wider mt-0.5">{stat.label}</p>
            </motion.div>
          ))}
        </div>
      )}

      {/* ── TAB: Riwayat ── */}
      {tab === 'history' && (
        <div className="space-y-2">
          {history.length === 0 ? (
            <div className="text-center py-16 text-slate-300">
              <Clock size={40} className="mx-auto mb-3" />
              <p className="font-bold text-slate-400">Belum ada aktivitas</p>
              <p className="text-xs text-slate-400 mt-1">Mulai membaca buku untuk mendapatkan poin!</p>
            </div>
          ) : (
            history.map((h, i) => {
              const a = ACTION_LABELS[h.action] || {}
              return (
                <motion.div key={i}
                  initial={{ opacity: 0, x: -10 }} animate={{ opacity: 1, x: 0 }} transition={{ delay: i * 0.03 }}
                  className="flex items-center gap-3 bg-white rounded-2xl p-4 border border-slate-100">
                  <div className={`w-10 h-10 rounded-xl flex items-center justify-center flex-shrink-0 ${a.color || 'bg-slate-100 text-slate-600'}`}>
                    <span className="text-lg">{a.icon || '📝'}</span>
                  </div>
                  <div className="flex-1 min-w-0">
                    <p className="text-sm font-black text-slate-800">{a.label || h.action}</p>
                    <p className="text-[10px] text-slate-400 font-medium truncate">{h.description}</p>
                  </div>
                  <div className="text-right flex-shrink-0">
                    <p className="text-sm font-black text-emerald-600">+{h.points}</p>
                    <p className="text-[9px] text-slate-400 font-bold">{timeAgo(h.timestamp)}</p>
                  </div>
                </motion.div>
              )
            })
          )}
        </div>
      )}

      {/* ── TAB: Leaderboard ── */}
      {tab === 'leaderboard' && (
        <div className="space-y-2">
          {leaderboard.length === 0 ? (
            <div className="text-center py-16 text-slate-300">
              <Users size={40} className="mx-auto mb-3" />
              <p className="font-bold text-slate-400">Belum ada data peringkat</p>
            </div>
          ) : (
            leaderboard.map((entry, i) => {
              const isMe = entry.username === user?.username
              const medals = ['🥇', '🥈', '🥉']
              return (
                <motion.div key={entry.username}
                  initial={{ opacity: 0, y: 8 }} animate={{ opacity: 1, y: 0 }} transition={{ delay: i * 0.05 }}
                  className={`flex items-center gap-3 p-4 rounded-2xl border ${isMe ? 'bg-primary-50 border-primary-200 shadow-md' : 'bg-white border-slate-100'}`}>
                  <span className="text-2xl w-10 text-center font-black">
                    {i < 3 ? medals[i] : <span className="text-slate-400 text-sm">#{i + 1}</span>}
                  </span>
                  <div className="flex-1 min-w-0">
                    <p className={`text-sm font-black truncate ${isMe ? 'text-primary-700' : 'text-slate-800'}`}>
                      {entry.username} {isMe && <span className="text-[9px] bg-primary-200 text-primary-700 px-1.5 py-0.5 rounded-lg">ANDA</span>}
                    </p>
                    <p className="text-[10px] text-slate-400 font-bold">{entry.level.emoji} {entry.level.name}</p>
                  </div>
                  <p className={`text-lg font-black ${isMe ? 'text-primary-600' : 'text-slate-700'}`}>
                    {entry.total.toLocaleString()} <span className="text-[9px] font-bold text-slate-400">pts</span>
                  </p>
                </motion.div>
              )
            })
          )}
        </div>
      )}
    </div>
  )
}

export default PointsModule
