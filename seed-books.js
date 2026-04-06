import { createClient } from '@supabase/supabase-js'
import { CATEGORIES, BOOKS_DATA } from './src/dataStore.js'

const supabaseUrl = 'https://wowpwnlnlehlwwisasor.supabase.co'
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Indvd3B3bmxubGVobHd3aXNhc29yIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0MDI1MzcsImV4cCI6MjA5MDk3ODUzN30.FWmxN4jyKn5QWd7kCcab8FYAuLwNsoAQt_jFBGPCMS8'

const supabase = createClient(supabaseUrl, supabaseAnonKey)

async function seedData() {
  console.log('Seeding Categories...')
  // Insert categories
  for (const catName of CATEGORIES) {
    if (catName !== "Semua") {
      await supabase.from('categories').insert([{ name: catName }])
    }
  }

  // Fetch categories to get their IDs
  const { data: catData } = await supabase.from('categories').select('*')
  const catMap = {}
  if (catData) {
    catData.forEach(c => catMap[c.name] = c.id)
  }

  console.log('Seeding Books...')
  const booksToInsert = BOOKS_DATA.map(book => ({
    title: book.title,
    author: book.author,
    isbn: book.isbn,
    description: book.description,
    type: book.type || 'digital',
    file_url: book.file_url,
    category_id: catMap[book.category] || null,
  }))

  const { data, error } = await supabase.from('books').insert(booksToInsert)
  if (error) {
    console.error('Error inserting books:', error.message)
  } else {
    console.log(`Successfully seeded ${booksToInsert.length} books!`)
  }

  process.exit(0)
}

seedData()
