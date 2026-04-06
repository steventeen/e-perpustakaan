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
  { title: 'Pirates and Emperors', author: 'Noam Chomsky', category: 'Fisik Sejarah', description: 'Analisis tajam sejarah politik internasional.' },
  { title: 'Mengapa Kita Harus Shalat', author: 'Penerbit Anak', category: 'Buku Anak Anak', description: 'Edukasi agama menyenangkan untuk anak.' },
  { title: 'Donal AWD 2015', author: 'Disney', category: 'Komik', description: 'Petualangan lucu Donal Bebek dan keluarga.' },
  { title: '14 Marketing Plan', author: 'Marketing Expert', category: 'Digital Marketing', description: 'Strategi pemasaran digital bisnis modern.' }
];

let sql = "-- SQL Seed for Perpus.org collection\n";
sql += "INSERT INTO books (title, author, category, description, is_available) VALUES \n";
sql += books.map(b => `('${b.title.replace(/'/g, "''")}', '${b.author.replace(/'/g, "''")}', '${b.category}', '${b.description.replace(/'/g, "''")}', true)`).join(",\n") + ";";

fs.writeFileSync('seed_perpus.sql', sql, 'utf8');
console.log("File seed_perpus.sql berhasil dibuat (ES Module).");
