import { createClient } from '@supabase/supabase-js'

const supabaseUrl = 'https://wowpwnlnlehlwwisasor.supabase.co'
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Indvd3B3bmxubGVobHd3aXNhc29yIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0MDI1MzcsImV4cCI6MjA5MDk3ODUzN30.FWmxN4jyKn5QWd7kCcab8FYAuLwNsoAQt_jFBGPCMS8'

const supabase = createClient(supabaseUrl, supabaseAnonKey)

async function testConnection() {
  console.log('Testing books table...')
  const { data, error } = await supabase.from('books').select('*').limit(1)
  if (error) {
    console.error('Error connecting to books table:', error.message)
    process.exit(1)
  } else {
    console.log('Successfully connected! Books data:', data)
    process.exit(0)
  }
}

testConnection()
