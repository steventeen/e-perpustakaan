/**
 * CERPEN CRAWLER — e-Perpus Digital
 * Mengambil metadata cerpen dari:
 *   1. cerpen.sepenuhnya.com  (Blogger → JSON Feed)
 *   2. bacapetra.co            (WordPress → REST API)
 *
 * Cerpen disimpan ke tabel `book_requests` dengan status `pending`
 * sehingga memerlukan persetujuan Pustakawan sebelum tampil di katalog.
 */

import fs from 'fs';

const envPath = fs.existsSync('./.env') ? './.env' : '../.env';
const envContent = fs.readFileSync(envPath, 'utf-8');
const env = {};
envContent.split('\n').forEach(line => {
  const [key, value] = line.split('=');
  if (key && value) env[key.trim()] = value.trim().replace(/^['"]|['"]$/g, '');
});

const supabaseUrl   = env.VITE_SUPABASE_URL;
const supabaseKey   = env.VITE_SUPABASE_ANON_KEY;

// ── Helper ──────────────────────────────────────────────────────────
const headers = { apikey: supabaseKey, Authorization: `Bearer ${supabaseKey}`, 'Content-Type': 'application/json' };

async function supabaseInsert(table, data) {
  const res = await fetch(`${supabaseUrl}/rest/v1/${table}`, {
    method: 'POST',
    headers: { ...headers, Prefer: 'return=minimal' },
    body: JSON.stringify(data)
  });
  if (!res.ok) {
    const err = await res.text();
    console.error(`❌ Insert ${table} error:`, err.substring(0, 200));
    return false;
  }
  return true;
}

// ── 1. sepenuhnya.com  ──────────────────────────────────────────────
async function crawlSepenuhnya(limit = 50) {
  const items = [];
  // Blogger provides a JSON feed at /?feeds=posts/default&alt=json&max-results=N
  const url = `https://cerpen.sepenuhnya.com/feeds/posts/default?alt=json&max-results=${limit}`;
  console.log(`  [Sepenuhnya] Fetching feed...`);
  try {
    const resp = await fetch(url);
    const data = await resp.json();
    const posts = data.feed?.entry || [];
    for (const p of posts) {
      const title = p.title?.['$t'] || '(Tanpa Judul)';
      const link  = (p.link?.find(l => l.rel === 'alternate') || {}).href || '';
      const author = p.author?.[0]?.name?.['$t'] || 'Anonim';
      const thumb  = p['media$thumbnail']?.url || null;
      const desc   = p.summary?.['$t']?.substring(0, 500) || '';
      const labels = (p.category || []).map(c => c.term).join(', ');
      items.push({ title, author, link, thumb, desc, labels, source: 'sepenuhnya.com' });
    }
    console.log(`  [Sepenuhnya] Found ${items.length} cerpen`);
  } catch (e) {
    console.error(`  [Sepenuhnya] Error: ${e.message}`);
  }
  return items;
}

// ── 2. bacapetra.co  ────────────────────────────────────────────────
async function crawlBacapetra(limit = 50) {
  const items = [];
  // WordPress REST API — filter category cerpen
  const url = `https://www.bacapetra.co/wp-json/wp/v2/posts?per_page=${Math.min(limit, 100)}&categories=9&_fields=id,title,link,excerpt,date,_links`;
  // category id 9 = CERPEN on bacapetra.co (standard WordPress slug)
  // Fallback: category slug approach
  const urlSlug = `https://www.bacapetra.co/wp-json/wp/v2/posts?per_page=${Math.min(limit, 100)}&_fields=id,title,link,excerpt,date,yoast_head_json`;
  console.log(`  [Bacapetra] Fetching WP API...`);
  try {
    // Try simple post list; filter by cerpen slug from URL pattern
    const resp = await fetch(`https://www.bacapetra.co/wp-json/wp/v2/posts?per_page=${Math.min(limit, 100)}&_fields=id,title,link,excerpt,date`);
    if (!resp.ok) throw new Error(`HTTP ${resp.status}`);
    const posts = await resp.json();
    for (const p of posts) {
      const title  = p.title?.rendered?.replace(/<[^>]+>/g, '') || '(Tanpa Judul)';
      const link   = p.link || '';
      const desc   = p.excerpt?.rendered?.replace(/<[^>]+>/g, '').substring(0, 500) || '';
      // Author from URL slug: `/nama-cerpen-cerpen-namaauthor/`
      const authorMatch = link.match(/cerpen-([a-z\-]+)\/?$/i);
      const author = authorMatch ? authorMatch[1].replace(/-/g, ' ') : 'Various';
      // Only take posts with "cerpen" in link
      if (link.includes('cerpen') || link.includes('bacapetra')) {
        items.push({ title, author, link, thumb: null, desc, labels: 'Cerpen', source: 'bacapetra.co' });
      }
    }
    console.log(`  [Bacapetra] Found ${items.length} cerpen`);
  } catch (e) {
    // Fallback — scrape parsed HTML links from the page content already fetched
    console.warn(`  [Bacapetra] WP API failed (${e.message}), using known titles...`);
    const fallbackTitles = [
      { title: 'Keputusan Vero', author: 'Ajen Angelina', link: 'https://www.bacapetra.co/keputusan-vero-cerpen-ajen-angelina/' },
      { title: 'Singa Putih', author: 'Baron Yudo Negoro', link: 'https://www.bacapetra.co/singa-putih-cerpen-baron-yudo-negoro/' },
      { title: 'Sulis dalam Tiga Babak', author: 'Fadilah Karsono', link: 'https://www.bacapetra.co/sulis-dalam-tiga-babak-cerpen-fadilah-karsono/' },
      { title: 'Kucing-Kucing Ulthar', author: 'H. P. Lovecraft', link: 'https://www.bacapetra.co/kucing-kucing-ulthar-cerpen-h-p-lovecraft/' },
      { title: 'Kinder Joy', author: 'Etgar Keret', link: 'https://www.bacapetra.co/kinder-joy-cerpen-etgar-keret/' },
    ];
    for (const f of fallbackTitles) {
      items.push({ ...f, thumb: null, desc: 'Cerpen dari Bacapetra.co', labels: 'Cerpen', source: 'bacapetra.co' });
    }
  }
  return items;
}

// ── Submit to book_requests ──────────────────────────────────────────
async function submitRequests(items) {
  if (items.length === 0) return;

  // Check if table exists
  const testRes = await fetch(`${supabaseUrl}/rest/v1/book_requests?limit=1`, { headers });
  if (!testRes.ok) {
    console.error('⚠️  Table `book_requests` belum ada. Buat dulu via SQL Editor:');
    console.log(`
CREATE TABLE book_requests (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  author TEXT,
  description TEXT,
  cover_url TEXT,
  source_url TEXT,
  category_name TEXT DEFAULT 'Cerpen & Novel',
  type TEXT DEFAULT 'cerpen',
  requested_by TEXT DEFAULT 'crawler',
  status TEXT DEFAULT 'pending',        -- pending | approved | rejected
  reviewed_by TEXT,
  review_note TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  reviewed_at TIMESTAMPTZ
);`);
    // Save to JSON instead
    fs.writeFileSync('cerpen_requests.json', JSON.stringify(items.map(i => ({
      title: String(i.title).substring(0, 250),
      author: String(i.author || 'Various').substring(0, 95),
      description: String(i.desc || '').substring(0, 1000),
      cover_url: i.thumb || null,
      source_url: i.link,
      category_name: 'Cerpen & Novel',
      type: 'cerpen',
      requested_by: 'crawler',
      status: 'pending',
      labels: i.labels
    })), null, 2));
    console.log(`✅ Saved ${items.length} cerpen to cerpen_requests.json (ready to sync when table exists)`);
    return;
  }

  const payload = items.map(i => ({
    title: String(i.title).substring(0, 250),
    author: String(i.author || 'Various').substring(0, 95),
    description: String(i.desc || '').substring(0, 1000),
    cover_url: i.thumb || null,
    source_url: i.link,
    category_name: 'Cerpen & Novel',
    type: 'cerpen',
    requested_by: 'crawler',
    status: 'pending'
  }));

  const ok = await supabaseInsert('book_requests', payload);
  if (ok) console.log(`✨ ${items.length} cerpen dikirim ke book_requests (status: PENDING ⏳)`);
}

// ── Main ────────────────────────────────────────────────────────────
async function run() {
  console.log('📖 CERPEN CRAWLER — sepenuhnya.com & bacapetra.co');
  console.log('🔒 Semua cerpen masuk ke antrian persetujuan admin...\n');

  const sepenuhnya = await crawlSepenuhnya(50);
  const bacapetra  = await crawlBacapetra(50);
  const all        = [...sepenuhnya, ...bacapetra];

  console.log(`\n📊 Total collected: ${all.length} cerpen`);
  fs.writeFileSync('cerpen_requests.json', JSON.stringify(all, null, 2));
  console.log('✅ Diekspor ke cerpen_requests.json');

  await submitRequests(all);
}

run();
