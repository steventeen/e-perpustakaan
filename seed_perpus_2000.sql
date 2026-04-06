-- SQL SEED RAKSASA (2.000+ BOOKS)
-- Generated based on perpus.org sitemap

-- 1. DAFTARKAN KATEGORI
INSERT INTO categories (name) SELECT 'Pengembangan Diri' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Pengembangan Diri');
INSERT INTO categories (name) SELECT 'Bisnis dan Ekonomi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Bisnis dan Ekonomi');
INSERT INTO categories (name) SELECT 'Lainnya' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Lainnya');
INSERT INTO categories (name) SELECT 'Agama' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Agama');
INSERT INTO categories (name) SELECT 'Sosial & Psikologi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Sosial & Psikologi');
INSERT INTO categories (name) SELECT 'Fiksi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Fiksi');
INSERT INTO categories (name) SELECT 'Kisah Inspiratif' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Kisah Inspiratif');
INSERT INTO categories (name) SELECT 'Bumil (Ibu Hamil)' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Bumil (Ibu Hamil)');
INSERT INTO categories (name) SELECT 'Komik' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Komik');
INSERT INTO categories (name) SELECT 'Komedi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Komedi');
INSERT INTO categories (name) SELECT 'Romansa' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Romansa');
INSERT INTO categories (name) SELECT 'Parenting' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Parenting');
INSERT INTO categories (name) SELECT 'Misteri' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Misteri');
INSERT INTO categories (name) SELECT 'Resep (Daftar Masakan)' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Resep (Daftar Masakan)');
INSERT INTO categories (name) SELECT 'Kesehatan' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Kesehatan');
INSERT INTO categories (name) SELECT 'Teknologi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Teknologi');
INSERT INTO categories (name) SELECT 'Fisik Sejarah' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Fisik Sejarah');
INSERT INTO categories (name) SELECT 'Hobi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Hobi');
INSERT INTO categories (name) SELECT 'Sains' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Sains');
INSERT INTO categories (name) SELECT 'Pendidikan' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Pendidikan');
INSERT INTO categories (name) SELECT 'Digital Marketing' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Digital Marketing');
INSERT INTO categories (name) SELECT 'Dongeng & Fabel' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Dongeng & Fabel');
INSERT INTO categories (name) SELECT 'Gaya Hidup' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Gaya Hidup');
INSERT INTO categories (name) SELECT 'Ensiklopedia' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Ensiklopedia');
INSERT INTO categories (name) SELECT 'Motivasi' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Motivasi');
INSERT INTO categories (name) SELECT 'Sastra' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Sastra');
INSERT INTO categories (name) SELECT 'Kedokteran' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Kedokteran');
INSERT INTO categories (name) SELECT 'Textbook' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Textbook');
INSERT INTO categories (name) SELECT 'SD' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'SD');
INSERT INTO categories (name) SELECT 'SMP' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'SMP');
INSERT INTO categories (name) SELECT 'SMA' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'SMA');
INSERT INTO categories (name) SELECT 'Kepemimpinan & Manajemen Tim' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Kepemimpinan & Manajemen Tim');
INSERT INTO categories (name) SELECT 'Pria Seratus Persen' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Pria Seratus Persen');
INSERT INTO categories (name) SELECT 'Fiksi Petualangan' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Fiksi Petualangan');
INSERT INTO categories (name) SELECT 'Kerajinan Tangan' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Kerajinan Tangan');
INSERT INTO categories (name) SELECT 'Fashion' WHERE NOT EXISTS (SELECT 1 FROM categories WHERE name = 'Fashion');

