import React, { useState, useEffect, useRef } from 'react'
import { motion, AnimatePresence } from 'framer-motion'
import { Bell, BookOpen, CheckCircle, AlertCircle, Info, XCircle, X, Check } from 'lucide-react'
import { fetchNotifications, markAsRead, markAllRead, countUnread } from '../utils/notifications'

const TYPE_CONFIG = {
  success:  { icon: CheckCircle,  color: 'text-emerald-500', bg: 'bg-emerald-50',  ring: 'ring-emerald-200' },
  error:    { icon: XCircle,      color: 'text-red-500',     bg: 'bg-red-50',      ring: 'ring-red-200' },
  warning:  { icon: AlertCircle,  color: 'text-amber-500',   bg: 'bg-amber-50',    ring: 'ring-amber-200' },
  approval: { icon: BookOpen,     color: 'text-purple-500',  bg: 'bg-purple-50',   ring: 'ring-purple-200' },
  info:     { icon: Info,         color: 'text-blue-500',    bg: 'bg-blue-50',     ring: 'ring-blue-200' },
}

const timeAgo = (iso) => {
  if (!iso) return ''
  const diff = (Date.now() - new Date(iso)) / 1000
  if (diff < 60)    return 'Baru saja'
  if (diff < 3600)  return `${Math.floor(diff/60)} mnt lalu`
  if (diff < 86400) return `${Math.floor(diff/3600)} jam lalu`
  return `${Math.floor(diff/86400)} hari lalu`
}

const NotificationBell = ({ user, onNavigate }) => {
  const [open, setOpen]         = useState(false)
  const [notifs, setNotifs]     = useState([])
  const [unread, setUnread]     = useState(0)
  const [loading, setLoading]   = useState(false)
  const ref                     = useRef(null)

  // LocalStorage fallback (when Supabase table not yet created)
  const loadLocal = () => {
    const local = JSON.parse(localStorage.getItem('epus_notifications') || '[]')
    setNotifs(local)
    setUnread(local.filter(n => !n.is_read).length)
  }

  const loadNotifs = async () => {
    if (!user) return
    setLoading(true)
    try {
      const data = await fetchNotifications(user.username)
      if (data.length > 0) {
        setNotifs(data)
        setUnread(data.filter(n => !n.is_read).length)
      } else {
        loadLocal()
      }
    } catch {
      loadLocal()
    }
    setLoading(false)
  }

  useEffect(() => {
    loadNotifs()
    // Poll every 30s
    const interval = setInterval(loadNotifs, 30000)
    return () => clearInterval(interval)
  }, [user])

  // Close on outside click
  useEffect(() => {
    const handler = (e) => { if (ref.current && !ref.current.contains(e.target)) setOpen(false) }
    document.addEventListener('mousedown', handler)
    return () => document.removeEventListener('mousedown', handler)
  }, [])

  const handleRead = async (n) => {
    // Mark read in Supabase
    await markAsRead(n.id)
    // Mark read locally
    setNotifs(prev => prev.map(x => x.id === n.id ? { ...x, is_read: true } : x))
    setUnread(prev => Math.max(0, prev - 1))
    // Navigate if link provided
    if (n.link && onNavigate) onNavigate(n.link)
    setOpen(false)
  }

  const handleReadAll = async () => {
    await markAllRead(user?.username)
    setNotifs(prev => prev.map(n => ({ ...n, is_read: true })))
    setUnread(0)
  }

  return (
    <div ref={ref} className="relative">
      {/* Bell Button */}
      <button
        id="notification-bell"
        onClick={() => { setOpen(!open); loadNotifs() }}
        className="relative w-10 h-10 flex items-center justify-center rounded-2xl hover:bg-white/10 transition-colors"
      >
        <Bell size={20} className="text-white" />
        <AnimatePresence>
          {unread > 0 && (
            <motion.span
              key="badge"
              initial={{ scale: 0 }} animate={{ scale: 1 }} exit={{ scale: 0 }}
              className="absolute -top-1 -right-1 w-5 h-5 bg-red-500 text-white text-[9px] font-black rounded-full flex items-center justify-center shadow-lg"
            >
              {unread > 9 ? '9+' : unread}
            </motion.span>
          )}
        </AnimatePresence>
      </button>

      {/* Dropdown */}
      <AnimatePresence>
        {open && (
          <motion.div
            initial={{ opacity: 0, y: -8, scale: 0.95 }}
            animate={{ opacity: 1, y: 0, scale: 1 }}
            exit={{ opacity: 0, y: -8, scale: 0.95 }}
            transition={{ type: 'spring', damping: 28, stiffness: 280 }}
            className="absolute right-0 top-12 w-80 bg-white rounded-[2rem] shadow-2xl border border-slate-100 z-[200] overflow-hidden"
          >
            {/* Header */}
            <div className="flex items-center justify-between px-5 py-4 border-b border-slate-100">
              <h4 className="font-black text-slate-800 text-sm">Notifikasi</h4>
              <div className="flex items-center gap-2">
                {unread > 0 && (
                  <button onClick={handleReadAll}
                    className="text-[10px] font-black text-primary-600 hover:text-primary-700 uppercase tracking-widest">
                    <Check size={12} className="inline mr-1" />Tandai Semua
                  </button>
                )}
                <button onClick={() => setOpen(false)} className="text-slate-300 hover:text-slate-500">
                  <X size={16} />
                </button>
              </div>
            </div>

            {/* List */}
            <div className="max-h-[400px] overflow-y-auto">
              {notifs.length === 0 ? (
                <div className="py-12 text-center text-slate-300 flex flex-col items-center">
                  <Bell size={32} className="mb-2" />
                  <p className="text-xs font-bold">Belum ada notifikasi</p>
                </div>
              ) : (
                notifs.map(n => {
                  const cfg = TYPE_CONFIG[n.type] || TYPE_CONFIG.info
                  const Icon = cfg.icon
                  return (
                    <button
                      key={n.id}
                      onClick={() => handleRead(n)}
                      className={`w-full flex items-start gap-3 px-5 py-4 hover:bg-slate-50 transition-colors text-left border-b border-slate-50 last:border-0 ${!n.is_read ? 'bg-blue-50/40' : ''}`}
                    >
                      <div className={`w-9 h-9 rounded-2xl ${cfg.bg} flex items-center justify-center flex-shrink-0 ring-1 ${cfg.ring}`}>
                        <Icon size={16} className={cfg.color} />
                      </div>
                      <div className="flex-1 min-w-0">
                        <p className={`text-[11px] font-black text-slate-800 leading-tight ${!n.is_read ? '' : 'opacity-70'}`}>{n.title}</p>
                        {n.message && <p className="text-[10px] text-slate-500 mt-0.5 line-clamp-2 font-medium">{n.message}</p>}
                        <p className="text-[9px] text-slate-400 mt-1 font-bold uppercase tracking-wider">{timeAgo(n.created_at)}</p>
                      </div>
                      {!n.is_read && (
                        <span className="w-2 h-2 rounded-full bg-primary-500 flex-shrink-0 mt-2" />
                      )}
                    </button>
                  )
                })
              )}
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </div>
  )
}

export default NotificationBell
