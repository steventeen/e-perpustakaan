import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

const envPath = path.resolve(process.cwd(), '.env');
const env = {};
if (fs.existsSync(envPath)) {
  fs.readFileSync(envPath, 'utf-8').split('\n').forEach(l => {
    const [k, v] = l.split('=');
    if (k && v) env[k.trim()] = v.trim().replace(/^['"]|['"]$/g, '');
  });
}

const supabase = createClient(env.VITE_SUPABASE_URL, env.VITE_SUPABASE_ANON_KEY);

async function finalSync() {
  console.log('🔄 FINAL SYNC: Restoring all 416+ books across all categories...');

  if (!fs.existsSync('ebook_collection_final.json')) {
      console.error('File not found!'); return;
  }
  const booksData = JSON.parse(fs.readFileSync('ebook_collection_final.json', 'utf-8'));
  const uniqueCategories = [...new Set(booksData.map(b => b.category))];
  
  const catIds = {};
  for (const catName of uniqueCategories) {
    let { data: cat } = await supabase.from('categories').select('id').eq('name', catName).maybeSingle();
    if (!cat) {
      const { data: nCat } = await supabase.from('categories').insert({ name: catName }).select('id').single();
      cat = nCat;
    }
    if (cat) catIds[catName] = cat.id;
  }

  await supabase.from('books').delete().eq('type', 'digital');

  const chunkSize = 100;
  for (let i = 0; i < booksData.length; i += chunkSize) {
    const chunk = booksData.slice(i, i + chunkSize).map(b => ({
      title: String(b.title || 'Untitled').substring(0, 250),
      author: String(b.author || 'Various').substring(0, 95),
      isbn: String(b.isbn || '').substring(0, 18) || null,
      description: String(b.description || '').substring(0, 1000),
      category_id: catIds[b.category] || null,
      type: 'digital',
      file_url: b.source_url,
      cover_url: b.cover_url || null,
      stock: 999
    }));

    const { error } = await supabase.from('books').insert(chunk);
    if (error) console.error('Chunk insert error:', error.message);
  }

  console.log('✨ RESTORATION COMPLETE! Total books in library: ' + booksData.length);
}

finalSync();
