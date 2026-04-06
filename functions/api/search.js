/**
 * API Endpoint: /api/search?q=keyword
 * Deskripsi: Mencari buku berdasarkan judul atau pengarang
 */

export async function onRequest(context) {
  const { request, env } = context;
  const { searchParams } = new URL(request.url);
  const query = searchParams.get('q');

  if (!query) {
    return new Response(JSON.stringify({ error: "Parameter pencarian 'q' tidak ditemukan" }), {
      status: 400,
      headers: { "Content-Type": "application/json" }
    });
  }

  const SUPABASE_URL = env.VITE_SUPABASE_URL;
  const SUPABASE_ANON_KEY = env.VITE_SUPABASE_ANON_KEY;

  try {
    // Gunakan teknik .ilike() Supabase via REST API
    const response = await fetch(`${SUPABASE_URL}/rest/v1/books?select=*,categories(name)&or=(title.ilike.*${query}*,author.ilike.*${query}*)`, {
      headers: {
        "apikey": SUPABASE_ANON_KEY,
        "Authorization": `Bearer ${SUPABASE_ANON_KEY}`,
        "Content-Type": "application/json"
      }
    });

    const data = await response.json();
    
    return new Response(JSON.stringify({
      success: true,
      query: query,
      count: data.length,
      data: data.map(b => ({
        id: b.id,
        title: b.title,
        author: b.author,
        category: b.categories?.name,
        cover_url: b.cover_url
      }))
    }), {
      headers: { 
        "Content-Type": "application/json",
        "Access-Control-Allow-Origin": "*"
      }
    });

  } catch (error) {
    return new Response(JSON.stringify({ error: error.message }), {
      status: 500,
      headers: { "Content-Type": "application/json" }
    });
  }
}
