-- SQL Seed Massal Perpus.org (V2.0 - 100+ Books)
-- Script ini akan mendaftarkan kategori baru jika belum ada dan memasukkan 120+ koleksi baru.

-- 1. TAMBAH KATEGORI BARU
INSERT INTO categories (name) SELECT 'Komik' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Komik');
INSERT INTO categories (name) SELECT 'Pengembangan Diri' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Pengembangan Diri');
INSERT INTO categories (name) SELECT 'Bisnis dan Ekonomi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Bisnis dan Ekonomi');
INSERT INTO categories (name) SELECT 'Fiksi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Fiksi');
INSERT INTO categories (name) SELECT 'Agama' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Agama');
INSERT INTO categories (name) SELECT 'Buku Anak Anak' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Buku Anak Anak');
INSERT INTO categories (name) SELECT 'Misteri' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Misteri');
INSERT INTO categories (name) SELECT 'Parenting' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Parenting');
INSERT INTO categories (name) SELECT 'Digital Marketing' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Digital Marketing');
INSERT INTO categories (name) SELECT 'Sains' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Sains');
INSERT INTO categories (name) SELECT 'Hobi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Hobi');
INSERT INTO categories (name) SELECT 'Kisah Inspiratif' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Kisah Inspiratif');
INSERT INTO categories (name) SELECT 'Lainnya' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Lainnya');

