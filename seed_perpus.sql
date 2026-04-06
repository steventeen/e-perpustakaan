-- SQL Seed for Perpus.org collection (V3 - FINAL SCHEMA)
-- Menyesuaikan dengan kolom: title, author, description, category_id, requires_approval, file_url

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Experience Human Development (2021)', 'Diane E. Papalia', id, 'Buku komprehensif mengenai perkembangan manusia.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku Rahasia Geez', 'Nadhifa Allya Tsana', id, 'Kisah dibalik karakter Geez yang penuh makna.', false, '#' 
FROM categories WHERE name = 'Fiksi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Dopamine Detox', 'Pria Seratus Persen', id, 'Panduan melepaskan kecanduan stimulasi instan.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Kisah Tanah Jawa', 'Om Hao', id, 'Penelusuran sejarah dan mitos mistis pulau Jawa.', false, '#' 
FROM categories WHERE name = 'Misteri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Naruto Vol. 7', 'Masashi Kishimoto', id, 'Petualangan Naruto dalam ujian Chunin.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Delivering Happiness', 'Tony Hsieh', id, 'Sukses Zappos membangun budaya perusahaan.', false, '#' 
FROM categories WHERE name = 'Bisnis dan Ekonomi' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '190 Dark Psychology', 'Unknown', id, 'Mempelajari sisi gelap psikologi manusia.', false, '#' 
FROM categories WHERE name = 'Pengembangan Diri' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Buku KIA (Kesehatan Ibu dan Anak)', 'Kemenkes RI', id, 'Panduan wajib kesehatan ibu hamil dan balita.', false, '#' 
FROM categories WHERE name = 'Parenting' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Pirates and Emperors', 'Noam Chomsky', id, 'Analisis tajam sejarah politik internasional.', false, '#' 
FROM categories WHERE name = 'Sains' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Mengapa Kita Harus Shalat', 'Penerbit Anak', id, 'Edukasi agama menyenangkan untuk anak.', false, '#' 
FROM categories WHERE name = 'Agama' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT 'Donal AWD 2015', 'Disney', id, 'Petualangan lucu Donal Bebek dan keluarga.', false, '#' 
FROM categories WHERE name = 'Komik' LIMIT 1;

INSERT INTO books (title, author, category_id, description, requires_approval, file_url) 
SELECT '14 Marketing Plan', 'Marketing Expert', id, 'Strategi pemasaran digital bisnis modern.', false, '#' 
FROM categories WHERE name = 'Lainnya' LIMIT 1;

