import fs from 'fs'
import path from 'path'
import { createClient } from '@supabase/supabase-js'

// Credentials from test-db.js
const supabaseUrl = 'https://wowpwnlnlehlwwisasor.supabase.co'
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Indvd3B3bmxubGVobHd3aXNhc29yIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0MDI1MzcsImV4cCI6MjA5MDk3ODUzN30.FWmxN4jyKn5QWd7kCcab8FYAuLwNsoAQt_jFBGPCMS8'

const supabase = createClient(supabaseUrl, supabaseAnonKey)

class EPerpustakaanCrawler {
    async getGutenberg(query = "children school", limit = 25) {
        console.log("📚 Mengambil dari Project Gutenberg...")
        try {
            const resp = await fetch(`https://gutendex.com/books?search=${encodeURIComponent(query)}`)
            const data = await resp.json()
            return data.results.slice(0, limit).map(b => ({
                title: b.title,
                author: b.authors[0]?.name || 'Unknown',
                isbn: '',
                category: 'Classic Literature',
                source_url: `https://www.gutenberg.org/ebooks/${b.id}`,
                source: 'gutenberg',
                description: `Subjects: ${b.subjects.slice(0, 3).join(', ')}`
            }))
        } catch (e) {
            console.error("Gagal Gutenberg:", e.message)
            return []
        }
    }

    async getOpenLibrary(query = "juvenile fiction school", limit = 25) {
        console.log("📚 Mengambil dari Open Library...")
        try {
            const resp = await fetch(`https://openlibrary.org/search.json?q=${encodeURIComponent(query)}&limit=${limit}`)
            const data = await resp.json()
            return data.docs.map(b => ({
                title: b.title,
                author: b.author_name?.[0] || 'Unknown',
                isbn: b.isbn?.[0] || '',
                category: 'Juvenile Fiction',
                source_url: `https://openlibrary.org${b.key}`,
                source: 'openlibrary',
                description: `Pub: ${b.first_publish_year || 'N/A'}`
            }))
        } catch (e) {
            console.error("Gagal OpenLibrary:", e.message)
            return []
        }
    }

    async getSIBI() {
        console.log("📚 Mengambil dari SIBI Kemdikbud (Mock)...")
        // Mock data as actual SIBI scraping is complex
        return [
            { title: 'IPA Terpadu SMP VII', author: 'Kemdikbud', isbn: '', category: 'Sains', source_url: 'https://buku.kemdikbud.go.id/katalog/IPA-Kelas-7', source: 'sibi', description: 'Kurikulum Merdeka' },
            { title: 'Matematika SMP VIII', author: 'Kemdikbud', isbn: '', category: 'Matematika', source_url: 'https://buku.kemdikbud.go.id/katalog/Matematika-Kelas-8', source: 'sibi', description: 'Kurikulum Merdeka' },
            { title: 'Bahasa Indonesia SMP IX', author: 'Kemdikbud', isbn: '', category: 'Bahasa Indonesia', source_url: 'https://buku.kemdikbud.go.id/katalog/Bahasa-Indonesia-9', source: 'sibi', description: 'Kurikulum Merdeka' }
        ]
    }

    async crawlAll() {
        const books = [
            ...(await this.getGutenberg()),
            ...(await this.getOpenLibrary()),
            ...(await this.getSIBI())
        ]
        return books
    }
}

async function main() {
    const crawler = new EPerpustakaanCrawler()
    console.log("🚀 Memulai Crawling...")
    const books = await crawler.crawlAll()
    console.log(`✅ Berhasil mengambil ${books.length} buku!`)

    // Save to JSON for backup
    fs.writeFileSync('./crawler/ebook_collection.json', JSON.stringify(books, null, 2))
    
    console.log("🛠️ Mempersiapkan kategori & Memasukkan ke Supabase...")
    
    // 1. Get Categories
    const { data: categories } = await supabase.from('categories').select('*')
    const catMap = {}
    categories.forEach(c => catMap[c.name] = c.id)

    // 2. Prepare Books
    const booksToInsert = books.map(b => {
        let categoryId = catMap[b.category]
        if (!categoryId) {
            // Default to 'Panduan & Kurikulum' (13) if unknown
            categoryId = 13
        }
        return {
            title: b.title,
            author: b.author,
            isbn: b.isbn || null,
            description: b.description,
            category_id: categoryId,
            type: 'digital',
            file_url: b.source_url,
            stock: 999
        }
    })

    // 3. Batch Insert
    console.log("⏳ Sedang memasukkan data...")
    const { error } = await supabase.from('books').insert(booksToInsert)
    
    if (error) {
        console.error("❌ Gagal memasukkan ke Supabase:", error.message)
    } else {
        console.log("✨ SEMUA DATA BERHASIL DIMASUKKAN KE SUPABASE! ✨")
    }
}

main()