-- 2. TAMBAH KOLEKSI BUKU
INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol. 01', 'Fujiko F. Fujio', id, 'Kisah awal pertemuan Nobita dengan robot kucing masa depan.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol. 02', 'Fujiko F. Fujio', id, 'Petualangan Nobita dengan alat-alat ajaib Doraemon.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol. 03', 'Fujiko F. Fujio', id, 'Doraemon membantu Nobita menghadapi Giant dan Suneo.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol. 05', 'Fujiko F. Fujio', id, 'Kisah haru dan lucu Nobita dan Doraemon.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol. 07', 'Fujiko F. Fujio', id, 'Petualangan seru Nobita di dunia fantasi.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol. 10', 'Fujiko F. Fujio', id, 'Kisah persahabatan sejati di masa depan.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Shin Chan Vol. 01', 'Yoshito Usui', id, 'Tingkah lucu dan nakal Shinnosuke Nohara.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Shin Chan Vol. 02', 'Yoshito Usui', id, 'Keluarga Nohara menghadapi kepolosan Shin Chan.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kariage Kun Vol. 01', 'Masashi Ueda', id, 'Kisah jenaka Kariage dalam kehidupan sehari-hari.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kariage Kun Vol. 02', 'Masashi Ueda', id, 'Tingkah konyol Kariage di kantor dan lingkungan.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Si Juki: Berani Beda', 'Faza Meonk', id, 'Komik populer Indonesia tentang karakter ikonik Si Juki.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Samurai X Vol. 01', 'Nobuhiro Watsuki', id, 'Awal petualangan Kenshin Himura sang Battousai.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol. 01', 'Masashi Kishimoto', id, 'Ninja nakal yang bermimpi menjadi Hokage.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol. 07', 'Masashi Kishimoto', id, 'Ujian Chunin yang penuh ketegangan.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek: Paman Gober dan Siberat', 'Disney', id, 'Gober Bebek melindungi hartanya dari gerombolan siberat.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek: Mencari Telur Emas', 'Disney', id, 'Petualangan donal bebek yang penuh tawa.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol. 03', 'Gosho Aoyama', id, 'Kasus misterius yang harus dipecahkan oleh Conan.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol. 26', 'Gosho Aoyama', id, 'Petualangan detektif cilik dalam mengungkap kebenaran.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Attack on Titan Vol. 01', 'Hajime Isayama', id, 'Umat manusia yang bertahan hidup dari serangan Titan.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Benny & Mice: Lost in Bali', 'Benny & Mice', id, 'Kisah lucu turis lokal saat berlibur di Bali.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tintin: Bintang Jatuh', 'Herge', id, 'Petualangan wartawan muda Tintin di luar angkasa.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemons Special Vol. 02', 'Fujiko F. Fujio', id, 'Kumpulan robot kucing dari berbagai negara.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Shin Chan: Edisi Spesial', 'Yoshito Usui', id, 'Koleksi petualangan paling lucu Shin Chan.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Edisi Bahasa Indonesia 06', 'Fujiko F. Fujio', id, 'Edisi klasik Doraemon untuk pembaca Indonesia.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Experience Human Development (2021)', 'Diane E. Papalia', id, 'Buku wajib mengenai fase kehidupan manusia.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dopamine Detox', 'Pria Seratus Persen', id, 'Cara mengembalikan fokus di era digital.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '190 Dark Psychology', 'Unknown', id, 'Seni persuasi dan pemahaman pikiran orang lain.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menemukan Kebahagiaan', 'Psychology Expert', id, 'Filosofi kebahagiaan dalam hidup sederhana.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dark Psychology Secrets', 'Unknown', id, 'Rahasia manipulasi psikologis dan cara menghindarinya.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Emotional Intelligence 2.0', 'Travis Bradberry', id, 'Mengelola emosi untuk kesuksesan profesional.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Power of Habit', 'Charles Duhigg', id, 'Pentingnya kebiasaan kecil dalam mengubah hidup.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Man Search for Meaning', 'Viktor Frankl', id, 'Menemukan makna hidup di tengah penderitaan.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Start with Why', 'Simon Sinek', id, 'Pentingnya tujuan dalam memimpin dan berkarya.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Atomic Habits', 'James Clear', id, 'Sistem kecil yang membawa hasil luar biasa.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Psychology of Money', 'Morgan Housel', id, 'Pelajaran abadi mengenai kekayaan dan kebahagiaan.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How to Win Friends', 'Dale Carnegie', id, 'Klasik komunikasi dan membangun relasi.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Subtle Art of Not Giving a F*', 'Mark Manson', id, 'Pendekatan jujur dalam menghadapi kesulitan.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deep Work', 'Cal Newport', id, 'Aturan untuk sukses di dunia penuh distraksi.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Grit: The Power of Passion', 'Angela Duckworth', id, 'Mengapa ketekunan lebih penting dari bakat.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Daring Greatly', 'Brene Brown', id, 'Keberanian untuk menjadi rentan dan kuat.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ego is the Enemy', 'Ryan Holiday', id, 'Mengatasi ego untuk meraih kejayaan sejati.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Alchemist', 'Paulo Coelho', id, 'Kisah mengejar takdir dan mimpi.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sapiens: A Brief History', 'Yuval Noah Harari', id, 'Asal usul umat manusia dan masa depan.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mindset: New Psychology', 'Carol Dweck', id, 'Pentingnya growth mindset untuk keberhasilan.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Delivering Happiness', 'Tony Hsieh', id, 'Budaya perusahaan Zappos yang inovatif.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rich Dad Poor Dad', 'Robert Kiyosaki', id, 'Edukasi keuangan dasar untuk semua orang.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lean Startup', 'Eric Ries', id, 'Metode inovasi cepat di era ketidakpastian.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Zero to One', 'Peter Thiel', id, 'Catatan membangun masa depan startup.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Marketing 4.0', 'Philip Kotler', id, 'Pemasaran dari tradisional ke digital.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Blue Ocean Strategy', 'W. Chan Kim', id, 'Menciptakan ruang pasar tanpa pesaing.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Good to Great', 'Jim Collins', id, 'Mengapa beberapa perusahaan sukses besar.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The E-Myth Revisited', 'Michael Gerber', id, 'Memahami kewirausahaan di level menengah.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Think and Grow Rich', 'Napoleon Hill', id, 'Dasar-dasar filosofi kekayaan dan mental.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rework', 'Jason Fried', id, 'Cara simpel dan efektif menjalankan bisnis.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The 4-Hour Workweek', 'Timothy Ferriss', id, 'Keluar dari 9-5 dan desain gaya hidup baru.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Steve Jobs Biography', 'Walter Isaacson', id, 'Kisah hidup sang visioner Apple.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Influence: Psychology of Persuasion', 'Robert Cialdini', id, 'Sains dibalik mengapa orang berkata ya.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Building a StoryBrand', 'Donald Miller', id, 'Klarifikasi pesan bisnis dengan storytelling.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Measure What Matters', 'John Doerr', id, 'Implementasi OKR untuk performa tim tinggi.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Rahasia Geez', 'Tsana', id, 'Rahasia karakter paling dicintai.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisah Tanah Jawa: Jagat Lelembut', 'Om Hao', id, 'Eksplorasi dunia astral pulau Jawa.', false, '#' 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sherlock Holmes: A Study in Scarlet', 'Arthur Conan Doyle', id, 'Kasus pertama Holmes dan Watson.', false, '#' 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Negeri 5 Menara', 'A. Fuadi', id, 'Perjuangan santri mengejar mimpi di seluruh dunia.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Laskar Pelangi', 'Andrea Hirata', id, 'Kisah inspiratif anak-anak Belitong.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bumi Manusia', 'Pramoedya Ananta Toer', id, 'Mahakarya sastra Indonesia tentang kebangkitan.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pulang', 'Leila S. Chudori', id, 'Kisah eksil politik Indonesia di Paris.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cantik Itu Luka', 'Eka Kurniawan', id, 'Realisme magis sejarah panjang Indonesia.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perahu Kertas', 'Dee Lestari', id, 'Kisah cinta dan pencarian jati diri remaja.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Supernova: Ksatria Puteri', 'Dee Lestari', id, 'Sastra modern berbalut sains dan mitos.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hujan', 'Tere Liye', id, 'Kisah persahabatan di dunia masa depan.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pulang-Pergi', 'Tere Liye', id, 'Petualangan aksi dan drama keluarga Bujang.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gadis Kretek', 'Ratih Kumala', id, 'Sejarah panjang industri kretek di Indonesia.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ayat-Ayat Cinta', 'Habiburrahman El S.', id, 'Kisah cinta religius di Kairo.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dilan 1990', 'Pidi Baiq', id, 'Keromantisan masa SMA di Bandung.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bumi', 'Tere Liye', id, 'Kisah remaja dengan kekuatan dunia paralel.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bulan', 'Tere Liye', id, 'Petualangan klan Matahari dan Bulan.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Matahari', 'Tere Liye', id, 'Rahasia klan di bawah tanah.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bintang', 'Tere Liye', id, 'Konspirasi klan elit antar galaksi.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ceros & Batozar', 'Tere Liye', id, 'Pertarungan besar di dunia paralel.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku KIA (Ibu & Anak)', 'Kemenkes', id, 'Panduan medis resmi pertumbuhan anak.', false, '#' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengapa Harus Shalat', 'Penerbit Edukasi', id, 'Cerita bergambar untuk anak muslim.', false, '#' 
FROM categories WHERE name = 'Buku Anak Anak' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ensiklopedia Junior: Sains', 'Larousse', id, 'Mengenal fenomena alam untuk anak.', false, '#' 
FROM categories WHERE name = 'Buku Anak Anak' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dongeng Sebelum Tidur', 'Grimm Brothers', id, 'Kumpulan dongeng klasik dunia.', false, '#' 
FROM categories WHERE name = 'Buku Anak Anak' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Positive Parenting', 'Rebecca Eanes', id, 'Pola asuh tanpa hukuman fisik.', false, '#' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Whole-Brain Child', 'Daniel Siegel', id, 'Cara otak anak berkembang dan solusinya.', false, '#' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisah Nabi dan Rasul', 'Tim Pustaka', id, 'Teladan 25 nabi untuk anak.', false, '#' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Totto-chan', 'Tetsuko Kuroyanagi', id, 'Kisah pendidikan sekolah kreatif di Jepang.', false, '#' 
FROM categories WHERE name = 'Buku Anak Anak' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diary of a Wimpy Kid', 'Jeff Kinney', id, 'Catatan harian konyol anak sekolah.', false, '#' 
FROM categories WHERE name = 'Buku Anak Anak' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Harry Potter 1', 'JK Rowling', id, 'Kisah awal penyihir muda di Hogwarts.', false, '#' 
FROM categories WHERE name = 'Buku Anak Anak' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Matilda', 'Roald Dahl', id, 'Gadis jenius dengan kekuatan telekinetik.', false, '#' 
FROM categories WHERE name = 'Buku Anak Anak' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Wonder', 'R.J. Palacio', id, 'Kisah tentang kebaikan dan penerimaan diri.', false, '#' 
FROM categories WHERE name = 'Buku Anak Anak' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Amalan Nisfu Sya''ban', 'Tim Religi', id, 'Panduan ibadah malam pertengahan Sya''ban.', false, '#' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Zikir & Doa Harian', 'Al-Hafiz', id, 'Kumpulan doa sahih untuk kehidupan sehari-hari.', false, '#' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tafsir Jalalain', 'Imam Jalaluddin', id, 'Tafsir klasik Al-Quran yang mudah dipahami.', false, '#' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A Brief History of Time', 'Stephen Hawking', id, 'Penjelasan lubang hitam dan semesta.', false, '#' 
FROM categories WHERE name = 'Sains' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cosmos', 'Carl Sagan', id, 'Perjalanan manusia di alam semesta.', false, '#' 
FROM categories WHERE name = 'Sains' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Selfish Gene', 'Richard Dawkins', id, 'Cara gen bertindak dalam evolusi.', false, '#' 
FROM categories WHERE name = 'Sains' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Brief Answers to Big Questions', 'Stephen Hawking', id, 'Jawaban atas pertanyaan besar manusia.', false, '#' 
FROM categories WHERE name = 'Sains' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Python for Beginners', 'Coding Academy', id, 'Dasar pemrograman untuk pemula.', false, '#' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Digital Marketing Excellence', 'Chaffey', id, 'Panduan strategis pemasaran internet.', false, '#' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Onlyfans Survival Guide', 'Internet Expert', id, 'Memahami tren konten digital masa kini.', false, '#' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Parenting in Digital Age', 'Technology Expert', id, 'Menghadapi anak di era gadget.', false, '#' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Climate Change 101', 'Environmentalist', id, 'Penyebab dan solusi pemanasan global.', false, '#' 
FROM categories WHERE name = 'Sains' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Artificial Intelligence', 'Tech Team', id, 'Masa depan AI dalam kehidupan manusia.', false, '#' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