-- 2. INSERT BUKU (BATCHED)
INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Bagus', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-bagus' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Biografi Lesti Andriyani', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/biografi-lesti-andriyani' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengalaman 1000 Tahun Menjadi Ceo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/pengalaman-1000-tahun-menjadi-ceo' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Reunion 2018', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-reunion-2018' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Copywriting', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/ebook-copywriting' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Strategi Membangun Restoran', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/10-strategi-membangun-restoran' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Istilah Startup', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kumpulan-istilah-startup' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset Bandung', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-bandung' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seluk Beluk Pendaftaran Merek Di Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/seluk-beluk-pendaftaran-merek-di-indonesia' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Klik Klik Closing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/klik-klik-closing' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Teknik Dan Cara Membuat Copywriting', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/teknik-dan-cara-membuat-copywriting' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kecerdasan Finansial Dasar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kecerdasan-finansial-dasar' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ilmu Copywriting', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/ilmu-copywriting' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Riba Dalam Perspektif Quran &amp;amp; Sunnah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/riba-dalam-perspektif-quran-&amp;amp;-sunnah' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naik Haji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/naik-haji' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1.hands Out Modul 1 Panduan Dunia Digital Gapura Digital V3', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/1.hands-out-modul-1-panduan-dunia-digital-gapura-digital-v3' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ide Bisnis Yang Berpotensi Meraih Jutaan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ide-bisnis-yang-berpotensi-meraih-jutaan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Zoomer Adalah Future Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/zoomer-adalah-future-indonesia' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Digital Marketing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/digital-marketing' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Kesalahan Fatal Pengusaha Pemula', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/7-kesalahan-fatal-pengusaha-pemula' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Income Dalam Keluarga', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/income-dalam-keluarga' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kalau_rencana_anda_tidak_berjalan_ubah_strateginya_jangan_pernah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kalau_rencana_anda_tidak_berjalan_ubah_strateginya_jangan_pernah' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tugas Utama Pemimpin Bisnis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tugas-utama-pemimpin-bisnis' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hands Out Modul Industri Gapura Digital Layanan_jasa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/hands-out-modul-industri-gapura-digital-layanan_jasa' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '01 Pengantar Inkubator Bisnis For Tenant', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/01-pengantar-inkubator-bisnis-for-tenant' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Begini Melihat Ancaman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/begini-melihat-ancaman' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ilmu_tajwid_lengkap', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/ilmu_tajwid_lengkap' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bitsing Management Method Ver1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bitsing-management-method-ver1' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Book Nulis Iklan Biar Laris', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/e-book-nulis-iklan-biar-laris' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Waktu Dan Uang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/waktu-dan-uang' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Vision 2030 – Delapan Trend Penting 2021', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/vision-2030-–-delapan-trend-penting-2021' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Vip Ebook Mencari Backlink Powerfull Rank 1 Google Manajemen Backlink', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/vip-ebook-mencari-backlink-powerfull-rank-1-google-manajemen-backlink' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Type Karyawan Yang Pantas Anda Phk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/type-karyawan-yang-pantas-anda-phk' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tipe Orang Yang Pasti Saya Pecat Dari Perusahaan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tipe-orang-yang-pasti-saya-pecat-dari-perusahaan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The_food_revolution_july2019_en', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the_food_revolution_july2019_en' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Power Of Kepepet', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-power-of-kepepet' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Art Of Closing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-art-of-closing' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Shopper Trend 2019', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/shopper-trend-2019' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sequoia Capital Pitch Deck', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sequoia-capital-pitch-deck' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Selamat_tinggal_dolar_–_burung_di_tangan_di_lepas_untuk_menangkap', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/selamat_tinggal_dolar_–_burung_di_tangan_di_lepas_untuk_menangkap' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sedia Payung Sebelum Hujan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/sedia-payung-sebelum-hujan' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sebegitu Bodohnya Kita  Atau Pura Pura Bodoh', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/sebegitu-bodohnya-kita--atau-pura-pura-bodoh' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Scale Up Vs Bonsai', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/scale-up-vs-bonsai' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rupiah 20.000 Efek Yuanisasi Ya Bu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rupiah-20.000-efek-yuanisasi-ya-bu' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Review Mmbc Jogja Dan Jakarta', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/review-mmbc-jogja-dan-jakarta' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Reuni Mmbc Bali', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/reuni-mmbc-bali' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resesi Karena Ketinggian Ilmu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/resesi-karena-ketinggian-ilmu' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Membaca Ekspresi Wajah Dan Bahasa Tubuh Manusia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/rahasia-membaca-ekspresi-wajah-dan-bahasa-tubuh-manusia' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Presentasi Final_amalia A Widyasanti_reuni Tk Itb', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/presentasi-final_amalia-a-widyasanti_reuni-tk-itb' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Prakata Dari Bossman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/prakata-dari-bossman' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Please Welcome Potus', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/please-welcome-potus' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pinternya Negara Miskin Yang Tidak Punya Sda', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pinternya-negara-miskin-yang-tidak-punya-sda' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pertamina Rugi Tapi Seru', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pertamina-rugi-tapi-seru' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perilaku Blamer Vs Responsible', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/perilaku-blamer-vs-responsible' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Panduan Skbc', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/panduan-skbc' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Musuh Dari Kesuksesan Adalah Ego Berkuasa Tanpa Ilmu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/musuh-dari-kesuksesan-adalah-ego-berkuasa-tanpa-ilmu' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mmbc Vibrasi Positif', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mmbc-vibrasi-positif' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mitos Dalam Ekonomi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/mitos-dalam-ekonomi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset By Mardigu Vol. 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-by-mardigu-vol.-01' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset Bootcamp', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-bootcamp' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Micro Expression &amp;amp; Body Language', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/micro-expression-&amp;amp;-body-language' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Merry Riana Dare To Dream Big', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/merry-riana-dare-to-dream-big' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengenal Pola Uang Datang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mengenal-pola-uang-datang' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengenal Musuhmu Adalah 50% Kemenanganmu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mengenal-musuhmu-adalah-50%-kemenanganmu' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Membangun Aset', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/membangun-aset' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Meaningful Marketing On Ramadhan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/meaningful-marketing-on-ramadhan' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mayasi Resto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/mayasi-resto' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Masih Utak Atik Cara Lama Yang Nggak Bakal Jalan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/masih-utak-atik-cara-lama-yang-nggak-bakal-jalan' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mantra_dedycorbuzer', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mantra_dedycorbuzer' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lingkar Peduli', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/lingkar-peduli' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Langkah Gurita', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/langkah-gurita' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Artikel Pw 2007]', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kumpulan-artikel-pw-2007]' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamus Bahasa Arab Saluni Edisi Revisi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/kamus-bahasa-arab-saluni-edisi-revisi' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kalau_duduk_bersama_tidak_menyesaikan_masalah_cobalah_tidur_bersama', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/kalau_duduk_bersama_tidak_menyesaikan_masalah_cobalah_tidur_bersama' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kalau Anda Baperan, Lupakan Jadi Pebisnis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kalau-anda-baperan,-lupakan-jadi-pebisnis' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jual Asap Itu Lebih Penting Dari Satenya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/jual-asap-itu-lebih-penting-dari-satenya' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jangan Sampai Gue Masuk Comberan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/jangan-sampai-gue-masuk-comberan' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jangan Menolak Pria Karena Ia Miskin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/jangan-menolak-pria-karena-ia-miskin' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Info Sekolah Ceo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/info-sekolah-ceo' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How Is The Money Come To You By Mardigu Wp', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/how-is-the-money-come-to-you-by-mardigu-wp' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hands Out Modul Industri Womenwill Makanan Dan Minuman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/hands-out-modul-industri-womenwill-makanan-dan-minuman' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gerimis Mengundang Solusi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/gerimis-mengundang-solusi' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gdpindonesiadigitaltrend', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/gdpindonesiadigitaltrend' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Meraih Penghasilan Rutin Dari Fb', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-meraih-penghasilan-rutin-dari-fb' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Closing Booster', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-closing-booster' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Book Perilaku Generasi Milenial', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/e-book-perilaku-generasi-milenial' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Copy Of Hands Out Modul Industri Google Bisnisku Untuk Mengembangkan Bisnis Jasa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/copy-of-hands-out-modul-industri-google-bisnisku-untuk-mengembangkan-bisnis-jasa' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Menjadi Deal Maker Yang Sering Deal', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-menjadi-deal-maker-yang-sering-deal' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Begini Konsep Revolusioner Printing Money', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/begini-konsep-revolusioner-printing-money' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Begini Konsep Revolusioner Printing Money', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/begini-konsep-revolusioner-printing-money' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7.hands Out Modul 7 Pengenalan Seo &amp;amp; Sem Gapura Digital V3', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/7.hands-out-modul-7-pengenalan-seo-&amp;amp;-sem-gapura-digital-v3' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '4.hands Out Modul 4 Gapura Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/4.hands-out-modul-4-gapura-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3.hands Out Modul 3 Gapura Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/3.hands-out-modul-3-gapura-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3.2. Sarana  &amp;amp; Prasarana (mpo)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/3.2.-sarana--&amp;amp;-prasarana-(mpo)' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3.1. Manajemen Produksi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/3.1.-manajemen-produksi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '12 7 Keajaiban Rezeki', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/12-7-keajaiban-rezeki' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Bagaimana Mewarkan Tanpa Penolakan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/10-bagaimana-mewarkan-tanpa-penolakan' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengasuhan Anak Usia 0 12 Bulan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bumil (Ibu Hamil) dari perpus.org.', false, 'https://www.perpus.org/bumil/pengasuhan-anak-usia-0-12-bulan' 
FROM categories WHERE name = 'Bumil (Ibu Hamil)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengasuhan Anak Usia 0 12 Bulan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bumil (Ibu Hamil) dari perpus.org.', false, 'https://www.perpus.org/bumil/pengasuhan-anak-usia-0-12-bulan' 
FROM categories WHERE name = 'Bumil (Ibu Hamil)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengasuhan Anak Usia 0 12 Bulan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/pengasuhan-anak-usia-0-12-bulan' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Merry Riana Dare To Dream Big', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/merry-riana-dare-to-dream-big' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '05 Strategi Kemitraan Bisnis_bbppk_advance_final', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/05-strategi-kemitraan-bisnis_bbppk_advance_final' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Masih Utak Atik Cara Lama Yang Nggak Bakal Jalan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/masih-utak-atik-cara-lama-yang-nggak-bakal-jalan' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Presentasi Final_amalia A Widyasanti_reuni Tk Itb', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/presentasi-final_amalia-a-widyasanti_reuni-tk-itb' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bagaimana Caranya Uang Datang Kepada Anda', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bagaimana-caranya-uang-datang-kepada-anda' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How Is The Money Come To You By Mardigu Wp', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/how-is-the-money-come-to-you-by-mardigu-wp' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bukan Benci Yang Membuat Seseorang Menjauh', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bukan-benci-yang-membuat-seseorang-menjauh' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Asuhan Kebidanan Kehamilan Dan Komprehensif', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bumil (Ibu Hamil) dari perpus.org.', false, 'https://www.perpus.org/bumil/asuhan-kebidanan-kehamilan-dan-komprehensif' 
FROM categories WHERE name = 'Bumil (Ibu Hamil)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Chapter Millionaire Mindset Bootcamp Mardigu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/7-chapter-millionaire-mindset-bootcamp-mardigu' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Setiap_orang_mempunya_pembenaran_atas_kebenarannya_masing_masing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/setiap_orang_mempunya_pembenaran_atas_kebenarannya_masing_masing' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hands Out Modul Industri Womenwill Makanan Dan Minuman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/hands-out-modul-industri-womenwill-makanan-dan-minuman' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seluk Beluk Pendaftaran Merek Di Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/seluk-beluk-pendaftaran-merek-di-indonesia' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kalau_duduk_bersama_tidak_menyesaikan_masalah_cobalah_tidur_bersama', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/kalau_duduk_bersama_tidak_menyesaikan_masalah_cobalah_tidur_bersama' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Vip Ebook Mencari Backlink Powerfull Rank 1 Google Manajemen Backlink', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/vip-ebook-mencari-backlink-powerfull-rank-1-google-manajemen-backlink' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '6.hands Out Modul 6 Membangun Merek Melalui Video Gapura Digital V3 1 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/6.hands-out-modul-6-membangun-merek-melalui-video-gapura-digital-v3-1-1' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Selamat_tinggal_dolar_–_burung_di_tangan_di_lepas_untuk_menangkap', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/selamat_tinggal_dolar_–_burung_di_tangan_di_lepas_untuk_menangkap' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2020 11 16_ppt Rektor Ipb_future Practice (final)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/2020-11-16_ppt-rektor-ipb_future-practice-(final)' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2.hands Out Modul 2 Google Bisnisku Gapura Digital V3', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/2.hands-out-modul-2-google-bisnisku-gapura-digital-v3' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '9.hands Out Modul 9 Iklan Google Search Ads Gapura Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/9.hands-out-modul-9-iklan-google-search-ads-gapura-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Copy Of Hands Out Modul Industri Google Bisnisku Untuk Mengembangkan Bisnis Jasa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/copy-of-hands-out-modul-industri-google-bisnisku-untuk-mengembangkan-bisnis-jasa' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1.hands Out Modul 1 Panduan Dunia Digital Gapura Digital V3', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/1.hands-out-modul-1-panduan-dunia-digital-gapura-digital-v3' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3.2. Sarana  &amp;amp; Prasarana (mpo)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/3.2.-sarana--&amp;amp;-prasarana-(mpo)' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kalau_rencana_anda_tidak_berjalan_ubah_strateginya_jangan_pernah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kalau_rencana_anda_tidak_berjalan_ubah_strateginya_jangan_pernah' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Micro Expression &amp;amp; Body Language', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/micro-expression-&amp;amp;-body-language' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '07 Pkl &amp;amp; Praktik Usaha_bbppk Lembang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/07-pkl-&amp;amp;-praktik-usaha_bbppk-lembang' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10.hands Out Modul 10 Iklan Google Display Ads Gapura Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/10.hands-out-modul-10-iklan-google-display-ads-gapura-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7.hands Out Modul 7 Pengenalan Seo &amp;amp; Sem Gapura Digital V3', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/7.hands-out-modul-7-pengenalan-seo-&amp;amp;-sem-gapura-digital-v3' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3.3. Kemasan &amp;amp; Label (mpo)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/3.3.-kemasan-&amp;amp;-label-(mpo)' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Riba Dalam Perspektif Quran &amp;amp; Sunnah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/riba-dalam-perspektif-quran-&amp;amp;-sunnah' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Digital Marketing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/digital-marketing' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ilmu Copywriting', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/ilmu-copywriting' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mayasi Resto (5)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/mayasi-resto-(5)' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Closing Booster', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-closing-booster' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tugas Utama Pemimpin Bisnis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tugas-utama-pemimpin-bisnis' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Faq Mayasi.a', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/faq-mayasi.a' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naik Haji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/naik-haji' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kecerdasan Finansial Dasar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kecerdasan-finansial-dasar' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Menjadi Deal Maker Yang Sering Deal', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-menjadi-deal-maker-yang-sering-deal' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bts Salah Gaul By Army', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/bts-salah-gaul-by-army' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mmbc Vibrasi Positif', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mmbc-vibrasi-positif' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Contoh2. Pitchdeck Saesha', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/contoh2.-pitchdeck-saesha' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Anti Kiyosaki', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/anti-kiyosaki' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Kesalahan Fatal Pengusaha Pemula', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/7-kesalahan-fatal-pengusaha-pemula' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset Bandung', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-bandung' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Attack On Titan Vol.01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/attack-on-titan-vol.01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perilaku Blamer Vs Responsible', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/perilaku-blamer-vs-responsible' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Zoomer Adalah Future Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/zoomer-adalah-future-indonesia' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ide Bisnis Yang Berpotensi Meraih Jutaan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ide-bisnis-yang-berpotensi-meraih-jutaan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '01 Pengantar Inkubator Bisnis For Tenant', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/01-pengantar-inkubator-bisnis-for-tenant' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Power Of Kepepet', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-power-of-kepepet' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Bagaimana Mewarkan Tanpa Penolakan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/10-bagaimana-mewarkan-tanpa-penolakan' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ilmu_tajwid_lengkap', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/ilmu_tajwid_lengkap' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Vision 2030 – Delapan Trend Penting 2021', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/vision-2030-–-delapan-trend-penting-2021' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tiongkok Dan Amerika Dikupas', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tiongkok-dan-amerika-dikupas' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tenang Biden Masih Di Atas 11 Poin Dari Trump', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tenang-biden-masih-di-atas-11-poin-dari-trump' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Swf Bukan Pakai Hutang Solusi Anak Muda', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/swf-bukan-pakai-hutang-solusi-anak-muda' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Strategi Pejuang Hingga Tetes Darah Penghabisan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/strategi-pejuang-hingga-tetes-darah-penghabisan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Singapura Negara Peniru', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/singapura-negara-peniru' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Sekilas, Untuk Memahami Omnibus Law', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sejarah-sekilas,-untuk-memahami-omnibus-law' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Berulang, Pakai Strategi Raden Wijaya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sejarah-berulang,-pakai-strategi-raden-wijaya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sebegitu Bodohnya Kita  Atau Pura Pura Bodoh', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sebegitu-bodohnya-kita--atau-pura-pura-bodoh' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rupiah 20.000 Efek Yuanisasi Ya Bu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rupiah-20.000-efek-yuanisasi-ya-bu' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Membaca Ekspresi Wajah Dan Bahasa Tubuh Manusia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rahasia-membaca-ekspresi-wajah-dan-bahasa-tubuh-manusia' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pompeo Ke Gp Ansor Nu, Kode Apa Ini', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pompeo-ke-gp-ansor-nu,-kode-apa-ini' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pejabat Kesumpel Cuan Telinganya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pejabat-kesumpel-cuan-telinganya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nawacita Trump Nomor 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/nawacita-trump-nomor-1' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Memajukan Bangsa Dan Negara Itu Ada Caranya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/memajukan-bangsa-dan-negara-itu-ada-caranya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Memahami Globalis Cabal Dan Manuvernya Di Dunia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/memahami-globalis-cabal-dan-manuvernya-di-dunia' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mayasi Resto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/mayasi-resto' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Masih Salah Lihat Peta Deh Kayaknya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/masih-salah-lihat-peta-deh-kayaknya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Langkah Hati Hati Omnibus Law Yang Pro Rakyat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/langkah-hati-hati-omnibus-law-yang-pro-rakyat' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kritik, Saran Dan Solusi Bernegara', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kritik,-saran-dan-solusi-bernegara' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kita Terus Buat Indonesia Menang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kita-terus-buat-indonesia-menang' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ketika Sebuah Rahasia Tiongkok Amerika Di Buka', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ketika-sebuah-rahasia-tiongkok-amerika-di-buka' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ketika Potus Dan Flotus Kena Covid', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ketika-potus-dan-flotus-kena-covid' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ketika Bernegara Menjalankan Haknya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ketika-bernegara-menjalankan-haknya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Keberpihakan Anak Emas Dengan Anak Tiri Ala Omnibus Law', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/keberpihakan-anak-emas-dengan-anak-tiri-ala-omnibus-law' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kayak Corona, Indonesia Perlu Cangkang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kayak-corona,-indonesia-perlu-cangkang' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jokowi Got Talent Versi Revolusi Mental 2.0', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jokowi-got-talent-versi-revolusi-mental-2.0' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jangan Sampai Gue Masuk Comberan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jangan-sampai-gue-masuk-comberan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Indonesia Dan World Domination', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/indonesia-dan-world-domination' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Indonesia Berdaulat Juga Pada Akhirnya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/indonesia-berdaulat-juga-pada-akhirnya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Counter_omnibus_law,_ada_yang_sah_tetapi_bukan_hubungan_kita', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/counter_omnibus_law,_ada_yang_sah_tetapi_bukan_hubungan_kita' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tenang Biden Masih Di Atas 11 Poin Dari Trump', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tenang-biden-masih-di-atas-11-poin-dari-trump' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Membaca Ekspresi Wajah Dan Bahasa Tubuh Manusia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rahasia-membaca-ekspresi-wajah-dan-bahasa-tubuh-manusia' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mayasi Resto (5)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/mayasi-resto-(5)' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '4.hands Out Modul 4 Gapura Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/4.hands-out-modul-4-gapura-digital' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sebegitu Bodohnya Kita  Atau Pura Pura Bodoh', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sebegitu-bodohnya-kita--atau-pura-pura-bodoh' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sequoia Capital Pitch Deck', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sequoia-capital-pitch-deck' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '11.hands Out Modul 11 Mengenal Dasbor Google Ads Gapura Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/11.hands-out-modul-11-mengenal-dasbor-google-ads-gapura-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '04a Model Bisnis (bmc) 2020', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/04a-model-bisnis-(bmc)-2020' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ketika Sebuah Rahasia Tiongkok Amerika Di Buka', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ketika-sebuah-rahasia-tiongkok-amerika-di-buka' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Info Sekolah Ceo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/info-sekolah-ceo' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3.4. Legalitas Usaha Dan Ijin Edar (mpo)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/3.4.-legalitas-usaha-dan-ijin-edar-(mpo)' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Please Welcome Potus', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/please-welcome-potus' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Shopper Trend 2019', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/shopper-trend-2019' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mayasi Resto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/mayasi-resto' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Membangun Aset', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/membangun-aset' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sedia Payung Sebelum Hujan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/sedia-payung-sebelum-hujan' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Membaca Ekspresi Wajah Dan Bahasa Tubuh Manusia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/rahasia-membaca-ekspresi-wajah-dan-bahasa-tubuh-manusia' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bossman Positif Covid', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/bossman-positif-covid' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jangan Sampai Gue Masuk Comberan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/jangan-sampai-gue-masuk-comberan' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kayak Corona Indonesia Perlu Cangkang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kayak-corona-indonesia-perlu-cangkang' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Anaknya Pak Jokowi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/anaknya-pak-jokowi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doa_seorang_ibu_yang_ikhlas_adalah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/doa_seorang_ibu_yang_ikhlas_adalah' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Strategi Bisnis Membangun Smelter', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/strategi-bisnis-membangun-smelter' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3 Kunci Enteng Rezeki', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/3-kunci-enteng-rezeki' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Meraih Penghasilan Rutin Dari Fb', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-meraih-penghasilan-rutin-dari-fb' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Reuni Mmbc Bali', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/reuni-mmbc-bali' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mitos Dalam Ekonomi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/mitos-dalam-ekonomi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '12 7 Keajaiban Rezeki', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/12-7-keajaiban-rezeki' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Income Dalam Keluarga', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/income-dalam-keluarga' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Hari Jadi Juragan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/7-hari-jadi-juragan' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kalau Anda Baperan, Lupakan Jadi Pebisnis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kalau-anda-baperan,-lupakan-jadi-pebisnis' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Artikel Pw 2007]', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kumpulan-artikel-pw-2007]' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Review Mmbc Jogja Dan Jakarta', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/review-mmbc-jogja-dan-jakarta' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Scale Up Vs Bonsai', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/scale-up-vs-bonsai' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3.1. Manajemen Produksi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/3.1.-manajemen-produksi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '04c Action Plan (ap)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/04c-action-plan-(ap)' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '03 Manajemen Produksi Operasi (mpo)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/03-manajemen-produksi-operasi-(mpo)' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Type Karyawan Yang Pantas Anda Phk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/type-karyawan-yang-pantas-anda-phk' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Strategi Pejuang Hingga Tetes Darah Penghabisan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/strategi-pejuang-hingga-tetes-darah-penghabisan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jual Asap Itu Lebih Penting Dari Satenya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/jual-asap-itu-lebih-penting-dari-satenya' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Panduan Skbc', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/panduan-skbc' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Book Perilaku Generasi Milenial', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/e-book-perilaku-generasi-milenial' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Konten Kreatif Kekinian', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ebook-konten-kreatif-kekinian' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Reunion 2018', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-reunion-2018' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Book Jln Pintas Dikonversi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/e-book-jln-pintas-dikonversi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Strategi Membangun Restoran', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/10-strategi-membangun-restoran' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2020 06 20_rektor Ipb_menlead1 (complex Problem Solving)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/2020-06-20_rektor-ipb_menlead1-(complex-problem-solving)' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Sekilas, Untuk Memahami Omnibus Law', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sejarah-sekilas,-untuk-memahami-omnibus-law' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rupiah 20.000 Efek Yuanisasi Ya Bu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rupiah-20.000-efek-yuanisasi-ya-bu' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '04b Business Plan (bp)_rev 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/04b-business-plan-(bp)_rev-1' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Musuh Dari Kesuksesan Adalah Ego Berkuasa Tanpa Ilmu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/musuh-dari-kesuksesan-adalah-ego-berkuasa-tanpa-ilmu' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Vision 2030 – Delapan Trend Penting 2021', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/vision-2030-–-delapan-trend-penting-2021' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lingkar Peduli', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/lingkar-peduli' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '5. Hands Out Modul 5 Konten Marketing Dan Copywriting Untuk Bisnis Anda Gapura Digital V3', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/5.-hands-out-modul-5-konten-marketing-dan-copywriting-untuk-bisnis-anda-gapura-digital-v3' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pertamina Rugi Tapi Seru', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pertamina-rugi-tapi-seru' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '06 Business Matching &amp;amp; Pitchdeck_advance', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/06-business-matching-&amp;amp;-pitchdeck_advance' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gerimis Mengundang Solusi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/gerimis-mengundang-solusi' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jangan Menolak Pria Karena Ia Miskin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/jangan-menolak-pria-karena-ia-miskin' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resesi Karena Ketinggian Ilmu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/resesi-karena-ketinggian-ilmu' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Istilah Startup', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kumpulan-istilah-startup' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hands Out Modul Industri Gapura Digital Layanan_jasa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/hands-out-modul-industri-gapura-digital-layanan_jasa' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '02 Manajemen Usaha (mu)_advance', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/02-manajemen-usaha-(mu)_advance' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pinternya Negara Miskin Yang Tidak Punya Sda', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pinternya-negara-miskin-yang-tidak-punya-sda' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset Bootcamp', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-bootcamp' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Book Nulis Iklan Biar Laris', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/e-book-nulis-iklan-biar-laris' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Waktu Dan Uang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/waktu-dan-uang' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Berulang, Pakai Strategi Raden Wijaya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sejarah-berulang,-pakai-strategi-raden-wijaya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Begini Konsep Revolusioner Printing Money', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/begini-konsep-revolusioner-printing-money' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Teknik Dan Cara Membuat Copywriting', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/teknik-dan-cara-membuat-copywriting' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Prakata Dari Bossman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/prakata-dari-bossman' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Klik Klik Closing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/klik-klik-closing' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Copywriting', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/ebook-copywriting' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gdpindonesiadigitaltrend', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/gdpindonesiadigitaltrend' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bitsing Management Method Ver1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bitsing-management-method-ver1' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cerdas Membangun Tim Penjualan  2020', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cerdas-membangun-tim-penjualan--2020' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tipe Orang Yang Pasti Saya Pecat Dari Perusahaan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tipe-orang-yang-pasti-saya-pecat-dari-perusahaan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Customer Service Machine Gun', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/customer-service-machine-gun' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengenal Pola Uang Datang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mengenal-pola-uang-datang' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengalaman 1000 Tahun Menjadi Ceo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/pengalaman-1000-tahun-menjadi-ceo' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Meaningful Marketing On Ramadhan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/meaningful-marketing-on-ramadhan' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hacking Your Mind V1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/hacking-your-mind-v1' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamus Bahasa Arab Saluni Edisi Revisi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/kamus-bahasa-arab-saluni-edisi-revisi' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Panduan Santai 2018 Investasi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/panduan-santai-2018-investasi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Art Of Closing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-art-of-closing' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Langkah Gurita', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/langkah-gurita' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The_food_revolution_july2019_en', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the_food_revolution_july2019_en' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mantra_dedycorbuzer', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mantra_dedycorbuzer' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset By Mardigu Vol. 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-by-mardigu-vol.-01' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30 Menit Sebelum Tidur', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/30-menit-sebelum-tidur' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Begini Melihat Ancaman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/begini-melihat-ancaman' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tips Bermain Saham Untuk Pemula', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tips-bermain-saham-untuk-pemula' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tips Bermain Saham Untuk Pemula', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tips-bermain-saham-untuk-pemula' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3.hands Out Modul 3 Gapura Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/3.hands-out-modul-3-gapura-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rich Dad Poor Dad Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/rich-dad-poor-dad-indonesia' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Kambing Jantan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-kambing-jantan' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.36', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/detektif-conan-spesial-vol.36' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.25', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.25' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.23', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.23' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.20', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.20' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.16', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.16' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.06', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.06' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.05', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.05' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.03', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.03' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.02' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.21', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.21' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Edisi 06', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-edisi-06' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Kambing Jantan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komedi dari perpus.org.', false, 'https://www.perpus.org/komedi/komik-kambing-jantan' 
FROM categories WHERE name = 'Komedi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.16', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.16' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.15', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.15' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.02' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Edisi 02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-edisi-02' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.31', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.31' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.10', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.10' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.35', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.35' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.14', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.14' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.24', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.24' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.27', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.27' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.07', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.07' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.04', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.04' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.30', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.30' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.12', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.12' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.08', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.08' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.11', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.11' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.23', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.23' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.32', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.32' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.25', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.25' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.36', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/detektif-conan-spesial-vol.36' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.29', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.29' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.33', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.33' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.28', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.28' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.18', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.18' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.20', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.20' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.03', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.03' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rich Dad Poor Dad Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/rich-dad-poor-dad-indonesia' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.26', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.26' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.34', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.34' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.06', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.06' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.05', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.05' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.09', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.09' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.22', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.22' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sebuah Seni Untuk Bersikap Bodo Amat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/sebuah-seni-untuk-bersikap-bodo-amat' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sebuah Seni Untuk Bersikap Bodo Amat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/sebuah-seni-untuk-bersikap-bodo-amat' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.17', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.17' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.19', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.19' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Detektif Conan Spesial Vol.13', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/detektif-conan-spesial-vol.13' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '4.hands Out Modul 4 Gapura Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/4.hands-out-modul-4-gapura-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Doa Dari Al Quran Dan As Sunnah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/kumpulan-doa-dari-al-quran-dan-as-sunnah' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Donal Bebek Paman Gober', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-donal-bebek-paman-gober' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Doa Dari Al Quran Dan As Sunnah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/kumpulan-doa-dari-al-quran-dan-as-sunnah' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Donal Bebek Paman Gober', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-donal-bebek-paman-gober' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengenal Musuhmu Adalah 50 Kemenanganmu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mengenal-musuhmu-adalah-50-kemenanganmu' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Captain Tsubasa Youth 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/captain-tsubasa-youth-01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boy Candra Seperti Hujan Yang Jatuh Ke Bum', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/boy-candra-seperti-hujan-yang-jatuh-ke-bum' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Parenting Dalam Islam', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/parenting-dalam-islam' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol 03', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-vol-03' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol 07', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-vol-07' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol 05', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-vol-05' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol 05', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-vol-05' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Vol 07', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-vol-07' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ylyl Ebook', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ylyl-ebook' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon 09', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-09' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ylyl Ebook', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ylyl-ebook' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon 10', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-10' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik_dahsyatnya_azab_neraka', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik_dahsyatnya_azab_neraka' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik_dahsyatnya_azab_neraka', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik_dahsyatnya_azab_neraka' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Shin Chan 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/shin-chan-01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Shin Chan 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/shin-chan-01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon 08', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-08' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menantu Sange', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/menantu-sange' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Shin Chan 02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/shin-chan-02' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisah Tanah Jawa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Misteri dari perpus.org.', false, 'https://www.perpus.org/misteri/kisah-tanah-jawa' 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hinata Raped Raikage', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/hinata-raped-raikage' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisah Tanah Jawa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Misteri dari perpus.org.', false, 'https://www.perpus.org/misteri/kisah-tanah-jawa' 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisah Ml Sepupu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/kisah-ml-sepupu' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon 09', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-09' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Youtube For Dummies By Deddy Corbuzier (ig @free_book12) (1)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/youtube-for-dummies-by-deddy-corbuzier-(ig-@free_book12)-(1)' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Youtube For Dummies By Deddy Corbuzier (ig @free_book12) (1)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/youtube-for-dummies-by-deddy-corbuzier-(ig-@free_book12)-(1)' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yuk Temani Anak Internet', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/yuk-temani-anak-internet' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yuk Sahabat Perempuan Bertransaksi Daring Dengan Cermat_pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/yuk-sahabat-perempuan-bertransaksi-daring-dengan-cermat_pdf' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yuk Sahabat Perempuan Bermedia Sosial Dengan Bijak_pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/yuk-sahabat-perempuan-bermedia-sosial-dengan-bijak_pdf' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yuk Lawan Hoaks Politik_online', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/yuk-lawan-hoaks-politik_online' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Whatsapp Group And Digital Literacy Among Indonesian Women Kurnia Dkk 2020 (1)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/whatsapp-group-and-digital-literacy-among-indonesian-women-kurnia-dkk-2020-(1)' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ubah Platform Ekonomi Bernegara Ubah Nasib Bangsa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ubah-platform-ekonomi-bernegara-ubah-nasib-bangsa' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tunda Pelaksanaan Omnibus Law Kaji Ulang Atau Batalkan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tunda-pelaksanaan-omnibus-law-kaji-ulang-atau-batalkan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Trump_menipis_peluangnya_apa_lagi_langkah_desperate_yang_dilakukannya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/trump_menipis_peluangnya_apa_lagi_langkah_desperate_yang_dilakukannya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Siberkreasi_demokrasi Damai Era Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/siberkreasi_demokrasi-damai-era-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Selamatkan_aset_bangsa_stop_asing_aseng_masuk_ke_dalam_bumi_nusantara', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/selamatkan_aset_bangsa_stop_asing_aseng_masuk_ke_dalam_bumi_nusantara' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Sekilas Untuk Memahami Omnibus Law', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sejarah-sekilas-untuk-memahami-omnibus-law' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Berulang Pakai Strategi Raden Wijaya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sejarah-berulang-pakai-strategi-raden-wijaya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Riset Pekerja Industri Kreatif Indonesia Di Bawah Flexploitation', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/riset-pekerja-industri-kreatif-indonesia-di-bawah-flexploitation' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ringkasaneksekutif Serimodulliterasidigital Japelidi 310321', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ringkasaneksekutif-serimodulliterasidigital-japelidi-310321' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pompeo Ke Gp Ansor Nu Kode Apa Ini', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pompeo-ke-gp-ansor-nu-kode-apa-ini' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Metode Ampuh Rekrutmen Untuk Ukm', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/metode-ampuh-rekrutmen-untuk-ukm' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menantu Sange', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/menantu-sange' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lagi Selesaikan Covid Ala Sontoloyo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/lagi-selesaikan-covid-ala-sontoloyo' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kritik Saran Dan Solusi Bernegara', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kritik-saran-dan-solusi-bernegara' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisah Ml Sepupu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/kisah-ml-sepupu' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kalau Anda Baperan Lupakan Jadi Pebisnis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kalau-anda-baperan-lupakan-jadi-pebisnis' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hinata Raped Raikage', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/hinata-raped-raikage' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cakap Bermedia Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/cakap-bermedia-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bossman_pendosa_karena_salah_analisa_lebih_dosa_dari_ingkar_janji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bossman_pendosa_karena_salah_analisa_lebih_dosa_dari_ingkar_janji' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '04 Yuk Jadi Gamer Cerdas Berbagi Informasi Melalui Literasi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/04-yuk-jadi-gamer-cerdas-berbagi-informasi-melalui-literasi' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '05 Yuk Tanggap Dan Bijak Berbagi Informasi Bencana Alam Melalui Aplikasi Chat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/05-yuk-tanggap-dan-bijak-berbagi-informasi-bencana-alam-melalui-aplikasi-chat' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Budaya Bermedia Digital Final', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/budaya-bermedia-digital-final' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cakap Bermedia Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/cakap-bermedia-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Etis Bermedia Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/etis-bermedia-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Metode Ampuh Rekrutmen Untuk Ukm', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/metode-ampuh-rekrutmen-untuk-ukm' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ringkasaneksekutif Serimodulliterasidigital Japelidi 310321', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ringkasaneksekutif-serimodulliterasidigital-japelidi-310321' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Riset Pekerja Industri Kreatif Indonesia Di Bawah Flexploitation', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/riset-pekerja-industri-kreatif-indonesia-di-bawah-flexploitation' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Siberkreasi_demokrasi Damai Era Digital', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/siberkreasi_demokrasi-damai-era-digital' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Whatsapp Group And Digital Literacy Among Indonesian Women Kurnia Dkk 2020 (1)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/whatsapp-group-and-digital-literacy-among-indonesian-women-kurnia-dkk-2020-(1)' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yuk Lawan Hoaks Politik_online', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/yuk-lawan-hoaks-politik_online' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yuk Sahabat Perempuan Bermedia Sosial Dengan Bijak_pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/yuk-sahabat-perempuan-bermedia-sosial-dengan-bijak_pdf' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yuk Sahabat Perempuan Bertransaksi Daring Dengan Cermat_pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/yuk-sahabat-perempuan-bertransaksi-daring-dengan-cermat_pdf' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yuk Temani Anak Internet', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/yuk-temani-anak-internet' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aman Bermedia Digital Final', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/aman-bermedia-digital-final' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bossman Bingung Bossman Gugat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bossman-bingung-bossman-gugat' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Membangun Bisnis Hebat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-membangun-bisnis-hebat' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Counter_omnibus_law_ada_yang_sah_tetapi_bukan_hubungan_kita', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/counter_omnibus_law_ada_yang_sah_tetapi_bukan_hubungan_kita' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sadar Kaya By Mardigu Wp Pdf 2', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sadar-kaya-by-mardigu-wp-pdf-2' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset Mardigu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/millionaire-mindset-mardigu' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kebelet Kaya By Mardigu Wp', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kebelet-kaya-by-mardigu-wp' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek Special Edition 10', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-bebek-special-edition-10' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Donal Bebek', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-donal-bebek' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek Special Edition', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-bebek-special-edition' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek Paman Gober Dan Gerombolan Siberatpdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-bebek-paman-gober-dan-gerombolan-siberatpdf' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek Kecelakaan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-bebek-kecelakaan' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek 1534 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-bebek-1534-pdf' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Scale Up Free Trial', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/scale-up-free-trial' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Donal Bebek', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/komik-donal-bebek' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Si Juki Komik', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/si-juki-komik' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Benny Mice 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/benny-mice-1' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'One Punch Man Vol.01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/one-punch-man-vol.01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'One Punch Man Vol.03', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/one-punch-man-vol.03' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'One Punch Man Vol.02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/one-punch-man-vol.02' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Samurai X 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/samurai-x-01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kariage Kun 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/kariage-kun-01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Wasiat Dan Dzikir Penjagaan Dari Bahaya Wabah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/wasiat-dan-dzikir-penjagaan-dari-bahaya-wabah' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Pasarsayoor Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-pasarsayoor-pdf' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bermacam Macam Resep', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/bermacam-macam-resep' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kami Hadir Kita Hadir, Kamu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kami-hadir-kita-hadir,-kamu' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kami Hadir Kita Hadir, Kamu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kami-hadir-kita-hadir,-kamu' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Scale Up Mardigu (part 1  Hal 1 66)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/scale-up-mardigu-(part-1--hal-1-66)' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dilan 3 (shabrinabachtiar)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/dilan-3-(shabrinabachtiar)' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dilan 2 (shabrinabachtiar)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/dilan-2-(shabrinabachtiar)' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dilan 1 (shabrinabachtiar)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/dilan-1-(shabrinabachtiar)' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Panduan Lengkap Merawat Bayi 0 1tahun', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/panduan-lengkap-merawat-bayi-0-1tahun' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nkcthi By Marchella', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/nkcthi-by-marchella' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jostein Gaarder Dunia Sophie', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jostein-gaarder-dunia-sophie' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gaarder Dunia Sophie Sebuah Novel Filsafat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/gaarder-dunia-sophie-sebuah-novel-filsafat' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Falsafah Hidup Buya Hamka', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/falsafah-hidup-buya-hamka' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fakta Tentang Mpasi Dr Meta Hanindita Sp', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/fakta-tentang-mpasi-dr-meta-hanindita-sp' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '78 Resep Mpasi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/78-resep-mpasi' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tokyo Revengers Vol.1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/tokyo-revengers-vol.1' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Tafsir Mimpi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/buku-tafsir-mimpi' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Tafsir Mimpi Angka Togel 2d', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/buku-tafsir-mimpi-angka-togel-2d' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Mimpi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/buku-mimpi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Book 10 Tips Kehamilan Aman Dan Menyenangkan Mamaschoiceid', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/e-book-10-tips-kehamilan-aman-dan-menyenangkan-mamaschoiceid' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Tin Tin Bintang Jatuh', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-tin-tin-bintang-jatuh' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Tes Cpns 2020', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ebook-tes-cpns-2020' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Si Juki Komik', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/si-juki-komik' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tintin Di Tibet', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/tintin-di-tibet' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tintin Di Kongo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/tintin-di-kongo' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tintin Di Amerika', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/tintin-di-amerika' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemons Special 02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemons-special-02' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemons Special 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemons-special-01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Death_note_vol_02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/death_note_vol_02' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Death_note_vol_01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/death_note_vol_01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berani Tidak Disukai', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berani-tidak-disukai' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '210830 Umar Machdam Final', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/210830-umar-machdam-final-' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Awaken The Giant Within Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/awaken-the-giant-within-indonesia-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Skak Mat Closing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/skak-mat-closing' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nulis Iklan Tanpa Pusing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/nulis-iklan-tanpa-pusing' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Magnet 1000 Whatsapp', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/magnet-1000-whatsapp' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donald Bebek Spesial Edition 6', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donald-bebek-spesial-edition-6' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donald Bebek 1430', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donald-bebek-1430' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Tahi Lalats', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-tahi-lalats' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Bola', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-bola' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Benny Mice 2', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/benny-mice-2' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kariage Kun 2', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/kariage-kun-2' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '99 Pesan Nabi Vol 3', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/99-pesan-nabi-vol-3' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '99 Pesan Nabi Vol 2', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/99-pesan-nabi-vol-2' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '99 Pesan Nabi Vol 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/99-pesan-nabi-vol-1' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menantu Sange', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/menantu-sange' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sosial Media Trend 2022', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sosial-media-trend-2022' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kebangkrutan Mens Republic', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kebangkrutan-mens-republic' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filosofi Teras   Henry Manampiring', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/filosofi-teras---henry-manampiring' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rakyat Merdeka', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rakyat-merdeka' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Media Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/media-indonesia' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Investor Daily', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/investor-daily' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Idsf Community Profile 2019 30', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/idsf-community-profile-2019-30' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Epaper Radar Bogor 24 Februari 2022', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/epaper-radar-bogor-24-februari-2022' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bisnis Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bisnis-indonesia' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Republika', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/republika' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kontan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kontan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kompas', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kompas' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deddy Corbuizer    Mantra', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/deddy-corbuizer----mantra' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Menjual Ke Pasar International Dan Membangun Tim Milenial By Sujud_co', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-menjual-ke-pasar-international-dan-membangun-tim-milenial-by-sujud_co' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Contrasting Philosophical Perspectives In Administrative Science Bourgeois 1983 425', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/contrasting-philosophical-perspectives-in-administrative-science-bourgeois-1983-425' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Raymond Noe Raymond A Noe Raymond Andrew Noe Employee Training Development Mcgraw Hill Education 2017 909', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/raymond-noe-raymond-a-noe-raymond-andrew-noe-employee-training-development-mcgraw-hill-education-2017-909' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Unlimited Power By Anthony Robbins', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/unlimited-power-by-anthony-robbins' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tabloid Rumah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tabloid-rumah' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perjalanan Ke Mesopotamia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/perjalanan-ke-mesopotamia' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Paman Gober Scrooge', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/paman-gober-scrooge' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Modul Kewirausahaan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/modul-kewirausahaan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ocd By Corbuzier', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ocd-by-corbuzier' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1924 Penjadwalan Ulang Anbk Seluruh Jenjang 196', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/1924-penjadwalan-ulang-anbk-seluruh-jenjang-196' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Islam Di Nusantaradrive 511', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/sejarah-islam-di-nusantaradrive-511' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Zikir Selepas Solat Dan Pagi Petang 313', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/zikir-selepas-solat-dan-pagi-petang-313' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengawasan Mutu Dan Keamanan Pangan By Dr Ir Christine F Mamuaja Ms Z Lib Org 617', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/pengawasan-mutu-dan-keamanan-pangan-by-dr-ir-christine-f-mamuaja-ms-z-lib-org-617' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Romeo And Juliet 455', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/romeo-and-juliet-455' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2208 Buku Instrumen Akreditasi Lam Kprs Edisi 2022 1 278', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/2208-buku-instrumen-akreditasi-lam-kprs-edisi-2022-1-278' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dopamine Detox Priaseratuspersen 557', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/dopamine-detox-priaseratuspersen-557' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Resep Makanan Lokal Balita Dan Ibu Hamil 944', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/buku-resep-makanan-lokal-balita-dan-ibu-hamil-944' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Saku 10jan18 Fa 2 934', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/buku-saku-10jan18-fa-2-934' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nunchi Seni Membaca Pikiran Dan Perasaan Orang Lain Rahasia Hidup Bahagia Dan Sukses Dari Korea Euny Hong Z Lib Org 802', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/nunchi-seni-membaca-pikiran-dan-perasaan-orang-lain-rahasia-hidup-bahagia-dan-sukses-dari-korea-euny-hong-z-lib-org-802' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Teknologi Informasi Dan Komunikasi Kelas 8 Eric Kurniawan Antonius Rachmat 2010 531', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/teknologi-informasi-dan-komunikasi-kelas-8-eric-kurniawan-antonius-rachmat-2010-531' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Spesial 2 678', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-spesial-2-678' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Pindad Vol 17 2022 764', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/majalah-pindad-vol-17-2022-764' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Data Arsitek Jilid 2 634', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/data-arsitek-jilid-2-634' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ahmad Thomson Sistem Dajjal 247', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/ahmad-thomson-sistem-dajjal-247' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Magnet Rezeki Edisi Revisi Nasrullah Z Lib Org 687', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/rahasia-magnet-rezeki-edisi-revisi-nasrullah-z-lib-org-687' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Install Windows 7 Tutorial Lengkap Dari A Sampai Z 862', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/cara-install-windows-7-tutorial-lengkap-dari-a-sampai-z-862' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '21998222 Kir 01 Lo Printing Kia 9 April 2021 C1 4 1 932', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/21998222-kir-01-lo-printing-kia-9-april-2021-c1-4-1-932' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '05 2 Bab Ii 70', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/05-2-bab-ii-70' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Influence 2006 Robert B Cialdini Phd 150', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/influence-2006-robert-b-cialdini-phd-150' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Futuhulghaib Shqjaelani 506', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/futuhulghaib-shqjaelani-506' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Paulo Coelho Sang Alkemis The Alchemist Gramedia Pustaka Utama 2005 135', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/paulo-coelho-sang-alkemis-the-alchemist-gramedia-pustaka-utama-2005-135' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Uu Nomor 5 Tahun 1960 657', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/uu-nomor-5-tahun-1960-657' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Saku Pelacakan Kontak Kasus Covid 19 Edisi Revisi I 928', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/buku-saku-pelacakan-kontak-kasus-covid-19-edisi-revisi-i-928' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Paint Technology Handbook 557', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/paint-technology-handbook-557' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Catatan Singkat Arsitektur Perbankan Indonesia 216', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/catatan-singkat-arsitektur-perbankan-indonesia-216' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '15546 3435 1 Ega Dyp Yasapdf Compress 543', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/15546-3435-1-ega-dyp-yasapdf-compress-543' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdf Atomic Habits Versi Indonesia James Clear Tagt Compress 738', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/pdf-atomic-habits-versi-indonesia-james-clear-tagt-compress-738' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2 Kepmen Desa Pdtt Nomor 16 Tentang Prioritas Penggunaan Dana Desa 2019 612', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2-kepmen-desa-pdtt-nomor-16-tentang-prioritas-penggunaan-dana-desa-2019-612' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Novel I Love You Once Too Many 337', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/novel-i-love-you-once-too-many-337' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ikan Nabi Yunus 202', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ikan-nabi-yunus-202' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Downacademia Com Ebook Berpikir Dan Berjiwa Besar 839', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/downacademia-com-ebook-berpikir-dan-berjiwa-besar-839' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Management An Evidence Based Approach 3rd Edition 46', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/management-an-evidence-based-approach-3rd-edition-46' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Man Search For Meaning', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/man-search-for-meaning' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bicara Itu Ada Seninya 315', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bicara-itu-ada-seninya-315' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'History Of Space 699', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/history-of-space-699' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1 834', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/1-834' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku 611', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-611' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pakrimpungan Sanjak Mangkasarak 436', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pakrimpungan-sanjak-mangkasarak-436' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Why We Want You To Be Rich', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/why-we-want-you-to-be-rich' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tramping With A Poet', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/tramping-with-a-poet' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1 Menit Yang Mengubah Hidup Anda', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/1-menit-yang-mengubah-hidup-anda' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '5 Cara Menjadi Luar Biasa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/5-cara-menjadi-luar-biasa' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Keajaiban Rezeki', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/7-keajaiban-rezeki' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Tulisan Terbaik Mardigu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/7-tulisan-terbaik-mardigu' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30 Hari Bebas Hutang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/30-hari-bebas-hutang' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'About Love Tere Liye', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/about-love-tere-liye' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Alpha Girl', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/alpha-girl' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Asbabul Wurud', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/asbabul-wurud' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahaya Lisan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/bahaya-lisan' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bedah Rheumatology', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/bedah-rheumatology' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Be Happy', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/be-happy' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bekam Sebagai Kedokteran Profetik', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/bekam-sebagai-kedokteran-profetik' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berharap Indah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/berharap-indah' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berpikir Seperti Nabi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berpikir-seperti-nabi' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bicara Itu Ada Seninya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/bicara-itu-ada-seninya' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Biografi Muhammad', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/biografi-muhammad' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Biografi Sahabat Nabi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/biografi-sahabat-nabi' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bleach Hart 41', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/bleach-hart-41' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Resep Selebriti', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Hobi dari perpus.org.', false, 'https://www.perpus.org/hobi/buku-resep-selebriti' 
FROM categories WHERE name = 'Hobi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ceros Dan Balozar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/ceros-dan-balozar' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Conan Case Part 2', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/conan-case-part-2' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Conan Vol 55', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/conan-vol-55' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Daftar Kosakata Bahasa Jawa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/daftar-kosakata-bahasa-jawa' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Daichohen Doraemon', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/daichohen-doraemon' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dampak Pemanasan Global', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sains dari perpus.org.', false, 'https://www.perpus.org/sains/dampak-pemanasan-global' 
FROM categories WHERE name = 'Sains' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dasar Public Speaking', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/dasar-public-speaking' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dinosaurus', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sains dari perpus.org.', false, 'https://www.perpus.org/sains/dinosaurus' 
FROM categories WHERE name = 'Sains' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Empat Langkah Pengampunan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/empat-langkah-pengampunan' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kaidah Dalam Membaca Alquran', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/kaidah-dalam-membaca-alquran' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kitab Anti Bodoh', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kitab-anti-bodoh' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Konsep Akal Alquran Dan Filsuf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/konsep-akal-alquran-dan-filsuf' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kungfu Komang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/kungfu-komang' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Langkah Ampuh Optimasi Seo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/langkah-ampuh-optimasi-seo' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Marketing Era 4 Point 0', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Hobi dari perpus.org.', false, 'https://www.perpus.org/hobi/marketing-era-4-point-0' 
FROM categories WHERE name = 'Hobi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mendidik Anak Dengan Bermain', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/mendidik-anak-dengan-bermain' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menguak Dunia Jin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/menguak-dunia-jin' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset Seri 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-seri-01' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset Seri 02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-seri-02' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Money Champ Paman Gober', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/money-champ-paman-gober' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nama Untuk Anak Anda', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bumil (Ibu Hamil) dari perpus.org.', false, 'https://www.perpus.org/bumil/nama-untuk-anak-anda' 
FROM categories WHERE name = 'Bumil (Ibu Hamil)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nutrition For Immunity', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/nutrition-for-immunity' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Penjelasan Terkait Agama Islam', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/penjelasan-terkait-agama-islam' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Red Queen', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/red-queen' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rich Dad Poor Dad Bahasa Melayu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rich-dad-poor-dad-bahasa-melayu' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sang Kunci Pusaka', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/sang-kunci-pusaka' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sapiens', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/sapiens' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Science Of Getting Rich', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/science-of-getting-rich' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seakan Kitorang Setengah Binatang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/seakan-kitorang-setengah-binatang' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Dunia Yang Disembunyikan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/sejarah-dunia-yang-disembunyikan' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seni Berbicara', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/seni-berbicara' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seni Hidup Minimalis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/seni-hidup-minimalis' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Simply Productive', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/simply-productive' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Si Paman Gober', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/si-paman-gober' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tak Masalah Menjadi Orang Yang Berbeda', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/tak-masalah-menjadi-orang-yang-berbeda' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tanya Jawab Nutrisi Di 1000 Hari Pertama', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/tanya-jawab-nutrisi-di-1000-hari-pertama' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tembus Target Jualan Online', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tembus-target-jualan-online' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Teori Ekonomi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/teori-ekonomi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Bad Guys', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/the-bad-guys' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '5 Cara Menjadi Pribadi Luar Biasa 427', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/5-cara-menjadi-pribadi-luar-biasa-427' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Internet Of Body 2021 900', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/internet-of-body-2021-900' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dahsyatnya Kekuatan Berpikir Positif 317', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/dahsyatnya-kekuatan-berpikir-positif-317' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '654', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/-----654' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Delivering Happiness Tony Hsieh 314', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/delivering-happiness-tony-hsieh-314' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ketika Cinta Bertasbih 1 183', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/ketika-cinta-bertasbih-1-183' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Verb 1 2 3 Regular And Irregular Beserta Artinya 350', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/verb-1-2-3-regular-and-irregular-beserta-artinya-350' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sk Eyd Edisi V 16082022 255', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sk-eyd-edisi-v-16082022-255' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '4507 Article Text 16543 1 10 20220103 454', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/4507-article-text-16543-1-10-20220103-454' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'K Pop Salah Gaul 248', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/k-pop-salah-gaul-248' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Teknik Coding Dasar Untuk Menjadi Apps Developer 4 739', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/teknik-coding-dasar-untuk-menjadi-apps-developer-4-739' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Psyco Chybernetics 867', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/psyco-chybernetics-867' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kelas12 Fisika Suharyanto 314', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kelas12-fisika-suharyanto-314' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Receipt Booking 754', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/receipt-booking-754' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bukit Apache 631', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/bukit-apache-631' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Charastudio Tutorial 470', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/charastudio-tutorial-470' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tere Liye Bulan 889', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/tere-liye-bulan-889' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The 5 Second Rule Transform Your Life Work And Confidence With Everyday Couragedrive 335', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-5-second-rule-transform-your-life-work-and-confidence-with-everyday-couragedrive-335' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Adoc Pub Mindset Sumber Buku Mindset Karangan Carol S Dweck 642', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/adoc-pub-mindset-sumber-buku-mindset-karangan-carol-s-dweck-642' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Master Class Ielts 406', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ebook-master-class-ielts-406' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Anti Gagap 480', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-anti-gagap-480' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bandit Bandit Dalton 977', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/bandit-bandit-dalton-977' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisah 47 Ronin 697', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/kisah-47-ronin-697' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Musashi Edisi Lengkap 475', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/musashi-edisi-lengkap-475' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '09tugas Makalah Pkn 725', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/09tugas-makalah-pkn-725' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bill 6281991306422 102022 463', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bill-6281991306422-102022-463' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Salawat Syaikh Abdul Qadir Jailani 80', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/salawat-syaikh-abdul-qadir-jailani-80' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Img 20230106 142812 39', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/img-20230106-142812-39' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Demontrasi Kontekstual 666', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/demontrasi-kontekstual-666' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Al Ijma Abu Bakar Muhammad Bin Ibrohim Bin Al Mundzir An Naisaburi 177', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/al-ijma-abu-bakar-muhammad-bin-ibrohim-bin-al-mundzir-an-naisaburi-177' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kelas Xi Fisika Kd 3 1 2 152', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/kelas-xi-fisika-kd-3-1-2-152' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahagia Kenapa Tidak 377', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bahagia-kenapa-tidak-377' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '11 Misteri Di Styles 615', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Misteri dari perpus.org.', false, 'https://www.perpus.org/misteri/11-misteri-di-styles-615' 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Boleh Dan Tidak Boleh Terhadap Non Muslim 54', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-boleh-dan-tidak-boleh-terhadap-non-muslim-54' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Role Of The Governments Of Indonesia 611', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-role-of-the-governments-of-indonesia-611' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perda Kota Semarang Nomor Nomor 12 Tahun 2004 Tahun 2004 11e6c5b042e8cb80a303313235393130 811', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/perda-kota-semarang-nomor-nomor-12-tahun-2004-tahun-2004-11e6c5b042e8cb80a303313235393130-811' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '16 Tujuh Kisah Lucky Luke 984', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/16-tujuh-kisah-lucky-luke-984' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Photo Hunt 0 13 3a Walkthrough 637', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/photo-hunt-0-13-3a-walkthrough-637' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dari Tidak Bisa Menjadi Bisa 402', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/dari-tidak-bisa-menjadi-bisa-402' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Download 662', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/download-662' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '4 Keys To Profitable Forex Trend Trading Teks English 107', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/4-keys-to-profitable-forex-trend-trading-teks-english-107' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pergi 504', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/pergi-504' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Entrepreneurid Panen Orderan Di Bisnis Online 934', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/entrepreneurid-panen-orderan-di-bisnis-online-934' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Doa Dzikir Nabawi 6', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/kumpulan-doa-dzikir-nabawi-6' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Technical Analysis For Mega Profit 791', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/technical-analysis-for-mega-profit-791' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bicara Itu Ada Seninya 890', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bicara-itu-ada-seninya-890' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bicara Itu Ada Seninya 313', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bicara-itu-ada-seninya-313' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Oopphp 414', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/oopphp-414' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Extra Life Walkthrough Ver 0 3 446', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/extra-life-walkthrough-ver-0-3-446' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doku Pub Sebuah Seni Untuk Bersikap Bodo Mark Manson 688', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doku-pub-sebuah-seni-untuk-bersikap-bodo-mark-manson-688' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Eticket Asornh 293', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/eticket-asornh-293' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Book Chap 4 Accounting 3 413', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/e-book-chap-4-accounting-3-413' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chibi Art Class A Complete Course In Drawing Chibi Cuties And Beasties 2019 By Yaoi 335', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/chibi-art-class-a-complete-course-in-drawing-chibi-cuties-and-beasties-2019-by-yaoi-335' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Foto Pahlawan 350', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/foto-pahlawan-350' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '260123 Undangan Peringatan Isro Miraj Sign 698', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/260123-undangan-peringatan-isro-miraj-sign-698' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2021pmlhk007 Menlhk 06102021120659 405', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2021pmlhk007-menlhk-06102021120659-405' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sunshine Love V 0 2 Walkthrough Ch2 Subscribestar Version 169', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/sunshine-love-v-0-2-walkthrough-ch2-subscribestar-version-169' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Digelar Untuk Pertama Kalinya Senja Fest 2022 Hadirkan Fiersa Besari Hingga Danila Cek Harga Tiketnya Di Sini Kapanlagi Co 184', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/digelar-untuk-pertama-kalinya-senja-fest-2022-hadirkan-fiersa-besari-hingga-danila-cek-harga-tiketnya-di-sini-kapanlagi-co-184' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '14889 Article Text 31425 36036 10 20200313 278', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/14889-article-text-31425-36036-10-20200313-278' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aam19 1 Ismail Navianto 667', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/aam19-1-ismail-navianto-667' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Primolutntab 991', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/primolutntab-991' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fathul Majid Syarah Kitab Tauhiddrive 328', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/fathul-majid-syarah-kitab-tauhiddrive-328' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nekritin Peters Naked Forex 42', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/nekritin-peters-naked-forex-42' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sampah Jadi Rupiah 30', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sampah-jadi-rupiah-30' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sampah Jadi Rupiah 638', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sampah-jadi-rupiah-638' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '01 Pengumuman Rekrutmen Fm Pisew 2023 1 612', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/01-pengumuman-rekrutmen-fm-pisew-2023-1-612' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '01 Pengumuman Rekrutmen Fm Pisew 2023 1 172', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/01-pengumuman-rekrutmen-fm-pisew-2023-1-172' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dunia Sophie Ebooks 880', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dunia-sophie-ebooks-880' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Party With Friends Lop Walkthrough Updated 920', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/party-with-friends-lop-walkthrough-updated-920' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Soji Shimada Pembunuhan Zodiak Tokyo The Tokyo Zodiac Murders 103', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/soji-shimada-pembunuhan-zodiak-tokyo-the-tokyo-zodiac-murders-103' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Camscanner 10 25 2022 17 59 73', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/camscanner-10-25-2022-17-59-73' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Bookmemahamigangguandepresimayor 524', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/e-bookmemahamigangguandepresimayor-524' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filf V0 17 Walkthrough 903', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/filf-v0-17-walkthrough-903' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamu Gak Sendiri Syahid Muhammad Z Lib Org 694', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kamu-gak-sendiri-syahid-muhammad-z-lib-org-694' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jujutsu Kaisen 0 347', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jujutsu-kaisen-0-347' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Majapahit2 731', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-majapahit2-731' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Adminpaud 13 Jjpaud Vol 9 No 3 Mulyana Sukarnih Putri 408 415 549', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/adminpaud-13-jjpaud-vol-9-no-3-mulyana-sukarnih-putri-408-415-549' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filf V0 17 Walkthrough 63', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/filf-v0-17-walkthrough-63' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Zgzizwiymmrhmzmxmgfkzdzmyjbknjrmzgfmnzawzdm3njc0mtzhnw 630', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/zgzizwiymmrhmzmxmgfkzdzmyjbknjrmzgfmnzawzdm3njc0mtzhnw-630' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pakjanggut 24bonekapencuri 734', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pakjanggut-24bonekapencuri-734' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berpikir Seperti Nabi Ig @free Book12 0', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berpikir-seperti-nabi-ig-@free-book12-0' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2022 01 07 K Marxisme C 161', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2022-01-07-k-marxisme-c-161' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '15 Organic Synthesis 787', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/15-organic-synthesis-787' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Askep 524', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-askep-524' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Wirdul Latif 487', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/wirdul-latif-487' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kelas 09 Smp Pendidikan Pancasila Dan Kewarganegaraan Siswa 977', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/kelas-09-smp-pendidikan-pancasila-dan-kewarganegaraan-siswa-977' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Pegangan Siswa Ipa Smp Kelas 9 Kurikulum 2013 Semester 1 386', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-pegangan-siswa-ipa-smp-kelas-9-kurikulum-2013-semester-1-386' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kelas 09 Smp Pendidikan Pancasila Dan Kewarganegaraan Siswa 872', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/kelas-09-smp-pendidikan-pancasila-dan-kewarganegaraan-siswa-872' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komunikasi Soft Skill 803', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/komunikasi-soft-skill-803' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bjt Tugas3publicspeaking 427', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bjt-tugas3publicspeaking-427' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Poster Dhe 383', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/poster-dhe-383' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Download Ebook 10 Juta Perbulan Dengan Whatsapp Marketing Dewangga Agniamedia Com 973', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/download-ebook-10-juta-perbulan-dengan-whatsapp-marketing-dewangga-agniamedia-com-973' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lkpd Ipa Berbasis Inkuiri Sindi Finishh 440', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/lkpd-ipa-berbasis-inkuiri-sindi-finishh-440' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Po 1 Biologi Alc Indonesia Www Defantri Com 501', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/po-1-biologi-alc-indonesia-www-defantri-com-501' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Science Checkpoint No 3 378', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/science-checkpoint-no-3-378' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Science Checkpoint No 3 610', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/science-checkpoint-no-3-610' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donalbebe 1425 Edisi Valentine 526', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donalbebe-1425-edisi-valentine-526' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kewirausahaan Of Ekma4370 Edisi 1 66', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kewirausahaan-of-ekma4370-edisi-1-66' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pedoman Cuti Pns Thn 2021 New 373', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pedoman-cuti-pns-thn-2021-new-373' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Sap 2021 852', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-sap-2021-852' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Effects Of Organic Matter On Crystallization Struvite In Biologically Treated Swine Wastewater 21', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/effects-of-organic-matter-on-crystallization-struvite-in-biologically-treated-swine-wastewater-21' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdfcoffee Com The Perfect Love Indah Riyanapdf Free 45', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/pdfcoffee-com-the-perfect-love-indah-riyanapdf-free-45' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Terjemah Al Hikam Pendekatan Abdi Pada Khaliqnya Edisi Revisidrive 121', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/terjemah-al-hikam-pendekatan-abdi-pada-khaliqnya-edisi-revisidrive-121' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2602244876 Dgda Scie6057037 Chemistryandbiology Question 3 45', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2602244876-dgda-scie6057037-chemistryandbiology-question-3-45' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Asuhan Bayi 203', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bumil (Ibu Hamil) dari perpus.org.', false, 'https://www.perpus.org/bumil/asuhan-bayi-203' 
FROM categories WHERE name = 'Bumil (Ibu Hamil)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'B4a3f Panduan Penggunaan Gps Garmin 76cs 618', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/b4a3f-panduan-penggunaan-gps-garmin-76cs-618' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berharap Apa 403', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/berharap-apa-403' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Introduction To The Insides Of 689', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/introduction-to-the-insides-of-689' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Grade 2 Story Hen 472', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/grade-2-story-hen-472' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A Fistful Of Warlocks Jim Butcher 758', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/a-fistful-of-warlocks-jim-butcher-758' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3145 Dilan 2 316', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/3145-dilan-2-316' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dari Tidak Bisa Menjadi Bisa 421', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/dari-tidak-bisa-menjadi-bisa-421' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Misteri Kurcaci Gaib Trio Detektif 58', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Misteri dari perpus.org.', false, 'https://www.perpus.org/misteri/misteri-kurcaci-gaib-trio-detektif-58' 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '93aristoteles Onassis 65', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/93aristoteles-onassis-65' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Id Buku Ajaib By Rhonda Byrne 532', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/id-buku-ajaib-by-rhonda-byrne-532' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Download 404', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/download-404' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dr Meta Hanindita 78 Resep Mpasi Sfile Mobi 709', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/dr-meta-hanindita-78-resep-mpasi-sfile-mobi-709' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '04 Dte Phonics Reading Program Zoom To The Moon 380', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/04-dte-phonics-reading-program-zoom-to-the-moon-380' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '02 Empat Pemburu Harta 159', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/02-empat-pemburu-harta-159' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Greya Craz Perfec Agreement 779', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/greya-craz-perfec-agreement-779' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Garry Martin Joseph Pear Behavior Modification What It Is And How To Do It Routledge 2019 868', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/garry-martin-joseph-pear-behavior-modification-what-it-is-and-how-to-do-it-routledge-2019-868' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Serial Misteri Bahasa Indonesia Wikipedia Indonesian 399', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-serial-misteri-bahasa-indonesia-wikipedia-indonesian-399' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pl Cs Hewan Qurban 2022 1 974', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pl-cs-hewan-qurban-2022-1-974' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nginx Cookbook 2nd Ed 2022 937', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/nginx-cookbook-2nd-ed-2022-937' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Invoice 1561283941 831', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/invoice-1561283941-831' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dr Meta Hanindita Spak Mommyclopedia 78 Resep Mpasipdf Compress 311', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/dr-meta-hanindita-spak-mommyclopedia-78-resep-mpasipdf-compress-311' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perempuan Penggemar Keringat 2002 295', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/perempuan-penggemar-keringat-2002-295' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Daily Stoic 366 Meditations On Wisdom Perseverance And The Art Of Livingdrive 848', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-daily-stoic-366-meditations-on-wisdom-perseverance-and-the-art-of-livingdrive-848' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jejak Lara By Ndaquilla 877', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/jejak-lara-by-ndaquilla-877' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Anestesi Pada Iom 875', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/anestesi-pada-iom-875' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Autentik Hal 6 9 426', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/autentik-hal-6-9-426' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '07 Digital Parenting Mendidik Anak Di Era Digital 1 308', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/07-digital-parenting-mendidik-anak-di-era-digital-1-308' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Umkm Krisna Nuratama 2021 767', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/buku-umkm-krisna-nuratama-2021-767' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Tuhan 650', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/sejarah-tuhan-650' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Digital Marketing Report 2023 1671698304 860', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/ebook-digital-marketing-report-2023-1671698304-860' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Digital Marketing Report 2023 1671698304 291', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/ebook-digital-marketing-report-2023-1671698304-291' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Stimulasi 572', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/stimulasi-572' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahasa Indonesia Bs Kls V 107', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/bahasa-indonesia-bs-kls-v-107' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Peradilan Agama Di Indonesia 582', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/peradilan-agama-di-indonesia-582' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Paket Scale Up 600', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/paket-scale-up-600' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Come Back To Bed I 276', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/come-back-to-bed-i-276' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Come Back To Bed I 686', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/come-back-to-bed-i-686' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komunikasi Itu Ada Seninya 180', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/komunikasi-itu-ada-seninya-180' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Sejarah Islam Modern 959', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/buku-sejarah-islam-modern-959' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pidi Baiq Ancika Sfile Mobi 833', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/pidi-baiq-ancika-sfile-mobi-833' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Zikir Dan Fikir Lengkap 448', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/buku-zikir-dan-fikir-lengkap-448' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Madloki Pov Your Sexy Gamer Girlfriend Chp 1 370', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/madloki-pov-your-sexy-gamer-girlfriend-chp-1-370' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filosofi Teras Henry Manampiring Z Lib Org 799', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/filosofi-teras-henry-manampiring-z-lib-org-799' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Laskar Pelangi 103', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/laskar-pelangi-103' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hadionwijoyo Pengantarekonomimikro 706', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/hadionwijoyo-pengantarekonomimikro-706' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Annexes Booklet En 804', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/annexes-booklet-en-804' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nilai Usp Mtk Tkj 932', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/nilai-usp-mtk-tkj-932' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '9284 32686 1 Sm 350', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/9284-32686-1-sm-350' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bintang Tere Liye Z Lib Org 596', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bintang-tere-liye-z-lib-org-596' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bibi Gill Sfile Mobi 673', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/bibi-gill-sfile-mobi-673' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Overgeared New 000 010 509', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/overgeared-new-000-010-509' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2 Review Of Algebra 740', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2-review-of-algebra-740' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Information Technology Investment 1 611', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/information-technology-investment-1-611' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kk 06 928', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/kk-06-928' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Laut Bercerita 370', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/laut-bercerita-370' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sohn Won Pyung Almond 995', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sohn-won-pyung-almond-995' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Amanat Hantu Petruk 198', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Dongeng & Fabel dari perpus.org.', false, 'https://www.perpus.org/dongeng-dan-fabel/amanat-hantu-petruk-198' 
FROM categories WHERE name = 'Dongeng & Fabel' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Op Chapter 1081 844', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/op-chapter-1081-844' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Pegangan Agama Hindu 878', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/buku-pegangan-agama-hindu-878' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Pegangan Agama Hindu 972', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/buku-pegangan-agama-hindu-972' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Edward De Bono Six Thinking Hatskitn Net 22', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/edward-de-bono-six-thinking-hatskitn-net-22' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Alpha Girl 881', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/alpha-girl-881' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Manual 1 575', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/manual-1-575' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Butterfly And The Rainbow 1 503', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-butterfly-and-the-rainbow-1-503' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1 Training Plc Basic 76', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/1-training-plc-basic-76' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '010 The Secret By Rhonda Byrne 33', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/010-the-secret-by-rhonda-byrne-33' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Backup Restore Mysql 771', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/backup-restore-mysql-771' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Memaknai Hakikat Cinta 790', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/memaknai-hakikat-cinta-790' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Psychology Of Successful Trading Behavioural Strategies For Profitability Tim 667', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-psychology-of-successful-trading-behavioural-strategies-for-profitability-tim-667' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '19 Isi Dan Sampul Cerpen Dan Dongeng Minuman Nusantara 287', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/19-isi-dan-sampul-cerpen-dan-dongeng-minuman-nusantara-287' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Three Little Pigs By Guiseppe Di Learnia Bibis Ir 33', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/three-little-pigs-by-guiseppe-di-learnia-bibis-ir-33' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Kisah Teladan 755', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/kumpulan-kisah-teladan-755' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mp Mpasibook 260', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/mp-mpasibook-260' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Magic Secret Bahasa Indo 798', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-magic-secret-bahasa-indo-798' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How To Influence People 872', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/how-to-influence-people-872' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How To Influence People 451', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/how-to-influence-people-451' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How To Influence People 94', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/how-to-influence-people-94' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Magic Secret Bahasa Indo 958', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-magic-secret-bahasa-indo-958' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pemasaransyariah 340', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pemasaransyariah-340' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Elae Iraniasy Resume Keperawatan Ruang Vk 872', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/elae-iraniasy-resume-keperawatan-ruang-vk-872' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Wealth Strategy Ala Kiyosaki 473', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/wealth-strategy-ala-kiyosaki-473' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Beasiswa International 672', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/kumpulan-beasiswa-international-672' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'S Psr 0906776 Chapter1 416', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/s-psr-0906776-chapter1-416' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Asterix Di Inggris 581', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/asterix-di-inggris-581' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bread 131', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bread-131' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Amalan Nisfu Sya Ban 843', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/amalan-nisfu-sya-ban-843' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Puasa Zakat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rahasia-puasa-zakat' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Islam Kafir Ateis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/islam-kafir-ateis' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sang Pemenang By Priaseratuspersen 190', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/sang-pemenang-by-priaseratuspersen-190' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Belajar_bahasa_inggris_dengan_mudah 346', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/belajar_bahasa_inggris_dengan_mudah-346' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2 Pertualangan Sherlock Holmes 901', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2-pertualangan-sherlock-holmes-901' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aafp_catagetohumanage 191', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/aafp_catagetohumanage-191' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Anti Gagap 480', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-anti-gagap-480' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook   Boleh Dan Tidak Boleh Terhadap Non Muslim 54', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook---boleh-dan-tidak-boleh-terhadap-non-muslim-54' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A Man Called Ahok 893 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/a-man-called-ahok-893-pdf' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Routledge Handbook Of Discourse Analysisdrive 270', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-routledge-handbook-of-discourse-analysisdrive-270' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2 Buku Seri Bumdesa Kelayakan Usaha Bum Desa 3 858', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/2-buku-seri-bumdesa-kelayakan-usaha-bum-desa-3-858' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Asterix Dan Panci Sup Bawang 498', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/asterix-dan-panci-sup-bawang-498' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '433 Id Mindset Mengubah Pola Berpikir Untuk Perubahan Besar Dalam Hidup Anda By Carol S Dweck 114', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/433-id-mindset-mengubah-pola-berpikir-untuk-perubahan-besar-dalam-hidup-anda-by-carol-s-dweck-114' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Falcon Of Squawtooth By Arthur 837', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/falcon-of-squawtooth-by-arthur-837' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Clarence Darrow Crime Its Cause And Treatment 379', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/clarence-darrow-crime-its-cause-and-treatment-379' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dokumen Tips Donal Bebek Buruan Polisi 961', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/dokumen-tips-donal-bebek-buruan-polisi-961' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'To Be So Fond 1 700', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/to-be-so-fond-1-700' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisah Kasih Abadi 23 Kerajaan Yang Terpecah 641', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/kisah-kasih-abadi-23-kerajaan-yang-terpecah-641' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ilmu Komunikasi 565 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ilmu-komunikasi-565-pdf' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Delivering Happiness Tony Hsieh 111', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/delivering-happiness-tony-hsieh-111' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pembahasan Cat 432', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pembahasan-cat-432' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '013 Asmaul Husna 72', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/013-asmaul-husna-72' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '00000560 Amalan Bulan Rajab 496', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/00000560-amalan-bulan-rajab-496' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Katolik Bs Kls Viii 267', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/katolik-bs-kls-viii-267' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lv Simple Moist Cake Tintin Rayner 691', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/lv-simple-moist-cake-tintin-rayner-691' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lv Simple Moist Cake Tintin Rayner 809', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/lv-simple-moist-cake-tintin-rayner-809' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The False Prince 221', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/the-false-prince-221' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Risalah Tentang Ahlul Bait Dan Nasab Baalawi 773', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/risalah-tentang-ahlul-bait-dan-nasab-baalawi-773' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hb Hanif Menjawab Syubhat Imaduddin Seputar Nasab Habaib 755', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/hb-hanif-menjawab-syubhat-imaduddin-seputar-nasab-habaib-755' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rdg Iid Iga 2023 475', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/rdg-iid-iga-2023-475' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berani Tidak Disukai Ichiro Kishimi Fumitake Z Lib Org 138', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berani-tidak-disukai-ichiro-kishimi-fumitake-z-lib-org-138' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Followers Megan Angelo Angelo Megan Z Library 476', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/followers-megan-angelo-angelo-megan-z-library-476' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Tupai Ok 155', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-tupai-ok-155' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Brochure Prusolusi Sehat Plus Pro 220902 290', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/brochure-prusolusi-sehat-plus-pro-220902-290' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sociology For Dummies 111', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/sociology-for-dummies-111' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ekonomi Mikro Islam Restricted 786', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ekonomi-mikro-islam-restricted-786' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Memulai Bisnis Di Instgram Edited 679', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/memulai-bisnis-di-instgram-edited-679' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Frhling And Others 2009 A History Of Australian Strategic Policy Since 1945 671', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/frhling-and-others-2009-a-history-of-australian-strategic-policy-since-1945-671' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Id 350 Resep Mpasi Makanan Sehat Untuk Anak Oleh Ayu Kharie 307', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/id-350-resep-mpasi-makanan-sehat-untuk-anak-oleh-ayu-kharie-307' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Panduan Mendidik Anak At 975', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/ebook-panduan-mendidik-anak-at-975' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Art Of Thinking Clearlydrive 365', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/the-art-of-thinking-clearlydrive-365' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '567 Fakta Tentang Mpasi Dr Meta Hanindita Sp A 393', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/567-fakta-tentang-mpasi-dr-meta-hanindita-sp-a-393' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gon Bangun 552', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/gon-bangun-552' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Dapat Melahirkan Normal Berhasil Hindari Caesar 527', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bumil (Ibu Hamil) dari perpus.org.', false, 'https://www.perpus.org/bumil/cara-dapat-melahirkan-normal-berhasil-hindari-caesar-527' 
FROM categories WHERE name = 'Bumil (Ibu Hamil)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kepgub Nomor 29 Tahun 2023 Tentang Pejabat Penatausahaan Pengguna Barang Kuasa Pengguna Barang Pengurus', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kepgub-nomor-29-tahun-2023-tentang-pejabat-penatausahaan-pengguna-barang-kuasa-pengguna-barang-pengurus' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Marketing Selling Update 554', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/marketing-selling-update-554' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Potensi Pengembangan Ekraf Jabar 975', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/potensi-pengembangan-ekraf-jabar-975' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Product Market Fit 208', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/product-market-fit-208' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Wind Breaker Part1 01 20', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/wind-breaker-part1-01-20' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Code Api Rp 577 Third Edition 2020 165', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/code-api-rp-577-third-edition-2020-165' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Terry Pratchett The Light Fantastic 970', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/terry-pratchett-the-light-fantastic-970' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisi Pasge Kelas 2 2022 2023 456', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kisi-pasge-kelas-2-2022-2023-456' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sepasang Kaos Kaki Hitam Chandralight Wordpress Com 771', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sepasang-kaos-kaki-hitam-chandralight-wordpress-com-771' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aksi Nyata Perencanaan Untuk Perbaikan Satuan Pendidikan 2 298', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/aksi-nyata-perencanaan-untuk-perbaikan-satuan-pendidikan-2-298' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '9786020425528 627', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/9786020425528-627' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kariage Kun 3', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/kariage-kun-3' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kariage Kun 4', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/kariage-kun-4' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kariage Kun 6', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/kariage-kun-6' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kariage Kun 7', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/kariage-kun-7' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Lucu Golongan Darah Sesuai Karakter Kita', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-lucu-golongan-darah-sesuai-karakter-kita' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Personality Trng', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/personality-trng' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '8 Hal Yang Perlu Kamu Tahu Tentang Restrukturisasi Kredit 2 191', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/8-hal-yang-perlu-kamu-tahu-tentang-restrukturisasi-kredit-2-191' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Islamku Islam Anda Islam Kita Abdurrahman Wahid Gus Dur 209', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/islamku-islam-anda-islam-kita-abdurrahman-wahid-gus-dur-209' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kekuatan Sugesti Desember 2022 903', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/majalah-kekuatan-sugesti-desember-2022-903' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ulumul Quran 506', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ulumul-quran-506' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menyusun Rencana Bisnis Business Plan Tim Dosen Kwu Unp 824', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/menyusun-rencana-bisnis-business-plan-tim-dosen-kwu-unp-824' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Spesial 2 678', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-spesial-2-678' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Party With Friends Lop Walkthrough Updated 951', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Ensiklopedia dari perpus.org.', false, 'https://www.perpus.org/ensiklopedia/party-with-friends-lop-walkthrough-updated-951' 
FROM categories WHERE name = 'Ensiklopedia' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdfcoffee Com Panduan Lengkap Merawat Bayi 0 1tahun Mommyclopediapdf 3 Free 394', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/pdfcoffee-com-panduan-lengkap-merawat-bayi-0-1tahun-mommyclopediapdf-3-free-394' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Verb 1 2 3 Regular And Irregular Beserta Artinya 350', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/verb-1-2-3-regular-and-irregular-beserta-artinya-350' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mutiara Nasihat Penuh Manfaat 827', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/mutiara-nasihat-penuh-manfaat-827' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 1177 1943387520940180 33', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/10-1177-1943387520940180-33' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Saku Digital Mudik Aman Mudik Sehat Jalan Tol Jasa Marga 824', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/buku-saku-digital-mudik-aman-mudik-sehat-jalan-tol-jasa-marga-824' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ipone 1 401', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ipone-1-401' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1 Manajemen Pemasaran Satriadi Dkk 2021 981', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/1-manajemen-pemasaran-satriadi-dkk-2021-981' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1 Manajemen Pemasaran Satriadi Dkk 2021 536', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/1-manajemen-pemasaran-satriadi-dkk-2021-536' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Albertcamus Orang Orangterbungkam 939', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/albertcamus-orang-orangterbungkam-939' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ramadhan Yang Kunanti 693', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/ramadhan-yang-kunanti-693' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengertian Agribisnis By Bayu Krisnamurthi 237', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pengertian-agribisnis-by-bayu-krisnamurthi-237' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Pemrograman Web Dengan Php Dan Mys 600', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/ebook-pemrograman-web-dengan-php-dan-mys-600' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fiersa Gariswaktu 698', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/fiersa-gariswaktu-698' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Skripsi Yuni Liscahyati 123400228 880', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/skripsi-yuni-liscahyati-123400228-880' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Rahasia Geez 418', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/buku-rahasia-geez-418' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Legger Ii D 1 214', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/legger-ii-d-1-214' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Rahasia Geez 428', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/buku-rahasia-geez-428' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Rahasia Geez 938', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/buku-rahasia-geez-938' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Practice Test Toefl Cmedia 948', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/practice-test-toefl-cmedia-948' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Petualangan Tintin 1929 1 Le Vingtime Sicle 632', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/petualangan-tintin-1929-1-le-vingtime-sicle-632' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Petualangan Tintin 1937 Rahasia Pulau Hitam 128', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/petualangan-tintin-1937-rahasia-pulau-hitam-128' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Petualangan Tintin 1940 Kepiting Bercapit Emas 958', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/petualangan-tintin-1940-kepiting-bercapit-emas-958' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Album Film Tintin 1972 Tintin Di Danau Hiu 278', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/album-film-tintin-1972-tintin-di-danau-hiu-278' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Petualangan Tintin 1943 2 Tujuh Bola Ajaib 582', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/petualangan-tintin-1943-2-tujuh-bola-ajaib-582' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Petualangan Tintin 1956 Hiu Hiu Laut Merah 565', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/petualangan-tintin-1956-hiu-hiu-laut-merah-565' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Petualangan Tintin 1961 Zamrud Castafiore 305', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/petualangan-tintin-1961-zamrud-castafiore-305' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perempuan Di Titik Nol By Nawal El Saadawi 549', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/perempuan-di-titik-nol-by-nawal-el-saadawi-549' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Elva Widya Pribadi Jurnal Zam Zam Rsi Sultan Agung Semarang Sesuai Panduan Academia 07 07 2023 63', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/elva-widya-pribadi-jurnal-zam-zam-rsi-sultan-agung-semarang-sesuai-panduan-academia-07-07-2023-63' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Elva Widya Pribadi Jurnal Zam Zam Rsi Sultan Agung Semarang Sesuai Panduan Academia 07 07 2023 761', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/elva-widya-pribadi-jurnal-zam-zam-rsi-sultan-agung-semarang-sesuai-panduan-academia-07-07-2023-761' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Meraup Keutamaan Dzulhijjah 771', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/meraup-keutamaan-dzulhijjah-771' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Nutrition Guidelines 1 To 5 Years 999', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/7-nutrition-guidelines-1-to-5-years-999' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Terra Infinita Extraterrestrial Worlds And Their Civilizations 232', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/terra-infinita-extraterrestrial-worlds-and-their-civilizations-232' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Communications 1948 01 597', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/communications-1948-01-597' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Psychology Of Successful Trading Behavioural Strategies For Profitability Tim 667 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-psychology-of-successful-trading-behavioural-strategies-for-profitability-tim-667-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sampah Jadi Rupiah 638 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sampah-jadi-rupiah-638-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Primolutntab 991 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/primolutntab-991-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Po 1 Biologi Alc Indonesia Www Defantri Com 501 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/po-1-biologi-alc-indonesia-www-defantri-com-501-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pidi Baiq Ancika Sfile Mobi 833 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pidi-baiq-ancika-sfile-mobi-833-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pergi 504 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pergi-504-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perempuan Penggemar Keringat 2002 295 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/perempuan-penggemar-keringat-2002-295-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdfcoffee Com The Perfect Love Indah Riyanapdf Pdf Free 45 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pdfcoffee-com-the-perfect-love-indah-riyanapdf-pdf-free-45-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Novel I Love You Once Too Many 337 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/novel-i-love-you-once-too-many-337-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Manual 1 575 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/manual-1-575-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lkpd Ipa Berbasis Inkuiri Sindi Finishh 440 Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/lkpd-ipa-berbasis-inkuiri-sindi-finishh-440-pdf' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Kesalahan Fatal Gagal Closing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/7-kesalahan-fatal-gagal-closing' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pendidikan Sex Untuk Anak', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/pendidikan-sex-untuk-anak' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Modul Pengenalan Edukasi Seksual', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/modul-pengenalan-edukasi-seksual' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Saku Catin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/buku-saku-catin' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Kia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/buku-kia' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pemberian Makanan Bayi Anak', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/pemberian-makanan-bayi-anak' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mahir Jualan Di Facebook', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/mahir-jualan-di-facebook' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Grabmart Deck 01 (1)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/grabmart-deck-01-(1)' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Epaper Radar Bogor 23 Juni 2023', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/epaper-radar-bogor-23-juni-2023' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Jualan Di Instagram', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-jualan-di-instagram-' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bacaan 29 283', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/bacaan-29-283' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buya Hamka Pribadi Dan Martabat By Rusydi Hamka', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/buya-hamka-pribadi-dan-martabat-by-rusydi-hamka' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bandar Mology', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bandar-mology' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aristoteles Inspirasi Untuk Hidup Lebih Bermakna By Sahrul Mauludi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/aristoteles-inspirasi-untuk-hidup-lebih-bermakna-by-sahrul-mauludi' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Alan Greenspan Sosok Di Balik Gejolak Ekonomi Dunia By Bob Woodward', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/alan-greenspan-sosok-di-balik-gejolak-ekonomi-dunia-by-bob-woodward' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengajuan Pelanggan 159', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pengajuan-pelanggan-159' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lagi Probation  Menikmati Perjalanan Mencari Kerja By Samuel Ray', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/lagi-probation--menikmati-perjalanan-mencari-kerja-by-samuel-ray' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Homo Deus By Yuval Noah Harari', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/homo-deus-by-yuval-noah-harari' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Citizen 4.0 By Hermawan Kertajaya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/citizen-4.0-by-hermawan-kertajaya' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Technical Analysis For Mega Profit By Edianto Ong', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/technical-analysis-for-mega-profit-by-edianto-ong' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sapiens By Yuval Noah Harari', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/sapiens-by-yuval-noah-harari' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pirates And Emperors By Noam Chomsky', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/pirates-and-emperors-by-noam-chomsky' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'My Public Speaking By Hilbram Dunar (z Lib.org)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/my-public-speaking-by-hilbram-dunar-(z-lib.org)' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Trik Public Speaking Untuk Pemula', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/trik-public-speaking-untuk-pemula' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Startup Business Models', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/startup-business-models' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Product Market Fit', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/product-market-fit' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'President Speech_tda To The Next Level_8.0', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/president-speech_tda-to-the-next-level_8.0' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Dawn Of The Future 976', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-dawn-of-the-future-976' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Membangun Tim Untuk Scale Up Bisnis Tembus Zona Umkm', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/membangun-tim-untuk-scale-up-bisnis-tembus-zona-umkm' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Membangun Culture Ebook', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/membangun-culture-ebook' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Korupsi Pada Masa Khalifah Usman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/korupsi-pada-masa-khalifah-usman' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Indonesia Milennial Report 2022', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/indonesia-milennial-report-2022' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Indonesia Gen Z Report 2022', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/indonesia-gen-z-report-2022' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '17 Teknik Closing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/17-teknik-closing' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Belajar Goblok Dari Bob Sadino Tanpa Tujuan Tanpa Rencana Tanpa Harapan By Dodi Mawardi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/belajar-goblok-dari-bob-sadino-tanpa-tujuan-tanpa-rencana-tanpa-harapan-by-dodi-mawardi' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Asian Godfathers Menguak Tabir Perselingkuhan Pengusaha Dan Penguasa By Joe Studwell', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/asian-godfathers-menguak-tabir-perselingkuhan-pengusaha-dan-penguasa-by-joe-studwell' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Anak Muda Miliarder Saham By Andika Sutoro Putra', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/anak-muda-miliarder-saham-by-andika-sutoro-putra' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Agar Siapa Saja Mau Melakukan Apa Saja Untuk Anda', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/agar-siapa-saja-mau-melakukan-apa-saja-untuk-anda' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30 Hari Jago Jualan Dewaekaprayoga Pdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/30-hari-jago-jualan-dewaekaprayoga-pdf' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '01 Jangan Membuat Masalah Kecil Jadi Masalah Besar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/01-jangan-membuat-masalah-kecil-jadi-masalah-besar' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Nobita Dan Planet Bintang 773', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/10-nobita-dan-planet-bintang-773' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'You Do You Discovering Life Through Expe 621', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/you-do-you-discovering-life-through-expe-621' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'You Do You Discovering Life Through Expe 535', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/you-do-you-discovering-life-through-expe-535' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdfcoffee Com Es Fantasteen Scary Teru Teru Bozupdf Free 331', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/pdfcoffee-com-es-fantasteen-scary-teru-teru-bozupdf-free-331' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kecil Kecil Berbahaya 526', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kecil-kecil-berbahaya-526' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cerita Dongeng 858', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/cerita-dongeng-858' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Membaca Pikiran Orang Lewat Bahasa Tubuh Diamata Eka Putra 700', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/membaca-pikiran-orang-lewat-bahasa-tubuh-diamata-eka-putra-700' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3 Langkah Optimasi Reseller 760', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/3-langkah-optimasi-reseller-760' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Terjemah Fawaidul Fawaid Ibnu Qayyim 322', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/terjemah-fawaidul-fawaid-ibnu-qayyim-322' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lingga Ebook Komik Permata 197', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/lingga-ebook-komik-permata-197' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Document 877', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/document-877' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doc2 24', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/doc2-24' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doc2 118', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/doc2-118' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '01 Sherlock Holmes Penelusuran Benang Merah 755', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/01-sherlock-holmes-penelusuran-benang-merah-755' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3 Upgrade Terpenting Dalam Hidup Anda 65', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/3-upgrade-terpenting-dalam-hidup-anda-65' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3 Upgrade Terpenting Dalam Hidup Anda 963', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/3-upgrade-terpenting-dalam-hidup-anda-963' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'System Design The Big Archive 571', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/system-design-the-big-archive-571' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Motivasi Dengan Perspektif Psikologi Islam Cover 2 274', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Motivasi dari perpus.org.', false, 'https://www.perpus.org/motivasi/buku-motivasi-dengan-perspektif-psikologi-islam-cover-2-274' 
FROM categories WHERE name = 'Motivasi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Motivasi Dengan Perspektif Psikologi Islam Cover 2 417', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Motivasi dari perpus.org.', false, 'https://www.perpus.org/motivasi/buku-motivasi-dengan-perspektif-psikologi-islam-cover-2-417' 
FROM categories WHERE name = 'Motivasi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Hypnosis Meta Nlp 73', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-hypnosis-meta-nlp-73' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '20000 Leagues Under The Sea 391', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/20000-leagues-under-the-sea-391' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Endurance Training 280', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/endurance-training-280' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Endurance Training 45', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/endurance-training-45' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Age Of Reason 897', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-age-of-reason-897' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1147 Article Text 2033 1 10 20220223 785', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/1147-article-text-2033-1-10-20220223-785' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bhumi Dan Bulan Eriska Helmi 979', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bhumi-dan-bulan-eriska-helmi-979' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Grape Pupuk Agar Cepat Berbuah 578', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/grape-pupuk-agar-cepat-berbuah-578' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisi Kisi Ekonomi 566', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kisi-kisi-ekonomi-566' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Catatan Kajian Sirah 199', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/catatan-kajian-sirah-199' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Harry Potter 03 Harry Potter Dan Tawanan Azkaban 1 1 896', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/harry-potter-03-harry-potter-dan-tawanan-azkaban-1-1-896' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '03 Sherlock Holmes Lembah Kematian 846', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/03-sherlock-holmes-lembah-kematian-846' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tugas Mandiri 1 334', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tugas-mandiri-1-334' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chairul Tanjung Sc 467', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/chairul-tanjung-sc-467' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dunia Sophie Sebuah Novel Filsafat 1 1 403', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dunia-sophie-sebuah-novel-filsafat-1-1-403' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ikan Nabi Yunus 202', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ikan-nabi-yunus-202' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sapiensdrive 885', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/sapiensdrive-885' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Article Lca Mars 2023 636', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/article-lca-mars-2023-636' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'C208b Groundschool Solenta 410', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/c208b-groundschool-solenta-410' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chicken Soup For The Soul Memulai Kembali Hidup By Amy Newmark  Claire Cook', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/chicken-soup-for-the-soul-memulai-kembali-hidup-by-amy-newmark--claire-cook' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chicken Soup For The Soul Kekuatan Bersyukur 182', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/chicken-soup-for-the-soul-kekuatan-bersyukur-182' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cerita Cinta Enrico By Ayu Utami', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/cerita-cinta-enrico-by-ayu-utami' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Cepat Membaca Bahasa Tubuh By Joe Navarro  Marvin Karlins', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-cepat-membaca-bahasa-tubuh-by-joe-navarro--marvin-karlins' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rangkaianlistrik Magnet 2 282', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/rangkaianlistrik-magnet-2-282' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ditta Ads 2 March 2023 985', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ditta-ads-2-march-2023-985' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tugas B Indo Badak Jawa 1 897', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tugas-b-indo-badak-jawa-1-897' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Analisis Penyesuaian Ptkp 2013 80', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/analisis-penyesuaian-ptkp-2013-80' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bxbe 92', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bxbe-92' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Malin 2 1 66', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/malin-2-1-66' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '6099 20050 1 Pb 909', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/6099-20050-1-pb-909' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lintang Si Bintang 815', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/lintang-si-bintang-815' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '542 3480 1 Pb 234', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/542-3480-1-pb-234' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Blanko Form Permohonan Tanah Adat Kab 230314 143646 891', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/blanko-form-permohonan-tanah-adat-kab-230314-143646-891' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lechner Anger Rammstedtsocioemotionalskills Final 839', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/lechner-anger-rammstedtsocioemotionalskills-final-839' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diane E Papalia Experience Human Development 2021 480', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/diane-e-papalia-experience-human-development-2021-480' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2018 Peran Serta Masyarakat 320', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2018-peran-serta-masyarakat-320' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hujan Tere Liye Z Lib Org 456', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/hujan-tere-liye-z-lib-org-456' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pedoman Studi Potensi Pra Studi Kelayakan Pltmh 916', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pedoman-studi-potensi-pra-studi-kelayakan-pltmh-916' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '31 Barisan Pujiiryanti 228', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/31-barisan-pujiiryanti-228' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hikayat Iskandar Muda 304', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/hikayat-iskandar-muda-304' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengantar Statistika Matematika Nugroho 774', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/pengantar-statistika-matematika-nugroho-774' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Unlimted Power By Anthony Robbins 226', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/unlimted-power-by-anthony-robbins-226' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cracking The Coding Interview 6th Edition 189 Programming Questions And Solutions 409', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cracking-the-coding-interview-6th-edition-189-programming-questions-and-solutions-409' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Teach Me To Do It Myself Montessori Activities For You And Your Childdrive 87', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komedi dari perpus.org.', false, 'https://www.perpus.org/komedi/teach-me-to-do-it-myself-montessori-activities-for-you-and-your-childdrive-87' 
FROM categories WHERE name = 'Komedi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kegiatan Kepanduan 126', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kegiatan-kepanduan-126' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fandri Wahyu Firmansyah 476', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/fandri-wahyu-firmansyah-476' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Trading In The Zone Master The Market With Confidence Discipline And A Winning Attitudedrive 354', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/trading-in-the-zone-master-the-market-with-confidence-discipline-and-a-winning-attitudedrive-354' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Islam In Light Of History 762', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/islam-in-light-of-history-762' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jagoan Cs Online 1 671', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/jagoan-cs-online-1-671' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Panduan Facebook Ads Pemula 425', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/ebook-panduan-facebook-ads-pemula-425' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nanda 2018 2020 3 876', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/nanda-2018-2020-3-876' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sku Penegak 523', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/sku-penegak-523' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdfcoffee Com Sb Laut Bercerita Leila S Chudoripdf Free 671', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/pdfcoffee-com-sb-laut-bercerita-leila-s-chudoripdf-free-671' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Undangan Pelatihan Travelbestie By Meta 842', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/undangan-pelatihan-travelbestie-by-meta-842' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A Course In Light Speed Reading 332', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/a-course-in-light-speed-reading-332' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Membuat Website Dengan Wordpress', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/membuat-website-dengan-wordpress' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Science Of Daily Self Discipline Using Science And Daily Practices To Build Your Willpower Self Confidence And Everyday Habits To Achieve Long Term Goalsdrive 903', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-science-of-daily-self-discipline-using-science-and-daily-practices-to-build-your-willpower-self-confidence-and-everyday-habits-to-achieve-long-term-goalsdrive-903' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '74 Isi Dan Sampul Kalah Oleh Si Cerdik 779', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/74-isi-dan-sampul-kalah-oleh-si-cerdik-779' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Grit Angela Duckworth 693', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/grit-angela-duckworth-693' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Download Ebook Wirid Pembuka Rezeki 790', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/download-ebook-wirid-pembuka-rezeki-790' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Download Ebook Wirid Pembuka Rezeki 584', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/download-ebook-wirid-pembuka-rezeki-584' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Prof Dr Alum Simbolon S H M Hum Ppt Uuck Dari Perspektif Persaingan Usaha 169', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/prof-dr-alum-simbolon-s-h-m-hum-ppt-uuck-dari-perspektif-persaingan-usaha-169' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cerpen Kompas Bagian 405', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/cerpen-kompas-bagian-405' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1915 4092 1 Sm 140', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/1915-4092-1-sm-140' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Citra Novy Satu Atap 449', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/citra-novy-satu-atap-449' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1898 Article Text 4311 1 10 20220131 1 227', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/1898-article-text-4311-1-10-20220131-1-227' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Wireles Scanning 342', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/wireles-scanning-342' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemon Petualangan 1 189', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemon-petualangan-1-189' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fadli Aryasatya Setiawan 871', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/fadli-aryasatya-setiawan-871' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '108 Resep Masakan Ayam Pop Dyah Tyas 214', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/108-resep-masakan-ayam-pop-dyah-tyas-214' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jaringangelapfreemasonry 238', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jaringangelapfreemasonry-238' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Cover Isi Skripsi Bab 1 Bab 5 17103050089 Raiz Azmi Roihan 850', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/7-cover-isi-skripsi-bab-1-bab-5-17103050089-raiz-azmi-roihan-850' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Blue Full Photo Minimalist Climate Change Poster 1 813', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/blue-full-photo-minimalist-climate-change-poster-1-813' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Promo Umkm Endorsement Ka Tasyi Athasyia 1 8', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/promo-umkm-endorsement-ka-tasyi-athasyia-1-8' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cloud Data Science For Dummies 815', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cloud-data-science-for-dummies-815' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Belajar Membuat Pantun 334', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/belajar-membuat-pantun-334' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisi Kisi Mid Smp1 1 562', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kisi-kisi-mid-smp1-1-562' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bab 1 Buku Dampak Wisata Alam 441', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bab-1-buku-dampak-wisata-alam-441' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Brosur Honda Cbr 250r1 62', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/brosur-honda-cbr-250r1-62' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Layla Majnun 328', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/layla-majnun-328' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Keigo Higashino Salvation Of A Saint 667', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/keigo-higashino-salvation-of-a-saint-667' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '20719 Article Text 27160 1 10 20180430 953', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/20719-article-text-27160-1-10-20180430-953' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Atomic Habits By James Clear 298', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/atomic-habits-by-james-clear-298' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dilemma Ebook 7', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/dilemma-ebook-7' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Crime And Punishment 177', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/crime-and-punishment-177' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Empat Langkah Pengampunan William Fergus Martin 45', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/empat-langkah-pengampunan-william-fergus-martin-45' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Filsafat Umum Lengkap Edite 870', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-filsafat-umum-lengkap-edite-870' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Alvin Ardiansyah A14 2022 04019 Uaskompgraf 7203 474', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/alvin-ardiansyah-a14-2022-04019-uaskompgraf-7203-474' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Alvin Ardiansyah A14 2022 04019 Uaskompgraf 7203 254', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/alvin-ardiansyah-a14-2022-04019-uaskompgraf-7203-254' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Full Naskah Buku Eksperimen Final 386', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/full-naskah-buku-eksperimen-final-386' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mk Jb Sumarlin 655', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/mk-jb-sumarlin-655' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Selfdevelopmentandthewaytopower 10031075 99', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/selfdevelopmentandthewaytopower-10031075-99' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Surat Ijin Lokasi 2 291', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/surat-ijin-lokasi-2-291' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A5226fd4 F653 4079 Ae65 688b12660b68 161', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/a5226fd4-f653-4079-ae65-688b12660b68-161' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A5226fd4 F653 4079 Ae65 688b12660b68 407', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/a5226fd4-f653-4079-ae65-688b12660b68-407' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A5226fd4 F653 4079 Ae65 688b12660b68 826', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/a5226fd4-f653-4079-ae65-688b12660b68-826' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '02 Model Kerjasama Antar Daerah S2 Plod Ugm 4 149', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/02-model-kerjasama-antar-daerah-s2-plod-ugm-4-149' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pmgi 3d Volume 01 495', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/pmgi-3d-volume-01-495' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pendampr21 Kim Xb 01 Bab 2 Aturan Penentuan Biloks 977', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pendampr21-kim-xb-01-bab-2-aturan-penentuan-biloks-977' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mandatory Edisi 2 Lengkap 870', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/mandatory-edisi-2-lengkap-870' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Participatory Culture 147', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/participatory-culture-147' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pendidikan Karakter Berbasis Sastra 921', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/pendidikan-karakter-berbasis-sastra-921' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Teror Monster Salju 223', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/teror-monster-salju-223' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jika Kita Tak Pernah Jadi Apa Apa Alvi Syahrin Z Lib Org 474', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/jika-kita-tak-pernah-jadi-apa-apa-alvi-syahrin-z-lib-org-474' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdfcoffee Com Komik Donal Bebek Paman Gober Free 459', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/pdfcoffee-com-komik-donal-bebek-paman-gober-free-459' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '6 Donal Bebek Mencari Telur Hilang 488', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/6-donal-bebek-mencari-telur-hilang-488' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2021pmlhk007 Menlhk 06102021120659 405', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2021pmlhk007-menlhk-06102021120659-405' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Bookmemahamigangguandepresimayor 524', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/e-bookmemahamigangguandepresimayor-524' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bhumi Dan Bulan Eriska Helmi 979', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bhumi-dan-bulan-eriska-helmi-979' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Antropologi Kesehatan 477', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/antropologi-kesehatan-477' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Manajemen Pelayanan Administrasi Rumah Sakit 509', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/manajemen-pelayanan-administrasi-rumah-sakit-509' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Perpustakan Digital 378', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/ebook-perpustakan-digital-378' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Thelittleprince 400', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/thelittleprince-400' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Polyglot Project 553', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-polyglot-project-553' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'E Book Tujuh Tips Hidup Bahagia 283', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/e-book-tujuh-tips-hidup-bahagia-283' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tugas Kelompok Abidin Virene Nicholas Dan Leonel 738', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tugas-kelompok-abidin-virene-nicholas-dan-leonel-738' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '6304052411030001 Kartuujian 63', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/6304052411030001-kartuujian-63' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bab3 B C 20231122 214435 0000 53', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bab3-b-c-20231122-214435-0000-53' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Anti Radikalisme 843', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/anti-radikalisme-843' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Confident Mindset 228', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-confident-mindset-228' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Atomic Habits James Clear 419', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/atomic-habits-james-clear-419' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Novel Gadis Kretek 595', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/buku-novel-gadis-kretek-595' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '12 Pembunuhan Di Lorong 185', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/12-pembunuhan-di-lorong-185' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hidup Sukses Cara Sains 276', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/hidup-sukses-cara-sains-276' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Brosur Kursus Bimbel Vipro 2022 894', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/brosur-kursus-bimbel-vipro-2022-894' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bupati Bekasi 672', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bupati-bekasi-672' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menu Baru 748', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/menu-baru-748' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Trigan13 Misteri Cahaya Ungu 569', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Misteri dari perpus.org.', false, 'https://www.perpus.org/misteri/trigan13-misteri-cahaya-ungu-569' 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Surrounded By Idiots 748', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/surrounded-by-idiots-748' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The 48 Laws Of Powerdrive 1 235', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-48-laws-of-powerdrive-1-235' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '235 449', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/235-449' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '235 466', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/235-466' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kupdf Net Keluarga Flood Tetangga Menyebalkan 61', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kupdf-net-keluarga-flood-tetangga-menyebalkan-61' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pisa 2018 Insights And Interpretations Final 546', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/pisa-2018-insights-and-interpretations-final-546' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ska Cipatujah 673', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ska-cipatujah-673' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tensura Ln Volume 12 Ciel Noir 70', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/tensura-ln-volume-12-ciel-noir-70' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jurnal Tesis Fatahudin N 298', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jurnal-tesis-fatahudin-n-298' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seni Berbicara Kepada Siapa Saja Kapan Saja Dan Di Mana Saja Ed Revisi 310', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/seni-berbicara-kepada-siapa-saja-kapan-saja-dan-di-mana-saja-ed-revisi-310' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'International Relations Theory E Ir 26', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/international-relations-theory-e-ir-26' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bonus Ebook Psikotes 276', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/bonus-ebook-psikotes-276' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ilmu Tajwid Lengkap 982', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/ilmu-tajwid-lengkap-982' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pedoman Wawancara 360', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pedoman-wawancara-360' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pedoman Wawancara 252', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pedoman-wawancara-252' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '02 Pendidikan Pancasila Pas 755', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/02-pendidikan-pancasila-pas-755' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Syarah Ushuuts Tsalatsah 39', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/syarah-ushuuts-tsalatsah-39' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '199 385 1 Sm 858', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/199-385-1-sm-858' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seni Hidup Minimalis Petunjuk Minimalis Menuju Hidup Yang Apik 848', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/seni-hidup-minimalis-petunjuk-minimalis-menuju-hidup-yang-apik-848' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Cerita Mitra Usaha Goto 2022 1 596', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kumpulan-cerita-mitra-usaha-goto-2022-1-596' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30 Hari Bebas Hutang Fix 487', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/30-hari-bebas-hutang-fix-487' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30 Hari Bebas Hutang Fix 301', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/30-hari-bebas-hutang-fix-301' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Before The Coffee Gets Cold Toshikazu Kawaguchi 931', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/before-the-coffee-gets-cold-toshikazu-kawaguchi-931' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donalbebekspecialedition06 247', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donalbebekspecialedition06-247' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jaladara Rabi Unknown 837', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jaladara-rabi-unknown-837' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A Whitman Comic Book Hanna Barbera S Augie Doggie And Loopy De Loop Only 25 Pages Missing 111 Pages 999', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/a-whitman-comic-book-hanna-barbera-s-augie-doggie-and-loopy-de-loop-only-25-pages-missing-111-pages-999' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1300 Math Formulas 536', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/1300-math-formulas-536' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kuliah Ulumul Quran Yunahar Ilyas 976', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kuliah-ulumul-quran-yunahar-ilyas-976' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '17b5 Cpns 2023 2024 632', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/17b5-cpns-2023-2024-632' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jostein Gaarder Dunia Anna 15', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jostein-gaarder-dunia-anna-15' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Putusan 1502 Pid Sus 2022 Pn Tng 20230605212805 114', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/putusan-1502-pid-sus-2022-pn-tng-20230605212805-114' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '02 Kubernetes Fundamnetals 82', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/02-kubernetes-fundamnetals-82' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdf 20220711 062116 789', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/pdf-20220711-062116-789' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1riska Febriani Berani Berubah Untuk Hidup Yang Lebih Baik 526', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/1riska-febriani-berani-berubah-untuk-hidup-yang-lebih-baik-526' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Langkah Meraih Financial Freedom 710', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/ebook-langkah-meraih-financial-freedom-710' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '49 Contoh Strategi Meningkatkan Penjualan 851', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/49-contoh-strategi-meningkatkan-penjualan-851' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Oligarki Jeffrey A Winters 409', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/oligarki-jeffrey-a-winters-409' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A Guide To Starting A Career In Cyber Security 2022v2 1 336', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/a-guide-to-starting-a-career-in-cyber-security-2022v2-1-336' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tan Malaka Menuju Republik Indonesia 571', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tan-malaka-menuju-republik-indonesia-571' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nominasi Provinsi Dki Jakarta 142', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/nominasi-provinsi-dki-jakarta-142' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sto Mei 2023 369', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sto-mei-2023-369' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Big Book Biologi 907', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/big-book-biologi-907' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Percy Jackson The Olympians 4 Pertempuran Labirin 624', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/percy-jackson-the-olympians-4-pertempuran-labirin-624' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Percy Jackson The Olympians 4 Pertempuran Labirin 857', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/percy-jackson-the-olympians-4-pertempuran-labirin-857' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Uu Nomor 20 Tahun 2023 694', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/uu-nomor-20-tahun-2023-694' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aplikasi Pemetaan Digital Dan Rekayasa Teknik Sipil Dgn Autocad Ld 340', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/aplikasi-pemetaan-digital-dan-rekayasa-teknik-sipil-dgn-autocad-ld-340' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aplikasi Perencanaan Gedung Dengan Etabs 858', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/aplikasi-perencanaan-gedung-dengan-etabs-858' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2102021439 1 62001 1 66', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2102021439-1-62001-1-66' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2102021439 1 62001 1 619', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2102021439-1-62001-1-619' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Motivasi Dan Pengembangan Diri 440', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Motivasi dari perpus.org.', false, 'https://www.perpus.org/motivasi/motivasi-dan-pengembangan-diri-440' 
FROM categories WHERE name = 'Motivasi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Originals Tabrak Aturan Jadilah Pemenang By Adam M Grant Mursid 483', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/originals-tabrak-aturan-jadilah-pemenang-by-adam-m-grant-mursid-483' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Evangelii Nuntiandi 105', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/evangelii-nuntiandi-105' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1572 2332014 Buku Panduan Kpps 668', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/1572-2332014-buku-panduan-kpps-668' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Stephenie Meyer Breaking Dawn 443', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/stephenie-meyer-breaking-dawn-443' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Span 2018 337', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/span-2018-337' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Pengetahuan Bahan Makanan 1 Ddu 441', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-pengetahuan-bahan-makanan-1-ddu-441' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Honda Brio 664160 733', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/honda-brio-664160-733' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cerpen Krishna Merged 682', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/cerpen-krishna-merged-682' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Analysis Of The Effect Service Quality On Purchase 908', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/analysis-of-the-effect-service-quality-on-purchase-908' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Analysis Of The Effect Service Quality On Purchase 828', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/analysis-of-the-effect-service-quality-on-purchase-828' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdfcoffee Com Dama Dmbok 2nd Edition Data Management Body Of Knowledgedrivecom 2 Free 307', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/pdfcoffee-com-dama-dmbok-2nd-edition-data-management-body-of-knowledgedrivecom-2-free-307' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Psychology Of Money Morgan Housel Z Library 761', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-psychology-of-money-morgan-housel-z-library-761' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Psychology Of Money Morgan Housel Z Library 408', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-psychology-of-money-morgan-housel-z-library-408' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Steps To A More Fulfilling Life 200', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/10-steps-to-a-more-fulfilling-life-200' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berharap Indah By Ndaquilla 834', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/berharap-indah-by-ndaquilla-834' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sumut 356', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sumut-356' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Prepare Second Edition Level 3 Students Book 2 177', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/prepare-second-edition-level-3-students-book-2-177' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Img 20240223 155842 810', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/img-20240223-155842-810' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1 E Book Rahasia Percaya Diri 347', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/1-e-book-rahasia-percaya-diri-347' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '07 Menyembah Yahweh Berhala Gaya Baru 608', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/07-menyembah-yahweh-berhala-gaya-baru-608' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku 2coffee Com Manajemen Strategis By Dr Ir Ahmad Ac St Mm Free 450', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/buku-2coffee-com-manajemen-strategis-by-dr-ir-ahmad-ac-st-mm-free-450' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku 2coffee Com Manajemen Strategis By Dr Ir Ahmad Ac St Mm Free 604', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/buku-2coffee-com-manajemen-strategis-by-dr-ir-ahmad-ac-st-mm-free-604' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Efektif Menangkap Kekuatan Imajinasi Menggunakan Metode Dew 117', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-efektif-menangkap-kekuatan-imajinasi-menggunakan-metode-dew-117' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tutorialmenyelesaiaknrubikscube3x3 859', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/tutorialmenyelesaiaknrubikscube3x3-859' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kirtya Basa Ix Final 244', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kirtya-basa-ix-final-244' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sakarida 831', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sakarida-831' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sakarida 680', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sakarida-680' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Iesu Dulcis Memoria 28 1 816', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/iesu-dulcis-memoria-28-1-816' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Talenta Mh6viyibo1av80gvminwtztt Lv7iv6 406', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/talenta-mh6viyibo1av80gvminwtztt-lv7iv6-406' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ppt Ppdb 2023 Sosialisasi 312', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/ppt-ppdb-2023-sosialisasi-312' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jago Kuasai Bahasa Inggris 693', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/jago-kuasai-bahasa-inggris-693' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '100 Menu Kopi 67', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/100-menu-kopi-67' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pdf Rich Dad Poor Dad Bahasa Indonesia Mandirisemesta Com Robert Kiyosaki Compress 83', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/pdf-rich-dad-poor-dad-bahasa-indonesia-mandirisemesta-com-robert-kiyosaki-compress-83' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Siswa Sejarah Indonesia Kelas 12 Edisi Revisi 2018 273', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/buku-siswa-sejarah-indonesia-kelas-12-edisi-revisi-2018-273' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cryptocurrency Secrets 767', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cryptocurrency-secrets-767' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Who Moved My Cheese An Amazing Way To Deal With Change In Your Work And In Your Lifedrive 449', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/who-moved-my-cheese-an-amazing-way-to-deal-with-change-in-your-work-and-in-your-lifedrive-449' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '962', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/--962' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aldous J M Wilson R J Graphs And Applicationsan Introductory Approach Springer 2004isbn 185233259x400dpito457s Mac 214', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/aldous-j-m-wilson-r-j-graphs-and-applicationsan-introductory-approach-springer-2004isbn-185233259x400dpito457s-mac-214' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aldous J M Wilson R J Graphs And Applicationsan Introductory Approach Springer 2004isbn 185233259x400dpito457s Mac 767', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/aldous-j-m-wilson-r-j-graphs-and-applicationsan-introductory-approach-springer-2004isbn-185233259x400dpito457s-mac-767' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bangkit Dan Runtuhnya Andalusia Dr Raghib As Sirjani Z Lib Org 932', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bangkit-dan-runtuhnya-andalusia-dr-raghib-as-sirjani-z-lib-org-932' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dk Publishing Volcano Dk Experiencez Lib Org 505', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dk-publishing-volcano-dk-experiencez-lib-org-505' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dunia Sophie Ebooks 792', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/dunia-sophie-ebooks-792' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dunia Sophie Ebooks 880', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/dunia-sophie-ebooks-880' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fisika Dasar Periuk 571', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/fisika-dasar-periuk-571' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gary Dessler Human Resource Management 646', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/gary-dessler-human-resource-management-646' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Heaven Officials Blessing  Tin Gun C F Mo Xiang Tong Xiu Z Lib Org 778', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/heaven-officials-blessing--tin-gun-c-f-mo-xiang-tong-xiu-z-lib-org-778' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Michael Glick Martin S Greenberg Peter B Lockhart Stephen J Burket S Oral Medicine 2021 John Wiley Sons Libgen Li 211', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/michael-glick-martin-s-greenberg-peter-b-lockhart-stephen-j-burket-s-oral-medicine-2021-john-wiley-sons-libgen-li-211' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Terjemah Kitab Nashoihul Ibad 24', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/terjemah-kitab-nashoihul-ibad-24' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dunia Sophie Ebooks 880', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dunia-sophie-ebooks-880' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Stephenie Meyer Breaking Dawn 443', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/stephenie-meyer-breaking-dawn-443' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1300 Math Formulas 536', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/1300-math-formulas-536' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Oligarki Jeffrey A Winters 897', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/oligarki-jeffrey-a-winters-897' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Oligarki Jeffrey A Winters 409', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/oligarki-jeffrey-a-winters-409' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '434 Article Text 5217 1 10 20220715 674', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/434-article-text-5217-1-10-20220715-674' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'John S Townsend A Modern Approach To Quantum Mechanics University Science Books 2012 908', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/john-s-townsend-a-modern-approach-to-quantum-mechanics-university-science-books-2012-908' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Richard Dawkins   The God Delusion 376', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/richard-dawkins---the-god-delusion-376' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pertemuan 1 Ketentuan Umum Tata Cara Perpajakan 1 627', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/pertemuan-1-ketentuan-umum-tata-cara-perpajakan-1-627' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'St19 Ebook F0 What It Means How To Calculate It How To Use It 923', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/st19-ebook-f0-what-it-means-how-to-calculate-it-how-to-use-it-923' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bsf Biowaste Processing Lr 1 52', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bsf-biowaste-processing-lr-1-52' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Top 100 Genai Use Cases', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/top-100-genai-use-cases-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dealing Fatherlesness', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/dealing-fatherlesness' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bws Moderate Volume Workout Routine', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/bws-moderate-volume-workout-routine' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Laporan Ketimpangan Ekonomi Indonesia 2024', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/laporan-ketimpangan-ekonomi-indonesia-2024' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Indonesia Millennial Report 2024', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/indonesia-millennial-report-2024' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Time Special Edition   Artificial Intelligence 2024', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/time-special-edition---artificial-intelligence-2024' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bisnis Ekspor Impor  Raih Cuan Dari Pasar Global Protected Pass Ekspor1mpor Unlocked', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bisnis-ekspor-impor--raih-cuan-dari-pasar-global-protected-pass-ekspor1mpor-unlocked' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Apa Itu React', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/apa-itu-react' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boleh Dan Tidak Boleh Terhadap Non Muslim', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/boleh-dan-tidak-boleh-terhadap-non-muslim' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '200 Ide Produk Digital Untuk Dijual Di Etsy', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/200-ide-produk-digital-untuk-dijual-di-etsy' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Anna Karenina 1 By Leo Tolstoi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/anna-karenina-1-by-leo-tolstoi' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seri Sastra Dunia Daerah Salju Yukiguni The Snow Country By Yasunari Kawabata Ajip Rosidi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/seri-sastra-dunia-daerah-salju-yukiguni-the-snow-country-by-yasunari-kawabata-ajip-rosidi' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rumah Tangga Yang Bahagia By Leo Tolstoi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/rumah-tangga-yang-bahagia-by-leo-tolstoi' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Anna Karenina 2 By Leo Tolstoi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/anna-karenina-2-by-leo-tolstoi' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Candide By Voltaire', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/candide-by-voltaire' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dataran Tortilla By John Steinbeck', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/dataran-tortilla-by-john-steinbeck' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rumah Perawan The House Of Sleeping Beauties By Yasunari Kawabata Asrul Sani', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/rumah-perawan-the-house-of-sleeping-beauties-by-yasunari-kawabata-asrul-sani' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Hati By Natsume Soseki', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/rahasia-hati-by-natsume-soseki' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Lelaki Tua Dan Laut By Ernest Hemingway', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/lelaki-tua-dan-laut-by-ernest-hemingway' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nyonya Bovary By Gustave Flaubert', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/nyonya-bovary-by-gustave-flaubert' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Petualangan Huckleberry Finn By Mark Twain', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/petualangan-huckleberry-finn-by-mark-twain' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Petualangan Tom Sawyer By Mark Twain', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/petualangan-tom-sawyer-by-mark-twain' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Etika Bisnis Business Ethic Pemahaman Teori Secara Komprehensif Dan Implementasinya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/etika-bisnis-business-ethic-pemahaman-teori-secara-komprehensif-dan-implementasinya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahasa Arab Itu Gampang By Muhammad Ihsan Zainuddin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/bahasa-arab-itu-gampang-by-muhammad-ihsan-zainuddin' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahasa Jepang Untuk Pemula By Harryken Nino', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/bahasa-jepang-untuk-pemula-by-harryken-nino' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamus Arab Kontekstual By Drs  Basuni Imamuddin Dan Dra  Nashiroh Ishaq', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kamus-arab-kontekstual-by-drs--basuni-imamuddin-dan-dra--nashiroh-ishaq' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kaedah Bahasa Arab Praktis By Dr  Fuad Nimah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kaedah-bahasa-arab-praktis-by-dr--fuad-nimah' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamus Pintar Memilih Kata Bahasa Inggris By Mukh  Syamsuri', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kamus-pintar-memilih-kata-bahasa-inggris-by-mukh--syamsuri' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mudah Dan Praktis Belajar Bahasa Jerman By Purwati', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/mudah-dan-praktis-belajar-bahasa-jerman-by-purwati' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Modul Asyik Belajar Bahasa Arab By Muallim Al Mahmudi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/modul-asyik-belajar-bahasa-arab-by-muallim-al-mahmudi' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1000 Useful Words   Build Vocabulary And Literacy Skills By Dawn Siret', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/1000-useful-words---build-vocabulary-and-literacy-skills-by-dawn-siret' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Desain Dan Pemrograman Multimedia Pembelajaran Interaktif By Wandah Wibawanto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/desain-dan-pemrograman-multimedia-pembelajaran-interaktif-by-wandah-wibawanto' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Just Enough English Grammar Illustrated By Gabrielle Stobbe', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/just-enough-english-grammar-illustrated-by-gabrielle-stobbe' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Oxford Dictionary Of Idioms By Judith Siefring', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/oxford-dictionary-of-idioms-by-judith-siefring' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Jurus Ampuh Bebas Hutang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/7-jurus-ampuh-bebas-hutang' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Citizen 4 0 By Hermawan Kertajaya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/citizen-4-0-by-hermawan-kertajaya' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Public Speaking Mastery', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/public-speaking-mastery' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Think Like A Freak', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/think-like-a-freak' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jangan Abaikan Suara Konsumen', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jangan-abaikan-suara-konsumen' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Official Cambridge Guide To Ielts   For Academic And General Training Pauline Cullen Amanda French Vanessa Jakeman Z Lib Org', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/the-official-cambridge-guide-to-ielts---for-academic-and-general-training-pauline-cullen-amanda-french-vanessa-jakeman-z-lib-org' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Cara Pulih Dari Luka Pernikahan 20250426 101421 0000', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/ebook-cara-pulih-dari-luka-pernikahan-20250426-101421-0000' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Mendapatkan 30 Juta Modal Hape Emak Emak', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-mendapatkan-30-juta-modal-hape-emak-emak' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Jitu Hadapi Genz Didunia Kerja', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/cara-jitu-hadapi-genz-didunia-kerja' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seo 2025 Dan Seterusnya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/seo-2025-dan-seterusnya' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komik Golongan Darah V2', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/komik-golongan-darah-v2' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Panduan Penerapan Gerakan 7kaih Untuk Orang Tua', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/buku-panduan-penerapan-gerakan-7kaih-untuk-orang-tua' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Membuat Konten Iklan Dengan Bantuan Ai', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/membuat-konten-iklan-dengan-bantuan-ai' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ngebut Closing Pakai Fb Ads Untuk Dropshipper', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/ngebut-closing-pakai-fb-ads-untuk-dropshipper' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1 Donal Bebek Mimi Hilang Ingatan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/1-donal-bebek-mimi-hilang-ingatan' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '14 Donal Bebek Penerbangan Ke Angkasa Luar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/14-donal-bebek-penerbangan-ke-angkasa-luar' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Donal Bebek Memburu Ronda Malam', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/7-donal-bebek-memburu-ronda-malam' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek Seri 10', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-bebek-seri-10' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '12 Donal Bebek Pasangan Favorit', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/12-donal-bebek-pasangan-favorit' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2014', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2014' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '11 Donal Bebek Pidato Pesanan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/11-donal-bebek-pidato-pesanan' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2011', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2011' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '6 Donal Bebek Mencari Telur Hilang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/6-donal-bebek-mencari-telur-hilang' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1961', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-1961' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '8 Donal_bebek_buruan_polisi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/8-donal_bebek_buruan_polisi' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1995', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/donal-awd-1995' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '4 Donal Bebek Perbuatan Baik', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/4-donal-bebek-perbuatan-baik' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '17 Donal Bebek Special Edition 7', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/17-donal-bebek-special-edition-7' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '13 Donal Bebek Pencuri Nanas', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/13-donal-bebek-pencuri-nanas' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '5 Donal Bebek Kecelakaan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/5-donal-bebek-kecelakaan' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Donal Bebek Rumah Untuk Kodok', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/10-donal-bebek-rumah-untuk-kodok' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '16 Donal Bebek Special Edition 6', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/16-donal-bebek-special-edition-6' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '15 Donal Bebek Ulang Tahun Gover', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/15-donal-bebek-ulang-tahun-gover' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2007', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2007' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '21 Donal Bebek Ancaman Meteor', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/21-donal-bebek-ancaman-meteor' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek Seri 8', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-bebek-seri-8' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Bebek Ktd Seri 7 B.indo (end)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-bebek-ktd-seri-7-b.indo-(end)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '9 Tamu Tak Diundang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/9-tamu-tak-diundang' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2013', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2013' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2005', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2005' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '18 Donal Bebek Special Edition 8', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/18-donal-bebek-special-edition-8' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2006', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2006' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '19 Donal Bebek Special Edition 10', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/19-donal-bebek-special-edition-10' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2 Donal Bebek Saudara Dekat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/2-donal-bebek-saudara-dekat' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '66 Resep Sehat Zaidul Akbar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/66-resep-sehat-zaidul-akbar' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Sehat Jsr   200 Resep Menyehatkan Dr  Zaidul Akbar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-sehat-jsr---200-resep-menyehatkan-dr--zaidul-akbar' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1  17 Teknik Closing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/1--17-teknik-closing' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2  Copywriting', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/2--copywriting' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3  Personal Branding Di Facebook', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/3--personal-branding-di-facebook' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '4  Affiliate Marketing Untuk Newbie', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/4--affiliate-marketing-untuk-newbie' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Madarijus Salikin Pendakian Menuju Allah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/madarijus-salikin-pendakian-menuju-allah' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V001 (2013)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v001-(2013)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V007 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v007-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V012 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v012-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V010 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v010-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V018 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v018-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V005 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v005-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V015 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v015-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V013 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v013-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V002 (2013)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v002-(2013)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V003 (2013)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v003-(2013)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V014 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v014-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V008 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v008-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V016 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v016-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V006 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v006-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V004 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v004-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V017 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v017-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V011 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v011-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doraemonfull Color V009 (2014)', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/doraemonfull-color-v009-(2014)' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 08', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-08' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 15', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-15' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 11', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-11' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 13', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-13' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 14', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-14' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 04', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-04' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 03', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-03' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 01', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-01' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 16 Tamat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-16-tamat' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 06', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-06' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 09', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-09' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 05', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-05' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-02' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 10', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-10' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deni Manusia Ikan 07', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/deni-manusia-ikan-07' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1996', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/donal-awd-1996' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2017', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2017' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2008', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2008' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2016', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2016' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2012', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2012' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2002', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2002' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1994', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/donal-awd-1994' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2009', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2009' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2018', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2018' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2015', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2015' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1977', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-1977' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1998', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/donal-awd-1998' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1958', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-1958' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1999', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/donal-awd-1999' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2010', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2010' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2001', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2001' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1976', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-1976' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2003', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2003' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1997', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/donal-awd-1997' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '20 Paman Gober Dinas Rahasia Gober', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/20-paman-gober-dinas-rahasia-gober' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1993', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/donal-awd-1993' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1959', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-1959' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1975', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-1975' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1960', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-1960' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 2004', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-2004' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1957', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-1957' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal Awd 1978', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/donal-awd-1978' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Deep Work', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/deep-work' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Blue Ocean Strategy', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/blue-ocean-strategy' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mindset', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mindset' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Atomic Habits', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/atomic-habits' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Innovator_s Dilemma', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-innovator_s-dilemma' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How To Win Friends And Influence People', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/how-to-win-friends-and-influence-people' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Outliers', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/outliers' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Art Of War', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-art-of-war' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Richest Man In Babylon', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-richest-man-in-babylon' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The 7 Habits Of Highly Effective People', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-7-habits-of-highly-effective-people' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Power Of Habit', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-power-of-habit' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Drive', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/drive' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sapiens A Brief History Of Humankind', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sapiens-a-brief-history-of-humankind' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Start With Why', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/start-with-why' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Leaders Eat Last', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/leaders-eat-last' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Hard Thing About Hard Things', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-hard-thing-about-hard-things' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Four Hour Workweek', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-four-hour-workweek' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The 10x Rule', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-10x-rule' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Subtle Art Of Not Giving A Fck', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-subtle-art-of-not-giving-a-fck' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Principles Life And Work', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/principles-life-and-work' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ego Is The Enemy', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ego-is-the-enemy' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Think And Grow Rich', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/think-and-grow-rich' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Magic Of Thinking Big', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/the-magic-of-thinking-big' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The E Myth Revisited', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-e-myth-revisited' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Grit', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/grit' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Power Of Now', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-power-of-now' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Zero To One', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/zero-to-one' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Lean Startup', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/the-lean-startup' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Measure What Matters', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/measure-what-matters' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mudah Dan Praktis Belajar Bahasa Jerman By Purwati 304', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/mudah-dan-praktis-belajar-bahasa-jerman-by-purwati-304' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengantar Linguistik Bahasa Arab By Dr. H. Sahkholid Nasution S.ag M 857', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/pengantar-linguistik-bahasa-arab-by-dr.-h.-sahkholid-nasution-s.ag-m-857' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamus Pintar Memilih Kata Bahasa Inggris By Mukh. Syamsuri 857', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kamus-pintar-memilih-kata-bahasa-inggris-by-mukh.-syamsuri-857' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Modul Asyik Belajar Bahasa Arab By Muallim Al Mahmudi 643', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/modul-asyik-belajar-bahasa-arab-by-muallim-al-mahmudi-643' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamus Arab Kontekstual By Drs. Basuni Imamuddin Dan Dra. Nashiroh Ishaq 151', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kamus-arab-kontekstual-by-drs.-basuni-imamuddin-dan-dra.-nashiroh-ishaq-151' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kaedah Bahasa Arab Praktis By Dr. Fuad Nimah 874', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kaedah-bahasa-arab-praktis-by-dr.-fuad-nimah-874' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengantar Mudah Belajar Bahasa Arab By Al Atsary Abu Hamzah Yusuf 524', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/pengantar-mudah-belajar-bahasa-arab-by-al-atsary-abu-hamzah-yusuf-524' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamus Indo Arab 710', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kamus-indo-arab-710' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Cara Mudah Membangun Personal Branding Di Facebook Pdf 591', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-cara-mudah-membangun-personal-branding-di-facebook-pdf-591' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Watsapp Marketing 636', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/watsapp-marketing-636' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Copywriting Revolution (revision 1.0) 626', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/copywriting-revolution-(revision-1.0)-626' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jago Jualan Di Instagram 626', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/jago-jualan-di-instagram-626' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30 Hari Jago Jualan Dewaekaprayoga Pdf 271', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/30-hari-jago-jualan-dewaekaprayoga-pdf-271' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '100 Follower Pertama Dalam 24 Jam 108', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/100-follower-pertama-dalam-24-jam-108' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '17 Teknik Closing 903', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/17-teknik-closing-903' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Reseller Beromzet 50 Juta Perbulan 191', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rahasia-reseller-beromzet-50-juta-perbulan-191' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '13 Cara Jitu Jualan Di Instagram 880', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/13-cara-jitu-jualan-di-instagram-880' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dijamin Penghasilan 10 Juta Perbulan   Dewa Eka Prayoga 751', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dijamin-penghasilan-10-juta-perbulan---dewa-eka-prayoga-751' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Panen Orderan Di Bisnis Online 560', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/panen-orderan-di-bisnis-online-560' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1001 Ragam Bisnis Online 895', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/1001-ragam-bisnis-online-895' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dongkrak Omset Miliaran Dengan Team Penjualan 474', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dongkrak-omset-miliaran-dengan-team-penjualan-474' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Super Emak Cara Jago Jualan 480', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/super-emak-cara-jago-jualan-480' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Super Shopee 188', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/super-shopee-188' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Praktek Instagram Ads 360', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/praktek-instagram-ads-360' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '15 Tips Closing Whatsapp Marketing 899', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/15-tips-closing-whatsapp-marketing-899' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bonus Banjir Orderan Modal Whatsapp 717', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bonus-banjir-orderan-modal-whatsapp-717' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Emak Emak Jago Ngiklan 920', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/emak-emak-jago-ngiklan-920' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Tercepat Meningkatkan Penjualan Di Instagram 883', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-tercepat-meningkatkan-penjualan-di-instagram-883' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Reseller Super 654', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/reseller-super-654' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fb Wa Fusion Marketing 667', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/fb-wa-fusion-marketing-667' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '100 Juta Pertama Dari Toko Online 543', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/100-juta-pertama-dari-toko-online-543' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Juta Pertama Dari Market Place 468', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/10-juta-pertama-dari-market-place-468' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Kesalahan Fatal Gagal Closing 429', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/7-kesalahan-fatal-gagal-closing-429' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Sukses Affiliatemarketing 570', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rahasia-sukses-affiliatemarketing-570' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Membeli Rumah Tanpa Uang 327', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rahasia-membeli-rumah-tanpa-uang-327' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Marketing 4.0 Bergerak Dari Tradisional Ke Digital By Philip Kotler Hermawan Kartajaya Iwan Setiawan 799', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/marketing-4.0-bergerak-dari-tradisional-ke-digital-by-philip-kotler-hermawan-kartajaya-iwan-setiawan-799' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamus Indo Arab', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kamus-indo-arab' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengantar Linguistik Bahasa Arab By Dr  H  Sahkholid Nasution S Ag M', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/pengantar-linguistik-bahasa-arab-by-dr--h--sahkholid-nasution-s-ag-m' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengantar Mudah Belajar Bahasa Arab By Al Atsary Abu Hamzah Yusuf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/pengantar-mudah-belajar-bahasa-arab-by-al-atsary-abu-hamzah-yusuf' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jika Kita Tak Pernah Jatuh Cinta By Alvi Syahrin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/jika-kita-tak-pernah-jatuh-cinta-by-alvi-syahrin' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kalender Kata Kata Bijak Sumber Inspirasi Harian Yang Tak Lekang Zaman By Leo Tolstoy', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kalender-kata-kata-bijak-sumber-inspirasi-harian-yang-tak-lekang-zaman-by-leo-tolstoy' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kick Andy Kumpulan Kisah Inspiratif By Gantyo Koespradono', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kick-andy-kumpulan-kisah-inspiratif-by-gantyo-koespradono' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kitab Kebijaksanaan Orang Orang Gila', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/kitab-kebijaksanaan-orang-orang-gila' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kitab Anti Bodoh  Terampil Berpikir Benar Terhindar Dari Cacat Logika   Sesat Pikir Drive', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/kitab-anti-bodoh--terampil-berpikir-benar-terhindar-dari-cacat-logika---sesat-pikir-drive-' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Life Is Short Make It Great', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/life-is-short-make-it-great' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Loving The Wounded Soul Alasan Dan Tujuan Depresi Hadir Di Hidup Manusia By Regis Machdy', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/loving-the-wounded-soul-alasan-dan-tujuan-depresi-hadir-di-hidup-manusia-by-regis-machdy' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millennial Power By Deddy Corbuzier Erik Ten Have', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millennial-power-by-deddy-corbuzier-erik-ten-have' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Marketing Revolution   Tung Desem Waringin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/marketing-revolution---tung-desem-waringin' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Marketing Revolution', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/marketing-revolution' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Masih Belajar By Iman Usman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/masih-belajar-by-iman-usman' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menabung Saham Sekarang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/menabung-saham-sekarang' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Misteri Misteri Tentang Ruang Dan Waktu By Bill Bryson', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Ensiklopedia dari perpus.org.', false, 'https://www.perpus.org/ensiklopedia/misteri-misteri-tentang-ruang-dan-waktu-by-bill-bryson' 
FROM categories WHERE name = 'Ensiklopedia' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Originals Tabrak Aturan Jadilah Pemenang By Adam M  Grant Mursid Wijanarko', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/originals-tabrak-aturan-jadilah-pemenang-by-adam-m--grant-mursid-wijanarko' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Quantum Life Transformation By Adi W  Gunawan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/quantum-life-transformation-by-adi-w--gunawan' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Bebas Finansial', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rahasia-bebas-finansial' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Magnet Rezeki Edisi Revisi By Nasrullah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/rahasia-magnet-rezeki-edisi-revisi-by-nasrullah' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Salomo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rahasia-salomo' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rich Dad Poor Dad Robert T  Kiyosaki', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/rich-dad-poor-dad-robert-t--kiyosaki' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sebuah Seni Bersikap Bodo Amat By Mark Manson', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/sebuah-seni-bersikap-bodo-amat-by-mark-manson' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sejarah Dunia Kuno Dari Cerita Cerita Tertua Sampai Jatuhnya Roma By S  Wise Bauer', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/sejarah-dunia-kuno-dari-cerita-cerita-tertua-sampai-jatuhnya-roma-by-s--wise-bauer' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Self Driving By Rhenald Kasali', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/self-driving-by-rhenald-kasali' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seni Memahami Hermeneutik Dari Schleiermacher Sampai Derrida By F  Budi Hardiman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/seni-memahami-hermeneutik-dari-schleiermacher-sampai-derrida-by-f--budi-hardiman' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seni Perang Sun Tzu  36 Strategi By Tjio Tjiang Feng', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/seni-perang-sun-tzu--36-strategi-by-tjio-tjiang-feng' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sirah Nabawiyah By Shafiyyur Rahman Mubarakfury Syaikh  Kathur Suhardi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/sirah-nabawiyah-by-shafiyyur-rahman-mubarakfury-syaikh--kathur-suhardi' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Smart Traders Not Gamblers', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/smart-traders-not-gamblers' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sukses Menjalin Relasi By Dale Carnegie  Associates Inc', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/sukses-menjalin-relasi-by-dale-carnegie--associates-inc' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tajir Melintir By Mardigu Wp', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tajir-melintir-by-mardigu-wp' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tan Malaka Bapak Republik Yang Dilupakan By Seri Buku Tempo  Bapak Bangsa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/tan-malaka-bapak-republik-yang-dilupakan-by-seri-buku-tempo--bapak-bangsa' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tetap Untung Ketika Saham Turun', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tetap-untung-ketika-saham-turun' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The True Life Of Habibie Cerita Di Balik Kesuksesan By A  Makmur Makka', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/the-true-life-of-habibie-cerita-di-balik-kesuksesan-by-a--makmur-makka' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Thinking Fast And Slow Cover Baru By Daniel Kahneman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/thinking-fast-and-slow-cover-baru-by-daniel-kahneman' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tiongkok Wise Stories 96 Cerita Bijak Inspiratif By Rita Lauw Fu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/tiongkok-wise-stories-96-cerita-bijak-inspiratif-by-rita-lauw-fu' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Uncensored Teronglyf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/uncensored-teronglyf' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Value Investing Beat The Market In Five Minutes', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/value-investing-beat-the-market-in-five-minutes' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yuk Nabung Saham   Nicky Hogan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/yuk-nabung-saham---nicky-hogan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Berani Tidak Disukai', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-berani-tidak-disukai' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Elon Musk By Ashlee Vance', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/elon-musk-by-ashlee-vance' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filosofi Teras', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/filosofi-teras' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Happiness Inside', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/happiness-inside' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Iblis Menggugat Tuhan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/iblis-menggugat-tuhan' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Irational Investor', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/irational-investor' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jack Ma  Alibaba By Yan Qicheng', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/jack-ma--alibaba-by-yan-qicheng' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jangan Membuat Masalah Kecil Dalam Hubungan Cinta Jadi Masalah Besar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/jangan-membuat-masalah-kecil-dalam-hubungan-cinta-jadi-masalah-besar' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jika Kita Tak Pernah Jadi Apa Apa By Alvi Syahrin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/jika-kita-tak-pernah-jadi-apa-apa-by-alvi-syahrin' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menantu Sange', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/menantu-sange' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menantu Sange', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/menantu-sange' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menantu Sange', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/menantu-sange' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Trump_menipis_peluangnya_apa_lagi_langkah_desperate_yang_dilakukannya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/trump_menipis_peluangnya_apa_lagi_langkah_desperate_yang_dilakukannya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Selamatkan_aset_bangsa,_stop_asing_aseng_masuk_ke_dalam_bumi_nusantara', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/selamatkan_aset_bangsa,_stop_asing_aseng_masuk_ke_dalam_bumi_nusantara' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol 19 Successor By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol-19-successor-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  1 By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--1-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  10 A Splendid Ninja By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--10-a-splendid-ninja-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  11 Impassioned Efforts By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--11-impassioned-efforts-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  12 The Great Flight By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--12-the-great-flight-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  13 The Chunin Exam Concluded By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--13-the-chunin-exam-concluded-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  14 Hokage Vs  Hokage By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--14-hokage-vs--hokage-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  15 Narutos Ninja Handbook By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--15-narutos-ninja-handbook-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  16 Eulogy By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--16-eulogy-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  17 Itachis Power By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--17-itachis-power-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  18 Tsunades Choice By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--18-tsunades-choice-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  2 The Worst Client By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--2-the-worst-client-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  3 Dreams By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--3-dreams-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  4 By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--4-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  5 By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--5-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  6 Predator By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--6-predator-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  7 By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--7-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  8 Life And Death By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--8-life-and-death-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol  9 Neji Vs  Hinata By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/naruto-vol--9-neji-vs--hinata-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boruto Naruto Next Generations Vol  4 The Value Of A Hidden Ace By Ukyo Kodachimasashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/boruto-naruto-next-generations-vol--4-the-value-of-a-hidden-ace-by-ukyo-kodachimasashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boruto Naruto Next Generations Vol  5 Ao By Ukyo Kodachi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/boruto-naruto-next-generations-vol--5-ao-by-ukyo-kodachi' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boruto Naruto Next Generations Vol  6 Karma By Masashi Kishimoto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/boruto-naruto-next-generations-vol--6-karma-by-masashi-kishimoto' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boruto Naruto Next Generations Vol  7 Kawaki By Ukyo Kodachi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/boruto-naruto-next-generations-vol--7-kawaki-by-ukyo-kodachi' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boruto Vol  1 Naruto Next Generations By Ukyo Kodachi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/boruto-vol--1-naruto-next-generations-by-ukyo-kodachi' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boruto Vol  2 By Masashi Kishimotoukyo Kodachi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/boruto-vol--2-by-masashi-kishimotoukyo-kodachi' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boruto Vol  3 By Masashi Kishimotoukyo Kodachi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/boruto-vol--3-by-masashi-kishimotoukyo-kodachi' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 04', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-04' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 07', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-07' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Ed 10', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-ed-10' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Ed 11', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-ed-11' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Ed 12', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-ed-12' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Ed 13', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-ed-13' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 14', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-14' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 15', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-15' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 16', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-16' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 2 Tahun I', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-2-tahun-i' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 3 Tahun I', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-3-tahun-i' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 5 Tahun I', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-5-tahun-i' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 6 Tahun 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-6-tahun-1' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi 8', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-8' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Edisi I', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-edisi-i' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '499408616 Tabloid Saji 20210303 20210316', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/499408616-tabloid-saji-20210303-20210316' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '415637379 Tabloid Saji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/415637379-tabloid-saji' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '419517675 Jk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/419517675-jk' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '69 Trik Sulap', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Misteri dari perpus.org.', false, 'https://www.perpus.org/misteri/69-trik-sulap' 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Belajar Bisnis Kepada Khadijah By Azti Arlina', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/belajar-bisnis-kepada-khadijah-by-azti-arlina' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Masa Lalu Uang  Masa Depan Dunia By Lucifer', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/masa-lalu-uang--masa-depan-dunia-by-lucifer' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '60 Cara Pengembangan Diri By Martha Mary Mcgraw Csj', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/60-cara-pengembangan-diri-by-martha-mary-mcgraw-csj' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ada Berita Apa Hari Ini Den Sastro', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/ada-berita-apa-hari-ini-den-sastro' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Babad Batu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/babad-batu' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bilang Begini Maksudnya Begitu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/bilang-begini-maksudnya-begitu' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hujan Bulan Juni', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/hujan-bulan-juni' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Quiet Impact Tak Masalah Jadi Orang Introver By Sylvia Loehken', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/quiet-impact-tak-masalah-jadi-orang-introver-by-sylvia-loehken' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Yang Fana Adalah Waktu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/yang-fana-adalah-waktu' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Satu Hari Di 2018 By Boy Candra', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/satu-hari-di-2018-by-boy-candra' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Trump_menipis_peluangnya,_apa_lagi_langkah_desperate_yang_dilakukannya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/trump_menipis_peluangnya,_apa_lagi_langkah_desperate_yang_dilakukannya' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30 Hari Mahir Masak Mpasi Homemade', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/30-hari-mahir-masak-mpasi-homemade' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Resep Mpasi Harian Untuk Bayi 6   24 Bulan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/kumpulan-resep-mpasi-harian-untuk-bayi-6---24-bulan' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Resep Mpasi Harian', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/kumpulan-resep-mpasi-harian' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Saatnya Buah Hati Makan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/saatnya-buah-hati-makan' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '101 Kesalahan Dalam Mendidik Anak By Dewi Iriani  Indscript Creative', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/101-kesalahan-dalam-mendidik-anak-by-dewi-iriani--indscript-creative' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '350 Resep Mpasi   Makanan Sehat Untuk Anak', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/350-resep-mpasi---makanan-sehat-untuk-anak' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aneka Makanan Minuman Untuk Mencerdaskan Otak Bayi By Anidya Kedasih', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/aneka-makanan-minuman-untuk-mencerdaskan-otak-bayi-by-anidya-kedasih' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Digital Parenting Mendidik Anak Di Era Digital By Dyna Herlina S  M Sc  Benni Setiawan M S I  Gilang Jiwana Adikara M A', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/digital-parenting-mendidik-anak-di-era-digital-by-dyna-herlina-s--m-sc--benni-setiawan-m-s-i--gilang-jiwana-adikara-m-a-' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kemampuan Motorik Anak Usia Dini By Anton Komaini', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/kemampuan-motorik-anak-usia-dini-by-anton-komaini' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '567 Fakta Tentang Mpasi Dr Meta Hanindita Sp', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/567-fakta-tentang-mpasi-dr-meta-hanindita-sp' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dr Meta Hanindita Mommyclopedia 78 Resep Mpasi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/dr-meta-hanindita-mommyclopedia-78-resep-mpasi' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Happy Little Soul   Belajar Memahami Anak Dengan Penuh Cinta', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/happy-little-soul---belajar-memahami-anak-dengan-penuh-cinta' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mommyclopedia   Bantuan Lengkap Merawat Batita', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/mommyclopedia---bantuan-lengkap-merawat-batita' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pendidikan Anak Pra Sekolah By Dr C  Irjus Indrawan S Pd I  M Pd I', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/pendidikan-anak-pra-sekolah-by-dr-c--irjus-indrawan-s-pd-i--m-pd-i' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pendidikan Karakter Anak Sesuai Pembelajaran Abad Ke 21 By Dr  Otib Satibi Hidayat M Pd', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/pendidikan-karakter-anak-sesuai-pembelajaran-abad-ke-21-by-dr--otib-satibi-hidayat-m-pd' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tanya Jawab Tentang Nutrisi Di 1000 Hari Pertama Kehidupan Anak', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/tanya-jawab-tentang-nutrisi-di-1000-hari-pertama-kehidupan-anak' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Q A Part 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/10-q-a-part-1' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Q A Part 2', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/10-q-a-part-2' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '13 Kesalahan Fatal Pria', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/13-kesalahan-fatal-pria' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7 Kesahalan Wanita Saat Memulai Cinta Dengan Pria Idamannya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/7-kesahalan-wanita-saat-memulai-cinta-dengan-pria-idamannya' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Belajar Meningkatkan Kualitas Diri', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/belajar-meningkatkan-kualitas-diri' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bikin Pria Baper Setengah Mati', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/bikin-pria-baper-setengah-mati' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Haruskah Aku Jatuh Cinta', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/haruskah-aku-jatuh-cinta' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kumpulan Hikmah Jomblo   Meniti Jalan Kearifan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/kumpulan-hikmah-jomblo---meniti-jalan-kearifan' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Hubungan Awet Seperi Baru Jadian', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/rahasia-hubungan-awet-seperi-baru-jadian' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Seni Menyiksa Diri', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/seni-menyiksa-diri' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Udah Putusin Aja', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/udah-putusin-aja' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ya Allah Izinkan Aku Pacaran', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/ya-allah-izinkan-aku-pacaran' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ya Allah Aku Pulang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/ya-allah-aku-pulang' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menguak Realitas Dan Perjuangan Perempuan Di Tengah Politik Patriarki Dan Krisis Multidimensi By Andriyeni Gita Ayu Atikah Juni Warlif Novia Sari Putri Fahimatul Hasni', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/menguak-realitas-dan-perjuangan-perempuan-di-tengah-politik-patriarki-dan-krisis-multidimensi-by-andriyeni-gita-ayu-atikah-juni-warlif-novia-sari-putri-fahimatul-hasni' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menjadi Perempuan Terdidik Novel Indonesia Dan Feminisme By Dr  Wiyatmi M Hum', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/menjadi-perempuan-terdidik-novel-indonesia-dan-feminisme-by-dr--wiyatmi-m-hum' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perempuan Dalam Gerakan Kebangsaan By Triana Wulandari', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/perempuan-dalam-gerakan-kebangsaan-by-triana-wulandari' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perlindungan Hukum Bagi Perempuan Korban Janji Kawin By Dr  Lusiana Margareth Tijow Sh  Mh', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/perlindungan-hukum-bagi-perempuan-korban-janji-kawin-by-dr--lusiana-margareth-tijow-sh--mh' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Feminisme Islam Dan Islam Feminis By Anna King Fatima Seedat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/feminisme-islam-dan-islam-feminis-by-anna-king-fatima-seedat' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perempuan Di Titik Nol By Nawal El Saadawi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/perempuan-di-titik-nol-by-nawal-el-saadawi' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perempuan Masyarakat Patriarki  Kesetaraan Gender By Lusia Palulungan M  Ghufran H  Kordi K  Muhammad Taufan Ramli Editor', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/perempuan-masyarakat-patriarki--kesetaraan-gender-by-lusia-palulungan-m--ghufran-h--kordi-k--muhammad-taufan-ramli-editor' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Psikologi Perempuan Dalam Berbagai Perspektif By Dr  Hj  Eti Nurhayati M Si', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/psikologi-perempuan-dalam-berbagai-perspektif-by-dr--hj--eti-nurhayati-m-si' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rekam Juang Komnas Perempuan 16 Tahun Menghapus Kekerasan Terhadap Perempuan By Neng Dara Affiah Siti Nurwati Hodijah Shanti Ayu Prawitasari Ema Mukarramah Saherman Ninik Rahayu Yuniyanti Chuzai', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/rekam-juang-komnas-perempuan-16-tahun-menghapus-kekerasan-terhadap-perempuan-by-neng-dara-affiah-siti-nurwati-hodijah-shanti-ayu-prawitasari-ema-mukarramah-saherman-ninik-rahayu-yuniyanti-chuzai' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Belajar Cerdas Belajar Berbasiskan Otak By Jalaluddin Rakhmat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/belajar-cerdas-belajar-berbasiskan-otak-by-jalaluddin-rakhmat' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Geography Of Genius By Weiner Eric', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/the-geography-of-genius-by-weiner-eric' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '100 Tokoh Yang Mengubah Indonesia Biografi Singkat Seratus Tokoh Paling Berpengaruh Dalam Sejarah Indonesia Di Abad 20 By Floriberta Aning', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/100-tokoh-yang-mengubah-indonesia-biografi-singkat-seratus-tokoh-paling-berpengaruh-dalam-sejarah-indonesia-di-abad-20-by-floriberta-aning' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Subiakto   Brand Building', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/subiakto---brand-building' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Rahasia Bisnis Online', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ebook-rahasia-bisnis-online' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kami Hadir Kita Hadir, Kamu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/kami-hadir-kita-hadir,-kamu' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Big Business Poor Peoples   Bisnis Besar Menguasai Masyarakat Miskin B', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/big-business-poor-peoples---bisnis-besar-menguasai-masyarakat-miskin-b' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Marketing Muhammad Strategi Andal Dan Jitu Praktik Bisnis Nabi Muhamma', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/marketing-muhammad-strategi-andal-dan-jitu-praktik-bisnis-nabi-muhamma' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'New Wave Marketing By Hermawan Kartajaya', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/new-wave-marketing-by-hermawan-kartajaya' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Strategi Promosi Pemasaran By Onni Fitriana Sitorus', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/strategi-promosi-pemasaran-by-onni-fitriana-sitorus' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Greatest Philosophers 100 Tokoh Filsuf Barat Dari Abad 6 Sm   Abad', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/the-greatest-philosophers-100-tokoh-filsuf-barat-dari-abad-6-sm---abad' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buah Dan Tanaman Herbal Yang Berkhasiat Untuk Menghilangkan Stress Dep', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/buah-dan-tanaman-herbal-yang-berkhasiat-untuk-menghilangkan-stress-dep' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kamus Obat A To Z By Alodokter', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/kamus-obat-a-to-z-by-alodokter' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Obat Obat Penting Khasiat Penggunaan Dan Efek Efek Sampingnya By Drs  Tan Hoan Tjay  Drs  Kirana Rahardja', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/obat-obat-penting-khasiat-penggunaan-dan-efek-efek-sampingnya-by-drs--tan-hoan-tjay--drs--kirana-rahardja' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tanaman Herbal Dan Buah Yang Berkhasiat Untuk Menyembuhkan Sakit Gigi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/tanaman-herbal-dan-buah-yang-berkhasiat-untuk-menyembuhkan-sakit-gigi-' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tumbuhan Herbal Dalam Islam Yang Berkhasiat Untuk Mengusir Gangguan Ji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/tumbuhan-herbal-dalam-islam-yang-berkhasiat-untuk-mengusir-gangguan-ji' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bukan Buku Tentang Obat By Apt  Yomaluto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/bukan-buku-tentang-obat-by-apt--yomaluto' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Informasi Obat Obatan Kesehatan Jiwa By Prof  David J  Castle  Nga Tran Authors Anta Samsara Translator', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/informasi-obat-obatan-kesehatan-jiwa-by-prof--david-j--castle--nga-tran-authors-anta-samsara-translator' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Serba Covid By Tim Penyusun', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/serba-covid-by-tim-penyusun' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Marketing In Crisis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/marketing-in-crisis' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Milionare Minset 05', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/milionare-minset-05' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Milionare Minset 06', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/milionare-minset-06' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Milionare Minset 07', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/milionare-minset-07' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset 01 By Mardigu Wowiek Prasantyo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-01-by-mardigu-wowiek-prasantyo' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset 02 By Mardigu Wowiek Prasantyo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-02-by-mardigu-wowiek-prasantyo' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Millionaire Mindset 09 By Mardigu Wowiek Prasantyo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/millionaire-mindset-09-by-mardigu-wowiek-prasantyo' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '03 Millionaire Mindset 03 By Mardigu Wowiek Prasantyo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/03-millionaire-mindset-03-by-mardigu-wowiek-prasantyo' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Peter Lynch', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/peter-lynch' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rencana Usaha', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/rencana-usaha' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Staup Minset', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/staup-minset' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Unlimited Power', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/unlimited-power' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ideas', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ideas' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dari Langit Kumpulan Esai Tentang Manusia Masyarakat Dan Kekuasaan B', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/dari-langit-kumpulan-esai-tentang-manusia-masyarakat-dan-kekuasaan-b' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dunia Dalam Gelembung By Reza Alexander Antonius Wattimena', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/dunia-dalam-gelembung-by-reza-alexander-antonius-wattimena' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filsafat Kata By Reza Alexander Antonius Wattimena', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/filsafat-kata-by-reza-alexander-antonius-wattimena' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filsafat Moral Pergumulan Etis Keseharian Hidup Manusia By Agustinus W', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/filsafat-moral-pergumulan-etis-keseharian-hidup-manusia-by-agustinus-w' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filsafat Perselingkuhan Sampai Anorexia Kudus By Reza Alexander Antoni', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/filsafat-perselingkuhan-sampai-anorexia-kudus-by-reza-alexander-antoni' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Markesot Bertutur By Emha Ainun Nadjib', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/markesot-bertutur-by-emha-ainun-nadjib' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tentang Manusia Dari Pikiran Pemahaman Sampai Dengan Perdamaian Dunia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/tentang-manusia-dari-pikiran-pemahaman-sampai-dengan-perdamaian-dunia' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Anggukan Ritmis Kaki Pak Kiai By Emha Ainun Nadjib', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/anggukan-ritmis-kaki-pak-kiai-by-emha-ainun-nadjib' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahagia Kenapa Tidak By Reza Alexander Antonius Wattimena', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/bahagia-kenapa-tidak-by-reza-alexander-antonius-wattimena' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Corona Ujian Tuhan Sikap Muslim Menghadapinya By M  Quraish Shihab', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/corona-ujian-tuhan-sikap-muslim-menghadapinya-by-m--quraish-shihab' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Manajemen Sumber Daya Manusia Membangun Kerja Yang Solid Untuk Meningk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/manajemen-sumber-daya-manusia-membangun-kerja-yang-solid-untuk-meningk' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bukan Buku Diet', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/bukan-buku-diet' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diet Katogenic', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/diet-katogenic' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diet Ketogenik Panduan  Resep Sehat By Rini Handayani', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/diet-ketogenik-panduan--resep-sehat-by-rini-handayani' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kesehatan Muslim Ed 9', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/majalah-kesehatan-muslim-ed-9' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'My Public Speaking By Hilbram Dunar Z Lib Org', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/my-public-speaking-by-hilbram-dunar-z-lib-org' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Si Juki Komik Strip By Faza Meonk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/si-juki-komik-strip-by-faza-meonk' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gizi Dan Kesehatan Remaja Buku Pegangan Dan Kumpulan Rencana Ajar Untuk Guru Sekolah Menengah Pertama By Judhiastuty Februhartanty Purnawati Hustina Rachman Evi Ermayani Heffy Dianawati Henny Hars', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/gizi-dan-kesehatan-remaja-buku-pegangan-dan-kumpulan-rencana-ajar-untuk-guru-sekolah-menengah-pertama-by-judhiastuty-februhartanty-purnawati-hustina-rachman-evi-ermayani-heffy-dianawati-henny-hars' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Implementasi Pendidikan Karakter By Sofyan Mustoip Muhammad Japar Zulela Ms', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/implementasi-pendidikan-karakter-by-sofyan-mustoip-muhammad-japar-zulela-ms' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Keliyanan Literasi Menginstal Budaya Dan Sosial Vudu Abdul Rahman Dea Aditya Budi Harsoni Etc', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/keliyanan-literasi-menginstal-budaya-dan-sosial-vudu-abdul-rahman-dea-aditya-budi-harsoni-etc-' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Labirin Diri Temukan Jalanmu Mengetahui Tentang Diri Sendiri Dwi Wahyuningtyas Etc', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/labirin-diri-temukan-jalanmu-mengetahui-tentang-diri-sendiri-dwi-wahyuningtyas-etc-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Literasi Pendidikan Dan Karakter Cencang Putus Tiang Tembuk Antologi Esai Edi Setiyanto Editor', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/literasi-pendidikan-dan-karakter-cencang-putus-tiang-tembuk-antologi-esai-edi-setiyanto-editor' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mantappu Jiwa Buku Latihan Soal By Jerome Polin Sijabat', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/mantappu-jiwa-buku-latihan-soal-by-jerome-polin-sijabat' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pendidikan Karakter Berbasis Tauhid Dr  Hj  R  Siti Pupu Fauziah Etc', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/pendidikan-karakter-berbasis-tauhid-dr--hj--r--siti-pupu-fauziah-etc-' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pendidikan Karakter Di Islamic Full Day School Dr  M  Slamet Yahya M Ag', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/pendidikan-karakter-di-islamic-full-day-school-dr--m--slamet-yahya-m-ag-' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Perspektif Baru Konsep Dasar Pendidikan Anak Usia Dini By Dr  Yuliani', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/perspektif-baru-konsep-dasar-pendidikan-anak-usia-dini-by-dr--yuliani-' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Big Book Biologi Sma Kelas 1 2  3 By Annisa Rahmahdkk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/big-book-biologi-sma-kelas-1-2--3-by-annisa-rahmahdkk' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Big Book Kimia Sma Kelas 1 2  3 By Ir  Omang Komarudin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/big-book-kimia-sma-kelas-1-2--3-by-ir--omang-komarudin' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Big Book Matematika Sma Kelas 1 2  3 By Tim Bbm', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/big-book-matematika-sma-kelas-1-2--3-by-tim-bbm' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bunga Rampai Gls Praktik Baik Pembelajaran Dan Penumbuhan Budaya Literasi Tim Penulis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/bunga-rampai-gls-praktik-baik-pembelajaran-dan-penumbuhan-budaya-literasi-tim-penulis' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dakwah Literasi Digital Pengaruh Baik Generasi Milenial Dalam Bermedia Sosial Vudu Abdul Rahman Nining Kusni Lutfil Khakim Etc', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/dakwah-literasi-digital-pengaruh-baik-generasi-milenial-dalam-bermedia-sosial-vudu-abdul-rahman-nining-kusni-lutfil-khakim-etc-' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Generasi Milenial Diskursus Teologi Pendidikan Dinamika Psikologis Dan Kelekatan Pada Agama Di Era Banjir Informasi By Jeane Marie Tulung Achmad Syahid Yanice Janis Yan O  Kalampung Editor', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/generasi-milenial-diskursus-teologi-pendidikan-dinamika-psikologis-dan-kelekatan-pada-agama-di-era-banjir-informasi-by-jeane-marie-tulung-achmad-syahid-yanice-janis-yan-o--kalampung-editor' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gerakan Literasi Sekolah Dari Pucuk Hingga Akar Sebuah Refleksi Billy Antoro', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/gerakan-literasi-sekolah-dari-pucuk-hingga-akar-sebuah-refleksi-billy-antoro' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Petunjuk Praktis Pengembangan Kantin Sehat Sekolah By Dr  Judhiastuty Februhartanty M Sc  Dr Dwi Nastiti Iswarawanti M Sc  Evi Ermayani M Sc  Eflita Meiyetriani Mkm  Indriya Laras P M Gizi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/petunjuk-praktis-pengembangan-kantin-sehat-sekolah-by-dr--judhiastuty-februhartanty-m-sc--dr-dwi-nastiti-iswarawanti-m-sc--evi-ermayani-m-sc--eflita-meiyetriani-mkm--indriya-laras-p-m-gizi-' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Praktik Literasi Mahasiswa Universitas Islam Negeri Tantangan Dan Peluang Literasi Di Era Digital Agus Iswanto Moch  Lukluil Maknun Etc', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/praktik-literasi-mahasiswa-universitas-islam-negeri-tantangan-dan-peluang-literasi-di-era-digital-agus-iswanto-moch--lukluil-maknun-etc-' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Strategi Taktis Pendidikan Karakter Untuk Paud Dan Sekolah By Dr  Zubaedi M Ag  M Pd', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/strategi-taktis-pendidikan-karakter-untuk-paud-dan-sekolah-by-dr--zubaedi-m-ag--m-pd' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Krisis Kebebasan By Albert Camus', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/krisis-kebebasan-by-albert-camus' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Neoliberalisme Mencengkeram Indonesia By Awalil Rizky Dan Nasyith Majidi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/neoliberalisme-mencengkeram-indonesia-by-awalil-rizky-dan-nasyith-majidi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Xxxx Deleted Xxxx', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/xxxx-deleted-xxxx' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Depresi Sebuah Panduan Ringkas By National Institute Of Mental Health Nimh Amerika Serikat Anta Samsara Translator', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/depresi-sebuah-panduan-ringkas-by-national-institute-of-mental-health-nimh-amerika-serikat-anta-samsara-translator' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gelombang Lautan Jiwa Sebuah Psikomemoar By Anta Samsara', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/gelombang-lautan-jiwa-sebuah-psikomemoar-by-anta-samsara' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kindfulness Terapi Untuk Hidup Bahagia Dan Cerita Cerita Penyejuk Hati By Ajahn Brahm', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/kindfulness-terapi-untuk-hidup-bahagia-dan-cerita-cerita-penyejuk-hati-by-ajahn-brahm' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Membaca Pikiran Orang Lewat Bahasa Tubuh By Dianata Eka Putra', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/membaca-pikiran-orang-lewat-bahasa-tubuh-by-dianata-eka-putra' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengenal Depresi By Anta Samsara Translator Nimh National Institute Of Mental Health', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mengenal-depresi-by-anta-samsara-translator-nimh-national-institute-of-mental-health' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengenal Gangguan Bipolar By National Institute Of Mental Health Nimh Amerika Serikat Dinarti S Kp Map  Anta Samsara Translator', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mengenal-gangguan-bipolar-by-national-institute-of-mental-health-nimh-amerika-serikat-dinarti-s-kp-map--anta-samsara-translator' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengenal Kecemasan Dan Serangan Panik By Mind Inggris Joko Adi Pamungkas  Anta Samsara Translator', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mengenal-kecemasan-dan-serangan-panik-by-mind-inggris-joko-adi-pamungkas--anta-samsara-translator' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengenal Psikologi Humanistik By Anta Samsara', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mengenal-psikologi-humanistik-by-anta-samsara' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengenal Skizofrenia By National Institute Of Mental Health Nimh Amerika Serikat Anta Samsara Translator', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/mengenal-skizofrenia-by-national-institute-of-mental-health-nimh-amerika-serikat-anta-samsara-translator' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pengantar Psikologi By Adnan Achiruddin Saleh', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/pengantar-psikologi-by-adnan-achiruddin-saleh' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Psikologi Islam Kajian Teoritik Dan Penelitian Empirik By Tim Asosiasi Psikologi Islam', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/psikologi-islam-kajian-teoritik-dan-penelitian-empirik-by-tim-asosiasi-psikologi-islam' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Psikologi Perkembangan By Yudrik Jahja', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/psikologi-perkembangan-by-yudrik-jahja' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rahasia Makna Kehidupan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/rahasia-makna-kehidupan' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '5 Aturan Pikiran', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/5-aturan-pikiran' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Alpha Girl Guide', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/alpha-girl-guide' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Atomic Habits Perubahan Kecil Yang Memberikan Hasil Luar Biasa By James Clear', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/atomic-habits-perubahan-kecil-yang-memberikan-hasil-luar-biasa-by-james-clear' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ketika Kamu Bangkrut', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/ketika-kamu-bangkrut' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rashomon Kumpulan Cerita Akutagawa Ryunosuke By Akutagawa Ryunosuke', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/rashomon-kumpulan-cerita-akutagawa-ryunosuke-by-akutagawa-ryunosuke' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Air Mata Kopi Buku Puisi By Gola Gong', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/air-mata-kopi-buku-puisi-by-gola-gong' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Amor Fati   By Syahid Muhammad', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/amor-fati---by-syahid-muhammad' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Antologi Puisi 100 Karya Terbaik Lomba Menulis Puisi Nasional 2020 By A Julianor Abdillah Dkk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/antologi-puisi-100-karya-terbaik-lomba-menulis-puisi-nasional-2020-by-a-julianor-abdillah-dkk' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Antologi Puisi Kesunyian Hati By Bryan Suryanto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/antologi-puisi-kesunyian-hati-by-bryan-suryanto' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boy Chandra   Setelah Hujan Reda', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/boy-chandra---setelah-hujan-reda' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Egosentris   By Syahid Muhammad', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/egosentris---by-syahid-muhammad' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jakarta Sebelum Pagi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/jakarta-sebelum-pagi' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kala', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kala' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kekasihku Kumpulan Puisi Joko Pinurbo By Joko Pinurbo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/kekasihku-kumpulan-puisi-joko-pinurbo-by-joko-pinurbo' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Melihat Jarak   Serpihan Sajak', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/melihat-jarak---serpihan-sajak' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Nyanyian Akar Rumput Kumpulan Lengkap Puisi By Wiji Thukul', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/nyanyian-akar-rumput-kumpulan-lengkap-puisi-by-wiji-thukul' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pada Sebuah Kata Pergi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/pada-sebuah-kata-pergi' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Paradigma   By Syahid Muhammad', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/paradigma---by-syahid-muhammad' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sajak Sajak Sunyi Sehimpun Puisi By Budhi Setyawan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/sajak-sajak-sunyi-sehimpun-puisi-by-budhi-setyawan' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sepasang Yang Melawan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/sepasang-yang-melawan' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Trilogi Soekram', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/trilogi-soekram' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tuhan Izinkan Aku Menjadi Pelacur', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/tuhan-izinkan-aku-menjadi-pelacur' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ziarah Sunyi Antologi Puisi Religi By Ahmadun Yosi Herfanda Dkk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/ziarah-sunyi-antologi-puisi-religi-by-ahmadun-yosi-herfanda-dkk' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Resep Masakan Ala Korea Yang Mudah Dibuat Dan Bikin Ngiler', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/10-resep-masakan-ala-korea-yang-mudah-dibuat-dan-bikin-ngiler' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '102206672 Edisi0611', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/102206672-edisi0611' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '18 Resep Tongseng Tanpa Santan Lezat Dan Anti Ribet', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/18-resep-tongseng-tanpa-santan-lezat-dan-anti-ribet' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '232416320 Resep Kreatif Mengolah Ikan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/232416320-resep-kreatif-mengolah-ikan' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '25 Jajanan Kaki 5 Nusantara', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/25-jajanan-kaki-5-nusantara' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '25 Resep Cemilan Dari Pisang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/25-resep-cemilan-dari-pisang' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '25 Resep Martabak Manis Enak Lembut Dan Praktis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/25-resep-martabak-manis-enak-lembut-dan-praktis' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '37 Resep Pilihan Mudah Enak Terbukti By Tim Penyusun', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/37-resep-pilihan-mudah-enak-terbukti-by-tim-penyusun' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '46 Resep Variasi Nasi Goreng By Tim Pustaka Hanan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/46-resep-variasi-nasi-goreng-by-tim-pustaka-hanan' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aneka Resep Cake   Roti', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/aneka-resep-cake---roti' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aneka Resep Jus Sehat Mastoso Slow Juicer Mt 67 Bagian 1 By Tim Penyusun', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/aneka-resep-jus-sehat-mastoso-slow-juicer-mt-67-bagian-1-by-tim-penyusun' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aneka Resep Makanan Dari Singkong', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/aneka-resep-makanan-dari-singkong' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Lengkap Aneka Cake By Diah Nimpuno', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/buku-lengkap-aneka-cake-by-diah-nimpuno' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cooking Basic', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/cooking-basic' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Debm Diet Enak Bahagia Dan Menyenangkan By Robert Hendrik Liembono', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/debm-diet-enak-bahagia-dan-menyenangkan-by-robert-hendrik-liembono' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Femina Sedapnya Sajian Manado', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/femina-sedapnya-sajian-manado' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kalender Resep Serba Telur Dr Dr  Tan Shot', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/kalender-resep-serba-telur-dr-dr--tan-shot' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Koktail   Minuman Pesta Sensasional', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/koktail---minuman-pesta-sensasional' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kuliner Soto Nusantara Kumpulan Resep By Susilaningsih Martina Andriani Bara Yudhistira', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/kuliner-soto-nusantara-kumpulan-resep-by-susilaningsih-martina-andriani-bara-yudhistira' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kulinologi Chocolate Time', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/kulinologi-chocolate-time' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Kulinologi 02', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/majalah-kulinologi-02' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Majalah Yukmakan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/majalah-yukmakan' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menu Go Local', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/menu-go-local' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menu Pilih Ikan Saja', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/menu-pilih-ikan-saja' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menu Resep Serba Kacang Kacangan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/menu-resep-serba-kacang-kacangan' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menu Vegetarian Chinese Food', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/menu-vegetarian-chinese-food' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menu Khas Cirebon Lezat Rasa Pesisir', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/menu-khas-cirebon-lezat-rasa-pesisir' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Rainbow Peggy Taco By Majalah Sedap', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/rainbow-peggy-taco-by-majalah-sedap' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Cake Masa Kini By Saji Edisi 408', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-cake-masa-kini-by-saji-edisi-408' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Es Lilin Yogurt Buah   Siomay', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-es-lilin-yogurt-buah---siomay' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Hidangan Kukus Di Musim Hujan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-hidangan-kukus-di-musim-hujan' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Masakan Keluarga Sehat 2 By Dr  Tan Shot Yen M Hum', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-masakan-keluarga-sehat-2-by-dr--tan-shot-yen-m-hum' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Masakan Keluarga Sehat By Dr  Tan Shot Yen M Hum', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-masakan-keluarga-sehat-by-dr--tan-shot-yen-m-hum' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Masakan Nusantara', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-masakan-nusantara' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Sajian Serba Ikan By Saji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-sajian-serba-ikan-by-saji' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Saji 458   Olahan Serba Ayam By Saji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/saji-458---olahan-serba-ayam-by-saji' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Saji 457   Insprirasi Menu Sarapan By Saji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/saji-457---insprirasi-menu-sarapan-by-saji' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Saji Serba Sayur Edisi 461 By Saji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/saji-serba-sayur-edisi-461-by-saji' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tabloid Saji 20210217', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/tabloid-saji-20210217' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Menu Vegetarian Chinese Food', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/ebook-menu-vegetarian-chinese-food' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '100 Menu Kopi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/100-menu-kopi' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1000 Resep Masakan   Kue Ala Ibu Sisca Soewitomo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/1000-resep-masakan---kue-ala-ibu-sisca-soewitomo' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '15 Resep Masakan Sederhana Untuk Pemula Praktis Dan Enak', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/15-resep-masakan-sederhana-untuk-pemula-praktis-dan-enak' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30 Menu Serba Sup', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/30-menu-serba-sup' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '40 Set Menu Sehari Hari Hits Di Instagram By Dhila Sina', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/40-set-menu-sehari-hari-hits-di-instagram-by-dhila-sina' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '500 Resep Masakan Koleksi Kursus Masak Ny Liem', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/500-resep-masakan-koleksi-kursus-masak-ny-liem' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '500 Resep Masakan Terfavorit', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/500-resep-masakan-terfavorit' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '90 Resep Masakan Menu Praktis Untuk Sebulan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/90-resep-masakan-menu-praktis-untuk-sebulan' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bersatu Dalam Rasa   Kumpulan Resep Masakan Praktis Untuk Dirumahaja', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/bersatu-dalam-rasa---kumpulan-resep-masakan-praktis-untuk-dirumahaja' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Resep   Kumpulan Resep Andalan Selebriti Tanah Air', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/buku-resep---kumpulan-resep-andalan-selebriti-tanah-air' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cooking With Love Ala Dapur Mommycha', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/cooking-with-love-ala-dapur-mommycha' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diet Kenyang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/diet-kenyang' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Frimarasa Ala Kafe', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/frimarasa-ala-kafe' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Go Kitchen', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/go-kitchen' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Makanan Favorit Anti Gagal', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-makanan-favorit-anti-gagal' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Resep Simple Frida', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/resep-simple-frida' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Saji   Kreasi Cantik Puding Lembut Nan Legit', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/saji---kreasi-cantik-puding-lembut-nan-legit' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Simple   Moist Cake   Tintin Rayner', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/simple---moist-cake---tintin-rayner' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tutorial Lengkap Serba Serbi Baking', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/tutorial-lengkap-serba-serbi-baking' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tabloid Saji 20210331 20210413', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Resep (Daftar Masakan) dari perpus.org.', false, 'https://www.perpus.org/resep/tabloid-saji-20210331-20210413' 
FROM categories WHERE name = 'Resep (Daftar Masakan)' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Biografi Gusdur By Greg Barton', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/biografi-gusdur-by-greg-barton' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Humanisme Gus Dur By Syaiful Arif', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/humanisme-gus-dur-by-syaiful-arif' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pendapat Tokoh Tentang Gus Dur Manusia Multidimensional By Maswan  Aida Farichatul Laila', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/pendapat-tokoh-tentang-gus-dur-manusia-multidimensional-by-maswan--aida-farichatul-laila' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sang Zahid Mengarungi Sufisme Gus Dur By Kh  Husein Muhammad', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/sang-zahid-mengarungi-sufisme-gus-dur-by-kh--husein-muhammad' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Jenghis Khan Legenda Sang Penakluk Dari Mongolia By John Man', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/jenghis-khan-legenda-sang-penakluk-dari-mongolia-by-john-man' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kubilai Khan Legenda Sang Penguasa Terbesar Dalam Sejarah By John Man', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/kubilai-khan-legenda-sang-penguasa-terbesar-dalam-sejarah-by-john-man' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengislamkan Jawa By M  C  Ricklefs', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/mengislamkan-jawa-by-m--c--ricklefs' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Orang Orang Di Persimpangan Kiri Jalan By Soe Hok Gie', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/orang-orang-di-persimpangan-kiri-jalan-by-soe-hok-gie' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Sisi Lain Diponegoro By Peter Carey', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/sisi-lain-diponegoro-by-peter-carey' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Oligarki By Jeffrey A. Winters 853', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/oligarki-by-jeffrey-a.-winters-853' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ensiklopedi Kerajaan Kerajaan Nusantara Hikayat Dan Sejarah Bagian 3 240', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/ensiklopedi-kerajaan-kerajaan-nusantara-hikayat-dan-sejarah-bagian-3-240' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ensiklopedi Kerajaan Kerajaan Nusantara Hikayat Dan Sejarah Bagian 1 538', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/ensiklopedi-kerajaan-kerajaan-nusantara-hikayat-dan-sejarah-bagian-1-538' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ensiklopedi Kerajaan Kerajaan Nusantara Hikayat Dan Sejarah Bagian 2 903', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/ensiklopedi-kerajaan-kerajaan-nusantara-hikayat-dan-sejarah-bagian-2-903' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ai  Desainancaman Atau Pelu  Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/ai--desainancaman-atau-pelu--z-library' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ai Revolusi Pembelajaran Me  Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/ai-revolusi-pembelajaran-me--z-library' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ai Dalam Digital Marketing  Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/ai-dalam-digital-marketing--z-library' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Eksistensi Penggunaan Ai A  Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/eksistensi-penggunaan-ai-a--z-library' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Menggali Potensi Video Ai D  Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/menggali-potensi-video-ai-d--z-library' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Peran Ai Dalam Dunia Pendid  Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/peran-ai-dalam-dunia-pendid--z-library' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Chatgpt For Copywriting', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/ebook-chatgpt-for-copywriting' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahasa Inggris Sistem 52m Volume 1 Herpinus Simanjuntak Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/bahasa-inggris-sistem-52m-volume-1-herpinus-simanjuntak-z-library' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahasa Inggris Sistem 52m Volume 2 Herpinus Simanjuntak Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/bahasa-inggris-sistem-52m-volume-2-herpinus-simanjuntak-z-library' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahasa Inggris Sistem 52m Volume 3 Herpinus Simanjuntak Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/bahasa-inggris-sistem-52m-volume-3-herpinus-simanjuntak-z-library' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Otodidak Jago Kuasai Bahasa Inggris Dari Nol', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/otodidak-jago-kuasai-bahasa-inggris-dari-nol' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Otodidak Jago Kuasai Bhs Inggris', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/otodidak-jago-kuasai-bhs-inggris' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1  Rangkuman Materi Twk 1 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/1--rangkuman-materi-twk-1-1' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1  Rangkuman Materi Twk 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fisik Sejarah dari perpus.org.', false, 'https://www.perpus.org/fisik-sejarah/1--rangkuman-materi-twk-1' 
FROM categories WHERE name = 'Fisik Sejarah' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '117  Senja Hujan Dan Cerita Yang Telah Usai   Boy Candrai', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/117--senja-hujan-dan-cerita-yang-telah-usai---boy-candrai' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1413  Personal Branding   Tomli Wafa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/1413--personal-branding---tomli-wafa' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1487 Dale Carnegie The Magic Of Speaking Meningkatkan Kepercayaan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Motivasi dari perpus.org.', false, 'https://www.perpus.org/motivasi/1487-dale-carnegie-the-magic-of-speaking-meningkatkan-kepercayaan' 
FROM categories WHERE name = 'Motivasi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '389 Kado Pernikahan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/389-kado-pernikahan' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '739  Public Speaking Mastery   Ongky Hojanto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/739--public-speaking-mastery---ongky-hojanto' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '839 Quarter Life Crisispdf', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/839-quarter-life-crisispdf' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Atomic Habits Perubahan Kecil Yang Memberikan Hasil Luar Bia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/atomic-habits-perubahan-kecil-yang-memberikan-hasil-luar-bia' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Atomic Habits Perubahan Kecil Yang Memberikan Hasil Luar Biasa James', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/atomic-habits-perubahan-kecil-yang-memberikan-hasil-luar-biasa-james' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Overthinking   Rahma Kusharjanti', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berdamai-dengan-overthinking---rahma-kusharjanti' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Change Your Aura Change You Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/change-your-aura-change-you-z-library' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cinta Di Rumah Hasan Al Banna', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/cinta-di-rumah-hasan-al-banna' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Covey   The 7 Habits Of Highly Effective People', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/covey---the-7-habits-of-highly-effective-people' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Crime And Punishment   Fyodor Dostoyevsky', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/crime-and-punishment---fyodor-dostoyevsky--' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dasar Dasar Bimbingan Dan Konseling', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/dasar-dasar-bimbingan-dan-konseling' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dark Psychology Secret 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/dark-psychology-secret-1' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Delusi Akan Tuhan 2', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/delusi-akan-tuhan-2' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diary Of A Wimpy Kid  03    The Last Straw   Jeff Kinney', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/diary-of-a-wimpy-kid--03----the-last-straw---jeff-kinney' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diary Of A Wimpy Kid  04    Dog Days   Jeff Kinney', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/diary-of-a-wimpy-kid--04----dog-days---jeff-kinney' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diary Of A Wimpy Kid  05    The Ugly Truth   Jeff Kinney', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/diary-of-a-wimpy-kid--05----the-ugly-truth---jeff-kinney' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A Thousand Splendid Suns Compress 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/a-thousand-splendid-suns-compress-1' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doc 20240422 Wa0000', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/doc-20240422-wa0000-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doc 20240422 Wa0007', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/doc-20240422-wa0007-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diary Of A Wimpy Kid  06    Cabin Fever   Jeff Kinney', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/diary-of-a-wimpy-kid--06----cabin-fever---jeff-kinney' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diary Of A Wimpy Kid  07    Jeff Kinney', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/diary-of-a-wimpy-kid--07----jeff-kinney' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diary Of A Wimpy Kid  08    Hard Luck   Jeff Kinney', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/diary-of-a-wimpy-kid--08----hard-luck---jeff-kinney' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diary Of A Wimpy Kid  10    Old School   Jeff Kinney', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/diary-of-a-wimpy-kid--10----old-school---jeff-kinney' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Diary Of A Wimpy Kid  11    Double Down   Jeff Kinney', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Komik dari perpus.org.', false, 'https://www.perpus.org/komik/diary-of-a-wimpy-kid--11----double-down---jeff-kinney' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dikatakan Atau Tidak Itu Tetap Cinta Kumpulan Sajak Tere Liye', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/dikatakan-atau-tidak-itu-tetap-cinta-kumpulan-sajak-tere-liye' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dinding Jean Paul Sartre', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/dinding-jean-paul-sartre' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Doa Doa Seputar Pernikahan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/doa-doa-seputar-pernikahan' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dosa Dosa Besar   Imam Adz Dzahabi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/dosa-dosa-besar---imam-adz-dzahabi' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dunia Cinta Filosofis Kahlil Gibran', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/dunia-cinta-filosofis-kahlil-gibran' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dunia Sophie 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/dunia-sophie-1' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook   Pernak Pernik Seputar Pernikahan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Parenting dari perpus.org.', false, 'https://www.perpus.org/parenting/ebook---pernak-pernik-seputar-pernikahan' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Easy Copywriting Contek Abis Sampai Laris Dewa Selling Z Lib Org', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/easy-copywriting-contek-abis-sampai-laris-dewa-selling-z-lib-org' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook   Dunia Adalah Tempat Cobaan &amp;amp; Ujian', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/ebook---dunia-adalah-tempat-cobaan-&amp;amp;-ujian' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ebook Ego State Therapy   Antonius Arief', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ebook-ego-state-therapy---antonius-arief' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ego Is The Enemy   Ryan Holiday', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ego-is-the-enemy---ryan-holiday' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Elon Musk Ashlee Vance Z Library', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/elon-musk-ashlee-vance-z-library' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Emotional Healing Therapy Irma Rahayu', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/emotional-healing-therapy-irma-rahayu' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Everything Is Fucked   Mark Manson', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/everything-is-fucked---mark-manson' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Farmakologi Dasar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/farmakologi-dasar' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Farmakologi Dalam Keperawatan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/farmakologi-dalam-keperawatan' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Farmakologi 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/farmakologi-1' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Farmakologi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/farmakologi' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fiersa Besari   11 11', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/fiersa-besari---11-11' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fiersa Besari   Arah Langkah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/fiersa-besari---arah-langkah' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fiersa Besari   Catatan Juang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/fiersa-besari---catatan-juang' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Fikih Daulah Dalam Alquran Dan Sunnah Syaikh Yusuf Al Qardhawi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/fikih-daulah-dalam-alquran-dan-sunnah-syaikh-yusuf-al-qardhawi' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filosofi Teras Mega Best Seller   Henry Manampiring', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/filosofi-teras-mega-best-seller---henry-manampiring' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filosofi Teras By Henry Manampiring Z Lib Org', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/filosofi-teras-by-henry-manampiring-z-lib-org' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filosofi Teras By Henry Manampiring', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/filosofi-teras-by-henry-manampiring' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filosofi Kopi Lestari Dee D', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/filosofi-kopi-lestari-dee-d-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filosofi Teras Henry Manampiring Z Lib Org', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/filosofi-teras-henry-manampiring-z-lib-org' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Filsafat Perempuan Dalam Islam', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/filsafat-perempuan-dalam-islam' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Komet Tere Liye', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/komet-tere-liye' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dilema Kesetaraan Gender Sri Djoharwinarlien', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/dilema-kesetaraan-gender-sri-djoharwinarlien' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dunia Sophie Sebuah Novel Filsafat 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/dunia-sophie-sebuah-novel-filsafat-1' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1234  How To Be Free By Epiktetos', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/1234--how-to-be-free-by-epiktetos' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1279 Power Vs Force Faktor Terselubung Penentu Prilaku Manusia By', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/1279-power-vs-force-faktor-terselubung-penentu-prilaku-manusia-by' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '190  Dark Psychoiogy   Bahasa Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/190--dark-psychoiogy---bahasa-indonesia' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '221 Satanic Finances   A Riawan Amin 230912 094030 1', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/221-satanic-finances---a-riawan-amin-230912-094030-1' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '4 Discipline Of Execution', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/4-discipline-of-execution' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '5 6229002575606188339 221112 081819', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/5-6229002575606188339-221112-081819' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '991  Aristoteles Inspirasi Dan Pencerahan Untuk Hidup', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/991--aristoteles-inspirasi-dan-pencerahan-untuk-hidup' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A The Essence Of Thick Face Black Heart', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/a-the-essence-of-thick-face-black-heart' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A System Of Logic Ratiocinative And Inductive Classic Reprint', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/a-system-of-logic-ratiocinative-and-inductive-classic-reprint-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A Whole New Mind Pemikiran Yang Benar Benar Baru Dan Komplet', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/a-whole-new-mind-pemikiran-yang-benar-benar-baru-dan-komplet' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aku Yang Lebih Kuat Dari Kemarin   Farah Via Rahmawati', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/aku-yang-lebih-kuat-dari-kemarin---farah-via-rahmawati' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Baca Buku Ini Saat Engkau Lelah   Munita Yeni', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/baca-buku-ini-saat-engkau-lelah---munita-yeni' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Baca Buku Ini Saat Engkau Lelah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/baca-buku-ini-saat-engkau-lelah' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berani Bahagia Ichiro Kishimi  Fumitake Koga', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/berani-bahagia-ichiro-kishimi--fumitake-koga' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Diri Sendiri   Muthia Sayekti', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/berdamai-dengan-diri-sendiri---muthia-sayekti' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Emosi   Asti Musman', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/berdamai-dengan-emosi---asti-musman' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Insecurity   Sony Adams', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berdamai-dengan-insecurity---sony-adams' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Kecemasan   Sony Adams', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berdamai-dengan-kecemasan---sony-adams' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Kenyataan Hidup   Dewi Indra', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berdamai-dengan-kenyataan-hidup---dewi-indra' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Rasa Malas   Munita Yeni', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berdamai-dengan-rasa-malas---munita-yeni' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Takdir   Sony Adams', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berdamai-dengan-takdir---sony-adams' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Building A Story Brand   Donal Miller', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/building-a-story-brand---donal-miller' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Change Your Bad Habit', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/change-your-bad-habit' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dark Psychology Secrets The Essential Guide To Persuasion Emotional', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/dark-psychology-secrets-the-essential-guide-to-persuasion-emotional' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Grit The Power Of Passion And Perseverance Bahasa Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/grit-the-power-of-passion-and-perseverance-bahasa-indonesia' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Good Vibes Good Life   Bahasa Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/good-vibes-good-life---bahasa-indonesia' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hello Cello   Nadia Ristivani', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/hello-cello---nadia-ristivani' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How To Beat Prop Firms In 2025', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/how-to-beat-prop-firms-in-2025' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How To Win Friends Influence People In The Digital Age', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/how-to-win-friends-influence-people-in-the-digital-age' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How To Talk Anyone', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/how-to-talk-anyone' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ikigai   The Japanese Secret To A Long And Happy Life', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/ikigai---the-japanese-secret-to-a-long-and-happy-life-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Da Vinci Code   Dan Brown', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sastra dari perpus.org.', false, 'https://www.perpus.org/sastra/the-da-vinci-code---dan-brown' 
FROM categories WHERE name = 'Sastra' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '1  100 Juta Pertama Dari Toko Online', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/1--100-juta-pertama-dari-toko-online' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10  Rich Dad Poor Dad', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/10--rich-dad-poor-dad' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '11  The Entrepreneur Book', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/11--the-entrepreneur-book' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '12  Zero To One', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/12--zero-to-one' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '13  Bisnis Pasti Sukses Dengan Creative Marketing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/13--bisnis-pasti-sukses-dengan-creative-marketing' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '14  Marketing Plan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/14--marketing-plan' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '15  Buka Langsung Laris', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/15--buka-langsung-laris' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '16  30 Hari Jago Jualan', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/16--30-hari-jago-jualan' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '17  Ebook Super Shopee', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/17--ebook-super-shopee' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '2  60 Cara Online Menghasilkan Uang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/2--60-cara-online-menghasilkan-uang' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '20  Kitab Hitam Tiktok Affiliate', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/20--kitab-hitam-tiktok-affiliate' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '21  Easy Tiktok Marketing', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/21--easy-tiktok-marketing' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '22  Kitab Putih Tiktok Affiliate', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/22--kitab-putih-tiktok-affiliate' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '24  From Reseller To Bussines Owner', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/24--from-reseller-to-bussines-owner' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '25  How To Win Friends', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/25--how-to-win-friends' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '26  33 Cara Kaya Ala Bob Sadino', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/26--33-cara-kaya-ala-bob-sadino' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '27   Kiat Sukses Di Masa Sulit By Napoleon Hilll', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/27---kiat-sukses-di-masa-sulit-by-napoleon-hilll' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '28  Suksesnya Jack Ma Alibaba', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/28--suksesnya-jack-ma-alibaba' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '29  Dari Start Up Menuju Unicorn', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/29--dari-start-up-menuju-unicorn' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30   The Smart Selling Book', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/30---the-smart-selling-book' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '31  The Networking Book', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/31--the-networking-book' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '32  Rahasia Bisnis Orang Cina', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/32--rahasia-bisnis-orang-cina' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '34  Bisnis Waralaba Indomaret', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/34--bisnis-waralaba-indomaret' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '35  9 Rahasia Bisnis Startup', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/35--9-rahasia-bisnis-startup' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '36   10 Juta Pertama Dari Menulis', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/36---10-juta-pertama-dari-menulis' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '48  Effective Leadership Communication', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/48--effective-leadership-communication' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '49  Building A Storybrand', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/49--building-a-storybrand' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '50  How To Win An Argument', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/50--how-to-win-an-argument' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '52  Positioning', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/52--positioning' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '53  The Decision Book', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/53--the-decision-book' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '54  The Magic Of Thinking Big', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/54--the-magic-of-thinking-big' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '55  Marketing 4 0', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/55--marketing-4-0' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '56  New World Order', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Fiksi dari perpus.org.', false, 'https://www.perpus.org/fiksi/56--new-world-order' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '57  Memulai Usaha Baru', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/57--memulai-usaha-baru' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '58  4 Work Weks', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/58--4-work-weks' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '59  The Rules Of Work', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/59--the-rules-of-work' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '60  Ilmu Bisnis Tionghoa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/60--ilmu-bisnis-tionghoa' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '63  Start With Why', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/63--start-with-why' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '9  The Visual Mba', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/9--the-visual-mba' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Grit   The Power Of Passion And Perseverance Bahasa Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/grit---the-power-of-passion-and-perseverance-bahasa-indonesia' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How To Think Like Sherlock', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/how-to-think-like-sherlock' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'How To Talk Anyone Id', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/how-to-talk-anyone-id' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Id  It Is Bad Or Good Habits By Sabrina Ara Sfile Mobi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/id--it-is-bad-or-good-habits-by-sabrina-ara-sfile-mobi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Art Of War Sun Tzu Seni Perang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/the-art-of-war-sun-tzu-seni-perang' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'The Secret Rahasia Rhonda Byrne', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/the-secret-rahasia-rhonda-byrne-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Thinking Fast And Slow', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/thinking-fast-and-slow-' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Thinks And Grow Rich', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/thinks-and-grow-rich' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'You Do You Discovering Life Through Experiments Self Awareness Fellexandro', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/you-do-you-discovering-life-through-experiments-self-awareness-fellexandro' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '38  Bisnis Ala Nabi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Agama dari perpus.org.', false, 'https://www.perpus.org/agama/38--bisnis-ala-nabi' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '39  The Richest Man In Babylon', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/39--the-richest-man-in-babylon' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '41  Seni Dalam Menjual', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/41--seni-dalam-menjual' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '42  The Dip', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/42--the-dip' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '43  99 Taktik Bisnis Ala Miliarder', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/43--99-taktik-bisnis-ala-miliarder' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '44  Glossy Gentlemen Guide', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/44--glossy-gentlemen-guide' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '45  Buku Sakti Hacker', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Teknologi dari perpus.org.', false, 'https://www.perpus.org/teknologi/45--buku-sakti-hacker' 
FROM categories WHERE name = 'Teknologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '46  The 5 Second Rule', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/46--the-5-second-rule' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '47  Self Theories', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/47--self-theories' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aurelie Moeremans Idn Broken Strings 293', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/aurelie-moeremans-idn-broken-strings-293' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Overthinking   Rahma Kusharjanti 543', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Lainnya dari perpus.org.', false, 'https://www.perpus.org/lainnya/berdamai-dengan-overthinking---rahma-kusharjanti-543' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '4. Easyy Copywriting  520', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/4.-easyy-copywriting--520' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '5. Emak Emak Jago Jualan 763', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/5.-emak-emak-jago-jualan-763' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '6. Tingkatkan Penjualan Online Shop Dengan Mudah 653', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/6.-tingkatkan-penjualan-online-shop-dengan-mudah-653' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '33. Creativepreneur 281', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/33.-creativepreneur-281' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '7. Bisnis Online Auto Pilot Jilid 1 750', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/7.-bisnis-online-auto-pilot-jilid-1-750' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '8. Jago Ngiklan Di Marketplace 555', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/8.-jago-ngiklan-di-marketplace-555' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '19. Closing Bertubi Tubi 355', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Digital Marketing dari perpus.org.', false, 'https://www.perpus.org/digital-marketing/19.-closing-bertubi-tubi-355' 
FROM categories WHERE name = 'Digital Marketing' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '18. Pasukan Penjualan Militan 925', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/18.-pasukan-penjualan-militan-925' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '23. Bikin Laporan Keuangan Bisnis Online 921', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/23.-bikin-laporan-keuangan-bisnis-online-921' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '37. Chit Chat Banyak Chatting Banyak Closing Penjualan Cring Cring Cring 893', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/37.-chit-chat-banyak-chatting-banyak-closing-penjualan-cring-cring-cring-893' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Tech Sales E Book   1st Edition', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/tech-sales-e-book---1st-edition' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Steps To A More Fulfilling Life', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/10-steps-to-a-more-fulfilling-life' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '10 Strategi Manajemen Terdahsyat Di Dunia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/10-strategi-manajemen-terdahsyat-di-dunia' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '100 Cara Mengenal Karakter Dia   Susi Susanti', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/100-cara-mengenal-karakter-dia---susi-susanti' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '101 Intisari Seni Perang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/101-intisari-seni-perang' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '119 Bahagia Itu Dipraktekin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/119-bahagia-itu-dipraktekin' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '120 Berpikir Itu Dipraktekin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/120-berpikir-itu-dipraktekin' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '121 Cinta Itu Di Praktekin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/121-cinta-itu-di-praktekin' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '180 Derajat Berpikir Beda Untuk Menciptakan Hidup Yang Luar Biasa   Edi Susanto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/180-derajat-berpikir-beda-untuk-menciptakan-hidup-yang-luar-biasa---edi-susanto' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '20 Amalan Pelancar Rezeki Dalam Berbisnis   Panduan Tips Dan Trik Jitu Untuk Menaikkan Omzet Bisnis Bagi Pelaku Usaha Dan Calon Entrepreneur   Abu Ibrahim', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/20-amalan-pelancar-rezeki-dalam-berbisnis---panduan-tips-dan-trik-jitu-untuk-menaikkan-omzet-bisnis-bagi-pelaku-usaha-dan-calon-entrepreneur---abu-ibrahim' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3 Menit Membuat Anak Keranjingan Belajar   Reza Rifanto', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/3-menit-membuat-anak-keranjingan-belajar---reza-rifanto' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '3 Teknik Mahir Berbicara Di Depan Publik    Sederhana &amp;amp; Sangat Cocok Untuk Pemula   Hebby Agus Kurnia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/3-teknik-mahir-berbicara-di-depan-publik----sederhana-&amp;amp;-sangat-cocok-untuk-pemula---hebby-agus-kurnia' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '30 Tips Baca Membaca Itu Nikmat!   Adi Wahyu Adji', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Hobi dari perpus.org.', false, 'https://www.perpus.org/hobi/30-tips-baca-membaca-itu-nikmat!---adi-wahyu-adji' 
FROM categories WHERE name = 'Hobi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '33 Cara Kaya Ala Bob Sadino   Motivasi Bisnis Anti Gagal   Asterlita Sv', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/33-cara-kaya-ala-bob-sadino---motivasi-bisnis-anti-gagal---asterlita-sv' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '33 Inspirasi Rumah Muslim   Gaut Susanta', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/33-inspirasi-rumah-muslim---gaut-susanta' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '365 Tips Sehat Tanpa Sakit   Cytia Widjaja', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/365-tips-sehat-tanpa-sakit---cytia-widjaja' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '366 Reflections Of Life', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/366-reflections-of-life' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '5 Cara Menjadi Pribadi Luar Biasa   Seno Aji Airlangga', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/5-cara-menjadi-pribadi-luar-biasa---seno-aji-airlangga' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '5 Level Leadership', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/5-level-leadership' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '50 Tips Menangkal Penyakit Dengan Olahraga   Prof  Dr  Dr  Anies M Kes Pkk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kesehatan dari perpus.org.', false, 'https://www.perpus.org/kesehatan/50-tips-menangkal-penyakit-dengan-olahraga---prof--dr--dr--anies-m-kes-pkk' 
FROM categories WHERE name = 'Kesehatan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '50 Topik Ngobrol Jet Veetlev', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Sosial & Psikologi dari perpus.org.', false, 'https://www.perpus.org/sosial-dan-psikologi/50-topik-ngobrol-jet-veetlev' 
FROM categories WHERE name = 'Sosial & Psikologi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '99 Cara Berpikir Ala Sherlock Homes', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/99-cara-berpikir-ala-sherlock-homes' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '99 Wisdom', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/99-wisdom' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '99 Wonderful Mind', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/99-wonderful-mind' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A Calendar Of Wisdom', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/a-calendar-of-wisdom' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'A We Some', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/a-we-some' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Aku Bisa Jika Aku Berpikir Bisa', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/aku-bisa-jika-aku-berpikir-bisa' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Amazing Secret Of Super Memory   Dominic O Brien', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pendidikan dari perpus.org.', false, 'https://www.perpus.org/pendidikan/amazing-secret-of-super-memory---dominic-o-brien' 
FROM categories WHERE name = 'Pendidikan' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Ancient Wisdom For Modern Leaders', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/ancient-wisdom-for-modern-leaders' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Anda Ingin Bijak Baca Buku Ini', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/anda-ingin-bijak-baca-buku-ini' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Apa Yang Dilakukan Einstein Saat Galau', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Kisah Inspiratif dari perpus.org.', false, 'https://www.perpus.org/kisah-inspiratif/apa-yang-dilakukan-einstein-saat-galau' 
FROM categories WHERE name = 'Kisah Inspiratif' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Apa Yang Kita Pikirkan Ketika Kita Sendirian   Desi Anwar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Romansa dari perpus.org.', false, 'https://www.perpus.org/romansa/apa-yang-kita-pikirkan-ketika-kita-sendirian---desi-anwar' 
FROM categories WHERE name = 'Romansa' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Authentic', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/authentic' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Awaken The Giant Indonesia', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/awaken-the-giant-indonesia' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bahagia Kenapa Tidak Reza Alexander', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bahagia-kenapa-tidak-reza-alexander-' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Batu Daun Cinta Teman Setia Belajarku', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/batu-daun-cinta-teman-setia-belajarku' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Being A Hyper Independence Person', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/being-a-hyper-independence-person' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Being A Decision Maker', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/being-a-decision-maker' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Belajar Inovasi Untuk Menang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/belajar-inovasi-untuk-menang' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bentangkan Sayap', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bentangkan-sayap' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berani Bahagia   Ichiro Kishimi &amp;amp; Fumitake Koga', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/berani-bahagia---ichiro-kishimi-&amp;amp;-fumitake-koga' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berani Tidak Disukai Ichiro Kishimi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/berani-tidak-disukai-ichiro-kishimi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berbohong Dengan Statistik Darell Huff', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/berbohong-dengan-statistik-darell-huff' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berdamai Dengan Rasa Malas', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/berdamai-dengan-rasa-malas' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berpikir Berjiwa Besar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/berpikir-berjiwa-besar' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Berpikir Dan Berjiwa Besar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/berpikir-dan-berjiwa-besar' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bicara Itu Ada Seninya  Rahasia Komunikasi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bicara-itu-ada-seninya--rahasia-komunikasi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bilang Begini Maksudnya Begitu Sapardi Djoko', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bilang-begini-maksudnya-begitu-sapardi-djoko' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Blue Ocean Shift   W  Chan Kim &amp;amp; Renee Mauborgne', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/blue-ocean-shift---w--chan-kim-&amp;amp;-renee-mauborgne' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Blue Ocean Strategy   W  Chan Kim &amp;amp; Renee Mauborgne', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/blue-ocean-strategy---w--chan-kim-&amp;amp;-renee-mauborgne' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Body Signal Therapy   Bayu Aji Prasetyo', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/body-signal-therapy---bayu-aji-prasetyo' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Boleh Dogn Salah Irfa Amalee', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/boleh-dogn-salah-irfa-amalee' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Breaking Your Mental Block', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/breaking-your-mental-block' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Ajaib The Magic', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/buku-ajaib-the-magic' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Ini Buat Kamu   Mengetahui Impian Dan Tujuan Anda Lalu Mewujudkannya   Crhris Rw', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/buku-ini-buat-kamu---mengetahui-impian-dan-tujuan-anda-lalu-mewujudkannya---crhris-rw' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Sikap', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/buku-sikap' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Bumi Yang Tak Dapat Dihuni', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/bumi-yang-tak-dapat-dihuni' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cakap Berkomunikasi Seni Public Speaking Dan Berbicara Komunikatif   Nur Setiawati', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/cakap-berkomunikasi-seni-public-speaking-dan-berbicara-komunikatif---nur-setiawati' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Cepat Membaca Bahasa Tubuh', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-cepat-membaca-bahasa-tubuh' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Cepat Membaca Wajah National Best Seller   Naomi R  Tickle', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-cepat-membaca-wajah-national-best-seller---naomi-r--tickle' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Cepat Memperbaiki Mood   Dr  Olivia Remes', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-cepat-memperbaiki-mood---dr--olivia-remes' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Praktis Menulis Buku   Panduan Mudah Yang Akan Membantu Dalam Menulis Buku   Budi Utama', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-praktis-menulis-buku---panduan-mudah-yang-akan-membantu-dalam-menulis-buku---budi-utama' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cara Tepat Berdebat Secara Cerdas Meyakinkan Dan Positif   Jonathan Herring', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cara-tepat-berdebat-secara-cerdas-meyakinkan-dan-positif---jonathan-herring' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Catatan Pendek Untuk Hidup Yang Panjang   Harun Tsaqif', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/catatan-pendek-untuk-hidup-yang-panjang---harun-tsaqif' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Challenges', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/challenges' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Champion', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/champion' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Change Your Bad Habit   Badrul Munier Buchori', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/change-your-bad-habit---badrul-munier-buchori' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Change For Success', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/change-for-success' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chicken   Rumahku Istanaku   Seri Chicken Soup Of The Soul   Amy Newmark Dkk', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/chicken---rumahku-istanaku---seri-chicken-soup-of-the-soul---amy-newmark-dkk-' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chicken Soup Doa Yang Terkabul', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/chicken-soup-doa-yang-terkabul' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chicken Soup Keluar Zona', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/chicken-soup-keluar-zona' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chicken Soup For The Soul Memulai Kembali Hidup', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/chicken-soup-for-the-soul-memulai-kembali-hidup' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chicken Soup For The Soul Menemukan Kekuatan Batin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/chicken-soup-for-the-soul-menemukan-kekuatan-batin' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Chicken Soup For The Soul  Kekuatan Bersyukur', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/chicken-soup-for-the-soul--kekuatan-bersyukur' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Cosmic Ordering', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/cosmic-ordering' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dahsyatnya Kekuatan Berpikir Positif', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dahsyatnya-kekuatan-berpikir-positif' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dahsyatnya Spiritual Detok', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dahsyatnya-spiritual-detok' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dari Berpikir Positif Ke Bertindak Positif', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dari-berpikir-positif-ke-bertindak-positif' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Design Your Hope', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/design-your-hope' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dont Follow Your Passion', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/dont-follow-your-passion' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Emotional Intelligence Itu Dipraktekin', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/emotional-intelligence-itu-dipraktekin' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Energi Dahsyat Kekuatan Bawah Sadar', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/energi-dahsyat-kekuatan-bawah-sadar' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Era Baru Wirausaha Sosial   Dr  Gamal Albinsaid M  Biomed', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/era-baru-wirausaha-sosial---dr--gamal-albinsaid-m--biomed' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Female Brain', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/female-brain' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Find Your Why   Panduan Praktis Untuk Menemukan Tujuan Anda &amp;amp; Tim Anda   Simon Sinek', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/find-your-why---panduan-praktis-untuk-menemukan-tujuan-anda-&amp;amp;-tim-anda---simon-sinek' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Focus', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/focus' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Free Cintai Pekerjaan Anda Cintai Hidup', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/free-cintai-pekerjaan-anda-cintai-hidup' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'From Dream To Habits', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/from-dream-to-habits' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gak Capek Dituntut Mulu   Stefani Bella', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/gak-capek-dituntut-mulu---stefani-bella' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gemar Rapi   Khoirun Nikmah', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/gemar-rapi---khoirun-nikmah' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Gendam', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/gendam' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Good Habits Bad Habits   Cara Membentuk Kebiasaan Baik   Wendy Wood', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/good-habits-bad-habits---cara-membentuk-kebiasaan-baik---wendy-wood' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Good Leaders Ask Great Questions', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/good-leaders-ask-great-questions' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Goodbye Things  Hidup Minimalis Ala Orang Jepang', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/goodbye-things--hidup-minimalis-ala-orang-jepang' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Guru Luar Biasa   Ciptono &amp;amp; Ganjar Triadi', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/guru-luar-biasa---ciptono-&amp;amp;-ganjar-triadi' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Happy Breathing To You   Adji Silarus', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/happy-breathing-to-you---adji-silarus' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hati Yang Gembira Adalah Obat   Sophie Navita', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Pengembangan Diri dari perpus.org.', false, 'https://www.perpus.org/pengembangan-diri/hati-yang-gembira-adalah-obat---sophie-navita' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hidup Damai', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/hidup-damai' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hidup Dari Konten   Willy Winarko', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Bisnis dan Ekonomi dari perpus.org.', false, 'https://www.perpus.org/bisnis-dan-ekonomi/hidup-dari-konten---willy-winarko' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hidup Sederhana', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/hidup-sederhana' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Hidup Sukses Cara Sains', 'Penulis Perpus.org', id, 'Koleksi buku digital kategori Gaya Hidup dari perpus.org.', false, 'https://www.perpus.org/gaya-hidup/hidup-sukses-cara-sains' 
FROM categories WHERE name = 'Gaya Hidup' LIMIT 1;

