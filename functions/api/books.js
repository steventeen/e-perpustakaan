/**
 * API Endpoint: /api/books
 * Deskripsi: Mengambil daftar buku publik dari database Supabase
 */

export async function onRequest(context) {
  const { env } = context;
  
  // Ambil konfigurasi dari Environment Variables
  const SUPABASE_URL = env.VITE_SUPABASE_URL;
  const SUPABASE_ANON_KEY = env.VITE_SUPABASE_ANON_KEY;

  if (!SUPABASE_URL || !SUPABASE_ANON_KEY) {
    return new Response(JSON.stringify({ error: "Konfigurasi API tidak ditemukan" }), {
      status: 500,
      headers: { "Content-Type": "application/json" }
    });
  }

  try {
    // Penarikan data bertahap untuk menembus limit 1000 Supabase/PostgREST
    let allBooks = [];
    let from = 0;
    const step = 1000;
    let hasMore = true;

    while (hasMore) {
      const response = await fetch(`${SUPABASE_URL}/rest/v1/books?select=*,categories(name)&offset=${from}&limit=${step}&order=id.desc`, {
        headers: {
          "apikey": SUPABASE_ANON_KEY,
          "Authorization": `Bearer ${SUPABASE_ANON_KEY}`,
          "Content-Type": "application/json"
        }
      });

      const data = await response.json();
      
      if (!data || data.length === 0) {
        hasMore = false;
      } else {
        const mapped = data.map(b => ({
          id: b.id,
          title: b.title,
          author: b.author,
          category: b.categories?.name || 'Lainnya',
          cover_url: b.cover_url,
          description: b.description,
          is_available: b.is_available
        }));
        
        allBooks = [...allBooks, ...mapped];
        if (data.length < step) hasMore = false;
        from += step;
      }
    }

    return new Response(JSON.stringify({
      success: true,
      count: allBooks.length,
      data: allBooks,
      timestamp: new Date().toISOString()
    }), {
      headers: { 
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*" // Izinkan akses dari domain lain
      }
    });

  } catch (error) {
    return new Response(JSON.stringify({ error: error.message }), {
      status: 500,
      headers: { "Content-Type": "application/json" }
    });
  }
}
