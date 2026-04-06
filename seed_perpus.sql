-- SQL Seed for Perpus.org collection (RELATIONAL VERSION)
-- Pastikan kategori yang digunakan sudah ada di tabel 'categories'

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Experience Human Development (2021)', 'Diane E. Papalia', id, 'Buku komprehensif mengenai perkembangan manusia.', true 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Buku Rahasia Geez', 'Nadhifa Allya Tsana', id, 'Kisah dibalik karakter Geez yang penuh makna.', true 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Dopamine Detox', 'Pria Seratus Persen', id, 'Panduan melepaskan kecanduan stimulasi instan.', true 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Kisah Tanah Jawa', 'Om Hao', id, 'Penelusuran sejarah dan mitos mistis pulau Jawa.', true 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Naruto Vol. 7', 'Masashi Kishimoto', id, 'Petualangan Naruto dalam ujian Chunin.', true 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Delivering Happiness', 'Tony Hsieh', id, 'Sukses Zappos membangun budaya perusahaan.', true 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT '190 Dark Psychology', 'Unknown', id, 'Mempelajari sisi gelap psikologi manusia.', true 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Buku KIA (Kesehatan Ibu dan Anak)', 'Kemenkes RI', id, 'Panduan wajib kesehatan ibu hamil dan balita.', true 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Pirates and Emperors', 'Noam Chomsky', id, 'Analisis tajam sejarah politik internasional.', true 
FROM categories WHERE name = 'Sains' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Mengapa Kita Harus Shalat', 'Penerbit Anak', id, 'Edukasi agama menyenangkan untuk anak.', true 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT 'Donal AWD 2015', 'Disney', id, 'Petualangan lucu Donal Bebek dan keluarga.', true 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, is_available) 
SELECT '14 Marketing Plan', 'Marketing Expert', id, 'Strategi pemasaran digital bisnis modern.', true 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

