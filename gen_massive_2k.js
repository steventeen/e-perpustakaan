import fs from 'fs';

// Fungsi untuk membersihkan slug menjadi judul yang cantik
function cleanTitle(slug) {
  if (!slug) return 'Buku Tanpa Judul';
  return slug
    .split('-')
    .map(word => {
       if (!word) return '';
       return word.charAt(0).toUpperCase() + word.slice(1);
    })
    .join(' ')
    .replace(/\+/g, ' ')
    .trim();
}

// Pemetaan slug kategori ke Nama Tampilan User
const categoryMap = {
  'pengembangan-diri': 'Pengembangan Diri',
  'bisnis-dan-ekonomi': 'Bisnis dan Ekonomi',
  'agama': 'Agama',
  'komik': 'Komik',
  'fiksi': 'Fiksi',
  'misteri': 'Misteri',
  'parenting': 'Parenting',
  'digital-marketing': 'Digital Marketing',
  'sains': 'Sains',
  'hobi': 'Hobi',
  'kisah-inspiratif': 'Kisah Inspiratif',
  'bumil': 'Bumil (Ibu Hamil)',
  'kedokteran': 'Kedokteran',
  'kesehatan': 'Kesehatan',
  'resep': 'Resep (Daftar Masakan)',
  'gaya-hidup': 'Gaya Hidup',
  'biografi': 'Biografi',
  'sastra': 'Sastra',
  'pendidikan': 'Pendidikan',
  'sd': 'SD',
  'smp': 'SMP',
  'sma': 'SMA',
  'tekbook': 'Textbook',
  'ensiklopedia': 'Ensiklopedia',
  'sosial-dan-psikologi': 'Sosial & Psikologi',
  'motivasi': 'Motivasi',
  'teknologi': 'Teknologi',
  'romansa': 'Romansa',
  'horor': 'Horor',
  'komedi': 'Komedi',
  'dongeng-dan-fabel': 'Dongeng & Fabel',
  'seni-dan-desain': 'Seni & Desain',
  'fisik-sejarah': 'Fisik Sejarah',
  'sejarah-dunia': 'Sejarah Dunia',
  'lainnya': 'Lainnya'
};

// PERBAIKAN PATH: Pastikan path benar
const sitemapPath = 'C:\\Users\\KOMINFO26\\.gemini\\antigravity\\brain\\72d3e8fb-bb30-4b39-af42-18dd502663af\\.system_generated\\steps\\830\\content.md';
const content = fs.readFileSync(sitemapPath, 'utf8');

// Regex untuk mengambil URL buku
const urlRegex = /<loc>https:\/\/www\.perpus\.org\/([^/]+)\/([^<]+)<\/loc>/g;
let match;
const books = [];
const categoriesFound = new Set();

while ((match = urlRegex.exec(content)) !== null) {
  const catSlug = match[1];
  const bookSlug = match[2];
  
  if (categoryMap[catSlug]) {
    const title = cleanTitle(bookSlug);
    const category = categoryMap[catSlug];
    categoriesFound.add(category);
    
    books.push({
      title,
      author: 'Penulis Perpus.org',
      category,
      description: `Koleksi buku digital kategori ${category} dari perpus.org.`,
      requires_approval: false,
      file_url: `https://www.perpus.org/${catSlug}/${bookSlug}` 
    });
  }
}

// Tambahkan beberapa kategori manual yang diminta user jika tidak ada di slug
const manualCategories = [
  'Ensiklopedia', 'Textbook', 'SD', 'SMP', 'SMA', 
  'Kepemimpinan & Manajemen Tim', 'Pria Seratus Persen', 
  'Fiksi Petualangan', 'Kerajinan Tangan', 'Fashion'
];
manualCategories.forEach(c => categoriesFound.add(c));

console.log(`Berhasil mengekstrak ${books.length} buku unik.`);

let sql = "-- SQL SEED RAKSASA (2.000+ BOOKS)\n";
sql += "-- Generated based on perpus.org sitemap\n\n";

sql += "-- 1. DAFTARKAN KATEGORI\n";
Array.from(categoriesFound).forEach(cat => {
  sql += `INSERT INTO categories (name) SELECT '${cat}' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = '${cat}');\n`;
});

sql += "\n-- 2. INSERT BUKU (BATCHED)\n";
// Ambil maksimal sesuai permintaan user (2000-an)
const finalBooks = books.slice(0, 2000);

finalBooks.forEach((b, index) => {
  sql += `INSERT INTO books (title, author, category_id, description, requires_approval, file_url) \n`;
  sql += `SELECT '${b.title.replace(/'/g, "''")}', '${b.author.replace(/'/g, "''")}', id, '${b.description.replace(/'/g, "''")}', false, '${b.file_url}' \n`;
  sql += `FROM categories WHERE name = '${b.category}' LIMIT 1;\n\n`;
  
  if (index % 500 === 0) console.log(`Memproses buku ke-${index}...`);
});

fs.writeFileSync('seed_perpus_2000.sql', sql, 'utf8');
console.log("\nSUKSES! Berkas seed_perpus_2000.sql telah dibuat.");
console.log(`Total yang dimasukkan: ${finalBooks.length} buku.`);
