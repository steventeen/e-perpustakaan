/**
 * LITERACY POINTS SYSTEM — e-Perpus Digital
 * 
 * Poin diberikan untuk aktivitas literasi. Disimpan di localStorage
 * dan di-sync ke Supabase (jika tabel tersedia).
 *
 * Aktivitas & Poin:
 *   - Login harian       : +10 pts
 *   - Membaca buku       : +25 pts
 *   - Selesai baca buku  : +50 pts
 *   - Bertanya ke AI     : +15 pts
 *   - Meminjam buku fisik: +20 pts
 */

import { safeParseStorage, setStorage } from './storage'

const POINTS_KEY = 'epus_literacy_points'

// ── Definisi level ───────────────────────────────────────
const LEVELS = [
  { min: 0,    name: 'Pemula',         emoji: '🌱', color: '#94a3b8' },
  { min: 100,  name: 'Pembaca Aktif',  emoji: '📖', color: '#22c55e' },
  { min: 300,  name: 'Kutu Buku',      emoji: '📚', color: '#3b82f6' },
  { min: 600,  name: 'Literasi Pro',   emoji: '🎓', color: '#8b5cf6' },
  { min: 1000, name: 'Book Master',    emoji: '🏆', color: '#f59e0b' },
  { min: 2000, name: 'Legenda Baca',   emoji: '👑', color: '#ef4444' },
]

export const POINT_VALUES = {
  login:      10,
  read_book:  25,
  finish_book: 50,
  ask_ai:     15,
  borrow:     20,
}

// ── Helpers ──────────────────────────────────────────────

/** Ambil data poin user dari localStorage */
export const getPointsData = (username) => {
  if (!username) return { total: 0, history: [], dailyLogin: null }
  const all = safeParseStorage(POINTS_KEY, {})

  return all[username] || { total: 0, history: [], dailyLogin: null }
}

/** Simpan data poin user ke localStorage */
const savePointsData = (username, data) => {
  const all = safeParseStorage(POINTS_KEY, {})
  all[username] = data
  setStorage(POINTS_KEY, all)
}

/** Tambahkan poin */
export const addPoints = (username, action, description = '') => {
  if (!username) return 0
  const pts = POINT_VALUES[action] || 0
  if (pts === 0) return 0

  const data = getPointsData(username)

  // Cek daily login (hanya 1x per hari)
  if (action === 'login') {
    const today = new Date().toDateString()
    if (data.dailyLogin === today) return data.total // sudah claim hari ini
    data.dailyLogin = today
  }

  data.total += pts
  data.history.push({
    action,
    points: pts,
    description: description || action,
    timestamp: new Date().toISOString(),
  })

  // Keep max 200 history entries
  if (data.history.length > 200) data.history = data.history.slice(-200)

  savePointsData(username, data)
  return data.total
}

/** Dapatkan level berdasarkan total poin */
export const getLevel = (totalPoints) => {
  let current = LEVELS[0]
  let nextLevel = LEVELS[1] || null
  for (let i = LEVELS.length - 1; i >= 0; i--) {
    if (totalPoints >= LEVELS[i].min) {
      current = LEVELS[i]
      nextLevel = LEVELS[i + 1] || null
      break
    }
  }
  const progressToNext = nextLevel
    ? ((totalPoints - current.min) / (nextLevel.min - current.min)) * 100
    : 100
  return { ...current, nextLevel, progress: Math.min(progressToNext, 100) }
}

/** Ambil leaderboard dari semua user yang pernah login */
export const getLeaderboard = () => {
  const all = safeParseStorage(POINTS_KEY, {})

  return Object.entries(all)
    .map(([username, data]) => ({
      username,
      total: data.total || 0,
      level: getLevel(data.total || 0),
    }))
    .sort((a, b) => b.total - a.total)
    .slice(0, 20)
}
