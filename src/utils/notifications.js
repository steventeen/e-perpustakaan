import { supabase } from '../lib/supabase'

/**
 * Kirim notifikasi ke database
 * @param {string|null} username - null = broadcast ke semua
 * @param {string} title
 * @param {string} message
 * @param {'info'|'success'|'warning'|'error'|'approval'} type
 * @param {string|null} link - deep-link dalam app
 */
export const sendNotification = async (username, title, message, type = 'info', link = null) => {
  try {
    await supabase.from('notifications').insert({
      username, title, message, type, link,
      is_read: false
    })
  } catch (e) {
    console.warn('sendNotification failed:', e.message)
  }
}

/**
 * Ambil semua notifikasi untuk user tertentu (atau broadcast)
 * @param {string} username
 */
export const fetchNotifications = async (username) => {
  const { data, error } = await supabase
    .from('notifications')
    .select('*')
    .or(`username.eq.${username},username.is.null`)
    .order('created_at', { ascending: false })
    .limit(50)
  if (error) return []
  return data || []
}

/**
 * Tandai notifikasi sebagai sudah dibaca
 */
export const markAsRead = async (id) => {
  await supabase.from('notifications').update({ is_read: true }).eq('id', id)
}

export const markAllRead = async (username) => {
  await supabase.from('notifications')
    .update({ is_read: true })
    .or(`username.eq.${username},username.is.null`)
}

/**
 * Hitung notifikasi belum dibaca
 */
export const countUnread = async (username) => {
  const { count } = await supabase
    .from('notifications')
    .select('*', { count: 'exact', head: true })
    .or(`username.eq.${username},username.is.null`)
    .eq('is_read', false)
  return count || 0
}
