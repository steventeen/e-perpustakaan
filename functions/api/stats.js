/**
 * API Endpoint: /api/stats
 * Deskripsi: Mengambil statistik perpustakaan publik
 */

export async function onRequest(context) {
  const { env } = context;
  const SUPABASE_URL = env.VITE_SUPABASE_URL;
  const SUPABASE_ANON_KEY = env.VITE_SUPABASE_ANON_KEY;

  if (!SUPABASE_URL || !SUPABASE_ANON_KEY) {
    return new Response(JSON.stringify({ error: "API tidak terkonfigurasi" }), {
      status: 500,
      headers: { "Content-Type": "application/json" }
    });
  }

  const commonHeaders = {
    "apikey": SUPABASE_ANON_KEY,
    "Authorization": `Bearer ${SUPABASE_ANON_KEY}`,
    "Content-Type": "application/json"
  };

  try {
    // Jalankan fetch secara paralel untuk efisiensi
    const [booksRes, profilesRes, borrowingsRes] = await Promise.all([
      fetch(`${SUPABASE_URL}/rest/v1/books?select=id`, { headers: commonHeaders, method: "HEAD" }),
      fetch(`${SUPABASE_URL}/rest/v1/profiles?select=id`, { headers: commonHeaders, method: "HEAD" }),
      fetch(`${SUPABASE_URL}/rest/v1/borrowings?select=status`, { headers: commonHeaders })
    ]);

    // Parse header 'Content-Range' untuk mendapatkan total jumlah (karena count: 'exact' di Supabase JS SDK)
    const booksCount = booksRes.headers.get('Content-Range')?.split('/')[1] || 0;
    const profilesCount = profilesRes.headers.get('Content-Range')?.split('/')[1] || 0;
    
    const borrowingsData = await borrowingsRes.json();
    const activeLoans = borrowingsData.filter(b => b.status === "borrowed").length;
    const lateLoans = borrowingsData.filter(b => b.status === "late").length;

    return new Response(JSON.stringify({
      success: true,
      data: {
        total_books: parseInt(booksCount),
        total_members: parseInt(profilesCount),
        active_loans: activeLoans,
        overdue_loans: lateLoans
      },
      updated_at: new Date().toISOString()
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
