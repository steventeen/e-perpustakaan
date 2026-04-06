import fs from 'fs';

const categoriesToAdd = [
  'Komik', 'Pengembangan Diri', 'Bisnis dan Ekonomi', 'Fiksi', 'Agama', 
  'Buku Anak Anak', 'Misteri', 'Parenting', 'Digital Marketing', 
  'Sains', 'Hobi', 'Kisah Inspiratif', 'Lainnya'
];

const books = [
  // KOMIK (25+)
  { title: 'Doraemon Vol. 01', author: 'Fujiko F. Fujio', category: 'Komik', description: 'Kisah awal pertemuan Nobita dengan robot kucing masa depan.' },
  { title: 'Doraemon Vol. 02', author: 'Fujiko F. Fujio', category: 'Komik', description: 'Petualangan Nobita dengan alat-alat ajaib Doraemon.' },
  { title: 'Doraemon Vol. 03', author: 'Fujiko F. Fujio', category: 'Komik', description: 'Doraemon membantu Nobita menghadapi Giant dan Suneo.' },
  { title: 'Doraemon Vol. 05', author: 'Fujiko F. Fujio', category: 'Komik', description: 'Kisah haru dan lucu Nobita dan Doraemon.' },
  { title: 'Doraemon Vol. 07', author: 'Fujiko F. Fujio', category: 'Komik', description: 'Petualangan seru Nobita di dunia fantasi.' },
  { title: 'Doraemon Vol. 10', author: 'Fujiko F. Fujio', category: 'Komik', description: 'Kisah persahabatan sejati di masa depan.' },
  { title: 'Shin Chan Vol. 01', author: 'Yoshito Usui', category: 'Komik', description: 'Tingkah lucu dan nakal Shinnosuke Nohara.' },
  { title: 'Shin Chan Vol. 02', author: 'Yoshito Usui', category: 'Komik', description: 'Keluarga Nohara menghadapi kepolosan Shin Chan.' },
  { title: 'Kariage Kun Vol. 01', author: 'Masashi Ueda', category: 'Komik', description: 'Kisah jenaka Kariage dalam kehidupan sehari-hari.' },
  { title: 'Kariage Kun Vol. 02', author: 'Masashi Ueda', category: 'Komik', description: 'Tingkah konyol Kariage di kantor dan lingkungan.' },
  { title: 'Si Juki: Berani Beda', author: 'Faza Meonk', category: 'Komik', description: 'Komik populer Indonesia tentang karakter ikonik Si Juki.' },
  { title: 'Samurai X Vol. 01', author: 'Nobuhiro Watsuki', category: 'Komik', description: 'Awal petualangan Kenshin Himura sang Battousai.' },
  { title: 'Naruto Vol. 01', author: 'Masashi Kishimoto', category: 'Komik', description: 'Ninja nakal yang bermimpi menjadi Hokage.' },
  { title: 'Naruto Vol. 07', author: 'Masashi Kishimoto', category: 'Komik', description: 'Ujian Chunin yang penuh ketegangan.' },
  { title: 'Donal Bebek: Paman Gober dan Siberat', author: 'Disney', category: 'Komik', description: 'Gober Bebek melindungi hartanya dari gerombolan siberat.' },
  { title: 'Donal Bebek: Mencari Telur Emas', author: 'Disney', category: 'Komik', description: 'Petualangan donal bebek yang penuh tawa.' },
  { title: 'Detektif Conan Spesial Vol. 03', author: 'Gosho Aoyama', category: 'Komik', description: 'Kasus misterius yang harus dipecahkan oleh Conan.' },
  { title: 'Detektif Conan Spesial Vol. 26', author: 'Gosho Aoyama', category: 'Komik', description: 'Petualangan detektif cilik dalam mengungkap kebenaran.' },
  { title: 'Attack on Titan Vol. 01', author: 'Hajime Isayama', category: 'Komik', description: 'Umat manusia yang bertahan hidup dari serangan Titan.' },
  { title: 'Benny & Mice: Lost in Bali', author: 'Benny & Mice', category: 'Komik', description: 'Kisah lucu turis lokal saat berlibur di Bali.' },
  { title: 'Tintin: Bintang Jatuh', author: 'Herge', category: 'Komik', description: 'Petualangan wartawan muda Tintin di luar angkasa.' },
  { title: 'Doraemons Special Vol. 02', author: 'Fujiko F. Fujio', category: 'Komik', description: 'Kumpulan robot kucing dari berbagai negara.' },
  { title: 'Shin Chan: Edisi Spesial', author: 'Yoshito Usui', category: 'Komik', description: 'Koleksi petualangan paling lucu Shin Chan.' },
  { title: 'Doraemon Edisi Bahasa Indonesia 06', author: 'Fujiko F. Fujio', category: 'Komik', description: 'Edisi klasik Doraemon untuk pembaca Indonesia.' },

  // PENGEMBANGAN DIRI (20+)
  { title: 'Experience Human Development (2021)', author: 'Diane E. Papalia', category: 'Pengembangan Diri', description: 'Buku wajib mengenai fase kehidupan manusia.' },
  { title: 'Dopamine Detox', author: 'Pria Seratus Persen', category: 'Pengembangan Diri', description: 'Cara mengembalikan fokus di era digital.' },
  { title: '190 Dark Psychology', author: 'Unknown', category: 'Pengembangan Diri', description: 'Seni persuasi dan pemahaman pikiran orang lain.' },
  { title: 'Menemukan Kebahagiaan', author: 'Psychology Expert', category: 'Pengembangan Diri', description: 'Filosofi kebahagiaan dalam hidup sederhana.' },
  { title: 'Dark Psychology Secrets', author: 'Unknown', category: 'Pengembangan Diri', description: 'Rahasia manipulasi psikologis dan cara menghindarinya.' },
  { title: 'Emotional Intelligence 2.0', author: 'Travis Bradberry', category: 'Pengembangan Diri', description: 'Mengelola emosi untuk kesuksesan profesional.' },
  { title: 'The Power of Habit', author: 'Charles Duhigg', category: 'Pengembangan Diri', description: 'Pentingnya kebiasaan kecil dalam mengubah hidup.' },
  { title: 'Man Search for Meaning', author: 'Viktor Frankl', category: 'Pengembangan Diri', description: 'Menemukan makna hidup di tengah penderitaan.' },
  { title: 'Start with Why', author: 'Simon Sinek', category: 'Pengembangan Diri', description: 'Pentingnya tujuan dalam memimpin dan berkarya.' },
  { title: 'Atomic Habits', author: 'James Clear', category: 'Pengembangan Diri', description: 'Sistem kecil yang membawa hasil luar biasa.' },
  { title: 'Psychology of Money', author: 'Morgan Housel', category: 'Pengembangan Diri', description: 'Pelajaran abadi mengenai kekayaan dan kebahagiaan.' },
  { title: 'How to Win Friends', author: 'Dale Carnegie', category: 'Pengembangan Diri', description: 'Klasik komunikasi dan membangun relasi.' },
  { title: 'Subtle Art of Not Giving a F*', author: 'Mark Manson', category: 'Pengembangan Diri', description: 'Pendekatan jujur dalam menghadapi kesulitan.' },
  { title: 'Deep Work', author: 'Cal Newport', category: 'Pengembangan Diri', description: 'Aturan untuk sukses di dunia penuh distraksi.' },
  { title: 'Grit: The Power of Passion', author: 'Angela Duckworth', category: 'Pengembangan Diri', description: 'Mengapa ketekunan lebih penting dari bakat.' },
  { title: 'Daring Greatly', author: 'Brene Brown', category: 'Pengembangan Diri', description: 'Keberanian untuk menjadi rentan dan kuat.' },
  { title: 'Ego is the Enemy', author: 'Ryan Holiday', category: 'Pengembangan Diri', description: 'Mengatasi ego untuk meraih kejayaan sejati.' },
  { title: 'The Alchemist', author: 'Paulo Coelho', category: 'Pengembangan Diri', description: 'Kisah mengejar takdir dan mimpi.' },
  { title: 'Sapiens: A Brief History', author: 'Yuval Noah Harari', category: 'Pengembangan Diri', description: 'Asal usul umat manusia dan masa depan.' },
  { title: 'Mindset: New Psychology', author: 'Carol Dweck', category: 'Pengembangan Diri', description: 'Pentingnya growth mindset untuk keberhasilan.' },

  // BISNIS & EKONOMI (15+)
  { title: 'Delivering Happiness', author: 'Tony Hsieh', category: 'Bisnis dan Ekonomi', description: 'Budaya perusahaan Zappos yang inovatif.' },
  { title: 'Rich Dad Poor Dad', author: 'Robert Kiyosaki', category: 'Bisnis dan Ekonomi', description: 'Edukasi keuangan dasar untuk semua orang.' },
  { title: 'Lean Startup', author: 'Eric Ries', category: 'Bisnis dan Ekonomi', description: 'Metode inovasi cepat di era ketidakpastian.' },
  { title: 'Zero to One', author: 'Peter Thiel', category: 'Bisnis dan Ekonomi', description: 'Catatan membangun masa depan startup.' },
  { title: 'Marketing 4.0', author: 'Philip Kotler', category: 'Bisnis dan Ekonomi', description: 'Pemasaran dari tradisional ke digital.' },
  { title: 'Blue Ocean Strategy', author: 'W. Chan Kim', category: 'Bisnis dan Ekonomi', description: 'Menciptakan ruang pasar tanpa pesaing.' },
  { title: 'Good to Great', author: 'Jim Collins', category: 'Bisnis dan Ekonomi', description: 'Mengapa beberapa perusahaan sukses besar.' },
  { title: 'The E-Myth Revisited', author: 'Michael Gerber', category: 'Bisnis dan Ekonomi', description: 'Memahami kewirausahaan di level menengah.' },
  { title: 'Think and Grow Rich', author: 'Napoleon Hill', category: 'Bisnis dan Ekonomi', description: 'Dasar-dasar filosofi kekayaan dan mental.' },
  { title: 'Rework', author: 'Jason Fried', category: 'Bisnis dan Ekonomi', description: 'Cara simpel dan efektif menjalankan bisnis.' },
  { title: 'The 4-Hour Workweek', author: 'Timothy Ferriss', category: 'Bisnis dan Ekonomi', description: 'Keluar dari 9-5 dan desain gaya hidup baru.' },
  { title: 'Steve Jobs Biography', author: 'Walter Isaacson', category: 'Bisnis dan Ekonomi', description: 'Kisah hidup sang visioner Apple.' },
  { title: 'Influence: Psychology of Persuasion', author: 'Robert Cialdini', category: 'Bisnis dan Ekonomi', description: 'Sains dibalik mengapa orang berkata ya.' },
  { title: 'Building a StoryBrand', author: 'Donald Miller', category: 'Bisnis dan Ekonomi', description: 'Klarifikasi pesan bisnis dengan storytelling.' },
  { title: 'Measure What Matters', author: 'John Doerr', category: 'Bisnis dan Ekonomi', description: 'Implementasi OKR untuk performa tim tinggi.' },

  // FIKSI & MISTERI (20+)
  { title: 'Buku Rahasia Geez', author: 'Tsana', category: 'Fiksi', description: 'Rahasia karakter paling dicintai.' },
  { title: 'Kisah Tanah Jawa: Jagat Lelembut', author: 'Om Hao', category: 'Misteri', description: 'Eksplorasi dunia astral pulau Jawa.' },
  { title: 'Sherlock Holmes: A Study in Scarlet', author: 'Arthur Conan Doyle', category: 'Misteri', description: 'Kasus pertama Holmes dan Watson.' },
  { title: 'Negeri 5 Menara', author: 'A. Fuadi', category: 'Fiksi', description: 'Perjuangan santri mengejar mimpi di seluruh dunia.' },
  { title: 'Laskar Pelangi', author: 'Andrea Hirata', category: 'Fiksi', description: 'Kisah inspiratif anak-anak Belitong.' },
  { title: 'Bumi Manusia', author: 'Pramoedya Ananta Toer', category: 'Fiksi', description: 'Mahakarya sastra Indonesia tentang kebangkitan.' },
  { title: 'Pulang', author: 'Leila S. Chudori', category: 'Fiksi', description: 'Kisah eksil politik Indonesia di Paris.' },
  { title: 'Cantik Itu Luka', author: 'Eka Kurniawan', category: 'Fiksi', description: 'Realisme magis sejarah panjang Indonesia.' },
  { title: 'Perahu Kertas', author: 'Dee Lestari', category: 'Fiksi', description: 'Kisah cinta dan pencarian jati diri remaja.' },
  { title: 'Supernova: Ksatria Puteri', author: 'Dee Lestari', category: 'Fiksi', description: 'Sastra modern berbalut sains dan mitos.' },
  { title: 'Hujan', author: 'Tere Liye', category: 'Fiksi', description: 'Kisah persahabatan di dunia masa depan.' },
  { title: 'Pulang-Pergi', author: 'Tere Liye', category: 'Fiksi', description: 'Petualangan aksi dan drama keluarga Bujang.' },
  { title: 'Gadis Kretek', author: 'Ratih Kumala', category: 'Fiksi', description: 'Sejarah panjang industri kretek di Indonesia.' },
  { title: 'Ayat-Ayat Cinta', author: 'Habiburrahman El S.', category: 'Fiksi', description: 'Kisah cinta religius di Kairo.' },
  { title: 'Dilan 1990', author: 'Pidi Baiq', category: 'Fiksi', description: 'Keromantisan masa SMA di Bandung.' },
  { title: 'Bumi', author: 'Tere Liye', category: 'Fiksi', description: 'Kisah remaja dengan kekuatan dunia paralel.' },
  { title: 'Bulan', author: 'Tere Liye', category: 'Fiksi', description: 'Petualangan klan Matahari dan Bulan.' },
  { title: 'Matahari', author: 'Tere Liye', category: 'Fiksi', description: 'Rahasia klan di bawah tanah.' },
  { title: 'Bintang', author: 'Tere Liye', category: 'Fiksi', description: 'Konspirasi klan elit antar galaksi.' },
  { title: 'Ceros & Batozar', author: 'Tere Liye', category: 'Fiksi', description: 'Pertarungan besar di dunia paralel.' },

  // PARENTING & ANAK (15+)
  { title: 'Buku KIA (Ibu & Anak)', author: 'Kemenkes', category: 'Parenting', description: 'Panduan medis resmi pertumbuhan anak.' },
  { title: 'Mengapa Harus Shalat', author: 'Penerbit Edukasi', category: 'Buku Anak Anak', description: 'Cerita bergambar untuk anak muslim.' },
  { title: 'Ensiklopedia Junior: Sains', author: 'Larousse', category: 'Buku Anak Anak', description: 'Mengenal fenomena alam untuk anak.' },
  { title: 'Dongeng Sebelum Tidur', author: 'Grimm Brothers', category: 'Buku Anak Anak', description: 'Kumpulan dongeng klasik dunia.' },
  { title: 'Positive Parenting', author: 'Rebecca Eanes', category: 'Parenting', description: 'Pola asuh tanpa hukuman fisik.' },
  { title: 'The Whole-Brain Child', author: 'Daniel Siegel', category: 'Parenting', description: 'Cara otak anak berkembang dan solusinya.' },
  { title: 'Kisah Nabi dan Rasul', author: 'Tim Pustaka', category: 'Agama', description: 'Teladan 25 nabi untuk anak.' },
  { title: 'Totto-chan', author: 'Tetsuko Kuroyanagi', category: 'Buku Anak Anak', description: 'Kisah pendidikan sekolah kreatif di Jepang.' },
  { title: 'Diary of a Wimpy Kid', author: 'Jeff Kinney', category: 'Buku Anak Anak', description: 'Catatan harian konyol anak sekolah.' },
  { title: 'Harry Potter 1', author: 'JK Rowling', category: 'Buku Anak Anak', description: 'Kisah awal penyihir muda di Hogwarts.' },
  { title: 'Matilda', author: 'Roald Dahl', category: 'Buku Anak Anak', description: 'Gadis jenius dengan kekuatan telekinetik.' },
  { title: 'Wonder', author: 'R.J. Palacio', category: 'Buku Anak Anak', description: 'Kisah tentang kebaikan dan penerimaan diri.' },
  { title: 'Amalan Nisfu Sya\'ban', author: 'Tim Religi', category: 'Agama', description: 'Panduan ibadah malam pertengahan Sya\'ban.' },
  { title: 'Zikir & Doa Harian', author: 'Al-Hafiz', category: 'Agama', description: 'Kumpulan doa sahih untuk kehidupan sehari-hari.' },
  { title: 'Tafsir Jalalain', author: 'Imam Jalaluddin', category: 'Agama', description: 'Tafsir klasik Al-Quran yang mudah dipahami.' },

  // TAMBAHAN SAINS & TEKNOLOGI (10+)
  { title: 'A Brief History of Time', author: 'Stephen Hawking', category: 'Sains', description: 'Penjelasan lubang hitam dan semesta.' },
  { title: 'Cosmos', author: 'Carl Sagan', category: 'Sains', description: 'Perjalanan manusia di alam semesta.' },
  { title: 'Selfish Gene', author: 'Richard Dawkins', category: 'Sains', description: 'Cara gen bertindak dalam evolusi.' },
  { title: 'Brief Answers to Big Questions', author: 'Stephen Hawking', category: 'Sains', description: 'Jawaban atas pertanyaan besar manusia.' },
  { title: 'Python for Beginners', author: 'Coding Academy', category: 'Digital Marketing', description: 'Dasar pemrograman untuk pemula.' },
  { title: 'Digital Marketing Excellence', author: 'Chaffey', category: 'Digital Marketing', description: 'Panduan strategis pemasaran internet.' },
  { title: 'Onlyfans Survival Guide', author: 'Internet Expert', category: 'Digital Marketing', description: 'Memahami tren konten digital masa kini.' },
  { title: 'Parenting in Digital Age', author: 'Technology Expert', category: 'Parenting', description: 'Menghadapi anak di era gadget.' },
  { title: 'Climate Change 101', author: 'Environmentalist', category: 'Sains', description: 'Penyebab dan solusi pemanasan global.' },
  { title: 'Artificial Intelligence', author: 'Tech Team', category: 'Digital Marketing', description: 'Masa depan AI dalam kehidupan manusia.' }
];

let sql = "-- SQL Seed Massal Perpus.org (V2.0 - 100+ Books)\n";
sql += "-- Script ini akan mendaftarkan kategori baru jika belum ada dan memasukkan 120+ koleksi baru.\n\n";

sql += "-- 1. TAMBAH KATEGORI BARU\n";
categoriesToAdd.forEach(cat => {
  sql += `INSERT INTO categories (name) SELECT '${cat}' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = '${cat}');\n`;
});

sql += "\n-- 2. TAMBAH KOLEKSI BUKU\n";
books.forEach(b => {
  sql += `INSERT INTO books (title, author, category_id, description, requires_approval, file_url) \n`;
  sql += `SELECT '${b.title.replace(/'/g, "''")}', '${b.author.replace(/'/g, "''")}', id, '${b.description.replace(/'/g, "''")}', false, '#' \n`;
  sql += `FROM categories WHERE name = '${b.category}' LIMIT 1;\n\n`;
});

fs.writeFileSync('seed_perpus_massal.sql', sql, 'utf8');
console.log("File seed_perpus_massal.sql BERHASIL DIBUAT!");
console.log(`Total Buku: ${books.length}`);
console.log("Silakan jalankan file ini di Supabase SQL Editor.");
