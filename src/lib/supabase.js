import { createClient } from '@supabase/supabase-js'

// Ambil URL dan Anon Key dari environment variables (.env.local)
// Untuk produksi di Vercel, kita masukkan di Settings -> Environment Variables
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY

// Jika url dan key belum ada, berikan warning ke konsole agar user tahu
if (!supabaseUrl || !supabaseAnonKey) {
  console.warn('Supabase URL atau Anon Key belum diset! Cek file .env.local atau di Vercel Dashboard.')
}

export const supabase = createClient(supabaseUrl || '', supabaseAnonKey || '')
