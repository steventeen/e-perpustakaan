const supabaseUrl = 'https://wowpwnlnlehlwwisasor.supabase.co'
const supabaseAnonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Indvd3B3bmxubGVobHd3aXNhc29yIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzU0MDI1MzcsImV4cCI6MjA5MDk3ODUzN30.FWmxN4jyKn5QWd7kCcab8FYAuLwNsoAQt_jFBGPCMS8'

async function main() {
    console.log("🚀 Memulai Crawling & Impor Dinamis...")
    
    // 1. Ambil kategori yang ada
    const resCat = await fetch(`${supabaseUrl}/rest/v1/categories`, { headers: { 'apikey': supabaseAnonKey } })
    const cats = await resCat.json()
    if (!cats || cats.length === 0) {
        console.error("❌ Tidak ada kategori di database. Silakan jalankan SQL Seeding dulu.")
        return
    }
    const defaultCatId = cats[0].id
    console.log(`- Menggunakan kategori default ID: ${defaultCatId} (${cats[0].name})`)

    // 2. Crawl (Simulasi subset agar cepat)
    const crawl = async (url) => {
        const r = await fetch(url)
        const d = await r.json()
        return d.results || d.docs || []
    }

    console.log("- Crawling Gutenberg...")
    const gut = await crawl(`https://gutendex.com/books?search=children`)
    
    const books = gut.slice(0, 15).map(b => ({
        title: b.title,
        author: b.authors[0]?.name || 'Unknown',
        description: `Source: Project Gutenberg. ${b.subjects.slice(0, 1).join('')}`,
        category_id: defaultCatId,
        type: 'digital',
        file_url: `https://www.gutenberg.org/ebooks/${b.id}`,
        stock: 999
    }))

    // 3. Insert
    const endpoint = `${supabaseUrl}/rest/v1/books`
    const response = await fetch(endpoint, {
        method: 'POST',
        headers: {
            'apikey': supabaseAnonKey,
            'Authorization': `Bearer ${supabaseAnonKey}`,
            'Content-Type': 'application/json',
            'Prefer': 'return=minimal'
        },
        body: JSON.stringify(books)
    })

    if (response.ok) {
        console.log(`✨ SUKSES! ${books.length} buku dimasukkan ke Supabase! ✨`)
    } else {
        const err = await response.text()
        console.error("❌ Gagal:", err)
    }
}

main()
