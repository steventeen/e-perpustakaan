import fs from 'fs';

const books = [
  { title: 'Experience Human Development (2021)', author: 'Diane E. Papalia', category: 'Pengembangan Diri', description: 'Buku komprehensif mengenai perkembangan manusia.' },
  { title: 'Buku Rahasia Geez', author: 'Nadhifa Allya Tsana', category: 'Fiksi', description: 'Kisah dibalik karakter Geez yang penuh makna.' },
  { title: 'Dopamine Detox', author: 'Pria Seratus Persen', category: 'Pengembangan Diri', description: 'Panduan melepaskan kecanduan stimulasi instan.' },
  { title: 'Kisah Tanah Jawa', author: 'Om Hao', category: 'Misteri', description: 'Penelusuran sejarah dan mitos mistis pulau Jawa.' },
  { title: 'Naruto Vol. 7', author: 'Masashi Kishimoto', category: 'Komik', description: 'Petualangan Naruto dalam ujian Chunin.' },
  { title: 'Delivering Happiness', author: 'Tony Hsieh', category: 'Bisnis dan Ekonomi', description: 'Sukses Zappos membangun budaya perusahaan.' },
  { title: '190 Dark Psychology', author: 'Unknown', category: 'Pengembangan Diri', description: 'Mempelajari sisi gelap psikologi manusia.' },
  { title: 'Buku KIA (Kesehatan Ibu dan Anak)', author: 'Kemenkes RI', category: 'Parenting', description: 'Panduan wajib kesehatan ibu hamil dan balita.' },
  { title: 'Pirates and Emperors', author: 'Noam Chomsky', category: 'Sains', description: 'Analisis tajam sejarah politik internasional.' },
  { title: 'Mengapa Kita Harus Shalat', author: 'Penerbit Anak', category: 'Agama', description: 'Edukasi agama menyenangkan untuk anak.' },
  { title: 'Donal AWD 2015', author: 'Disney', category: 'Komik', description: 'Petualangan lucu Donal Bebek dan keluarga.' },
  { title: '14 Marketing Plan', author: 'Marketing Expert', category: 'Lainnya', description: 'Strategi pemasaran digital bisnis modern.' }
];

let sql = "-- SQL Seed for Perpus.org collection (V3 - FINAL SCHEMA)\n";
sql += "-- Menyesuaikan dengan kolom: title, author, description, category_id, requires_approval, file_url\n\n";

books.forEach(b => {
  sql += `INSERT INTO books (title, author, category_id, description, requires_approval, file_url) \n`;
  sql += `SELECT '${b.title.replace(/'/g, "''")}', '${b.author.replace(/'/g, "''")}', id, '${b.description.replace(/'/g, "''")}', false, '#' \n`;
  sql += `FROM categories WHERE name = '${b.category}' LIMIT 1;\n\n`;
});

fs.writeFileSync('seed_perpus.sql', sql, 'utf8');
console.log("File seed_perpus.sql berhasil diperbarui dengan skema v3 (FINAL).");
