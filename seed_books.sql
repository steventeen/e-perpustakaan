-- SCRIPT SEEDING DATA BUKU (100 JUDUL)
-- Jalankan ini di SQL Editor Supabase

-- 1. Seed Categories (Pastikan ID berurutan)
TRUNCATE categories RESTART IDENTITY CASCADE;
INSERT INTO categories (name) VALUES 
('IPA'), -- 1
('Matematika'), -- 2
('Bahasa Indonesia'), -- 3
('IPS'), -- 4
('PPKn'), -- 5
('Bahasa Inggris'), -- 6
('Pendidikan Agama'), -- 7
('Seni Budaya'), -- 8
('Penjaskes'), -- 9
('Prakarya'), -- 10
('Informatika'), -- 11
('Materi Khusus MTs'), -- 12
('Panduan & Kurikulum'); -- 13

-- 2. Seed Books
TRUNCATE books RESTART IDENTITY CASCADE;
INSERT INTO books (title, author, isbn, category_id, stock, type, file_url, description) VALUES
('Ilmu Pengetahuan Alam untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-001', 1, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/IPA-Kelas-VII', 'Buku IPA Kurikulum Merdeka untuk siswa SMP Kelas 7'),
('Ilmu Pengetahuan Alam untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-002', 1, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/IPA-Kelas-VIII', 'Buku IPA Kurikulum Merdeka untuk siswa SMP Kelas 8'),
('Ilmu Pengetahuan Alam untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-003', 1, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/IPA-Kelas-IX', 'Buku IPA Kurikulum Merdeka untuk siswa SMP Kelas 9'),
('Matematika untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-004', 2, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Matematika-Kelas-VII', 'Buku Matematika Kurikulum Merdeka SMP Kelas 7'),
('Matematika untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-005', 2, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Matematika-Kelas-VIII', 'Buku Matematika Kurikulum Merdeka SMP Kelas 8'),
('Matematika untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-006', 2, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Matematika-Kelas-IX', 'Buku Matematika Kurikulum Merdeka SMP Kelas 9'),
('Bahasa Indonesia untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-007', 3, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Bahasa-Indonesia-Kelas-VII', 'Buku Bahasa Indonesia Kurikulum Merdeka SMP Kelas 7'),
('Bahasa Indonesia untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-008', 3, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Bahasa-Indonesia-Kelas-VIII', 'Buku Bahasa Indonesia Kurikulum Merdeka SMP Kelas 8'),
('Bahasa Indonesia untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-009', 3, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Bahasa-Indonesia-Kelas-IX', 'Buku Bahasa Indonesia Kurikulum Merdeka SMP Kelas 9'),
('Ilmu Pengetahuan Sosial untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-010', 4, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/IPS-Kelas-VII', 'Buku IPS Kurikulum Merdeka untuk siswa SMP Kelas 7'),
('Ilmu Pengetahuan Sosial untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-011', 4, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/IPS-Kelas-VIII', 'Buku IPS Kurikulum Merdeka untuk siswa SMP Kelas 8'),
('Ilmu Pengetahuan Sosial untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-012', 4, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/IPS-Kelas-IX', 'Buku IPS Kurikulum Merdeka untuk siswa SMP Kelas 9'),
('Pendidikan Pancasila dan Kewarganegaraan untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-013', 5, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PPKn-Kelas-VII', 'Buku PPKn Kurikulum Merdeka SMP Kelas 7'),
('Pendidikan Pancasila dan Kewarganegaraan untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-014', 5, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PPKn-Kelas-VIII', 'Buku PPKn Kurikulum Merdeka SMP Kelas 8'),
('Pendidikan Pancasila dan Kewarganegaraan untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-015', 5, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PPKn-Kelas-IX', 'Buku PPKn Kurikulum Merdeka SMP Kelas 9'),
('Bahasa Inggris untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-016', 6, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Bahasa-Inggris-Kelas-VII', 'Buku Bahasa Inggris Kurikulum Merdeka untuk SMP Kelas 7'),
('Bahasa Inggris untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-017', 6, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Bahasa-Inggris-Kelas-VIII', 'Buku Bahasa Inggris Kurikulum Merdeka untuk SMP Kelas 8'),
('Bahasa Inggris untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-018', 6, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Bahasa-Inggris-Kelas-IX', 'Buku Bahasa Inggris Kurikulum Merdeka untuk SMP Kelas 9'),
('Pendidikan Agama Islam dan Budi Pekerti untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-019', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAI-Kelas-VII', 'Buku PAI Kurikulum Merdeka untuk siswa SMP Kelas 7'),
('Pendidikan Agama Islam dan Budi Pekerti untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-020', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAI-Kelas-VIII', 'Buku PAI Kurikulum Merdeka untuk siswa SMP Kelas 8'),
('Pendidikan Agama Islam dan Budi Pekerti untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-021', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAI-Kelas-IX', 'Buku PAI Kurikulum Merdeka untuk siswa SMP Kelas 9'),
('Pendidikan Agama Kristen dan Budi Pekerti untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-022', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAKristen-Kelas-VII', 'Buku Pendidikan Agama Kristen Kurikulum Merdeka SMP Kelas 7'),
('Pendidikan Agama Kristen dan Budi Pekerti untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-023', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAKristen-Kelas-VIII', 'Buku Pendidikan Agama Kristen Kurikulum Merdeka SMP Kelas 8'),
('Pendidikan Agama Kristen dan Budi Pekerti untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-024', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAKristen-Kelas-IX', 'Buku Pendidikan Agama Kristen Kurikulum Merdeka SMP Kelas 9'),
('Pendidikan Agama Katolik dan Budi Pekerti untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-025', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAKatolik-Kelas-VII', 'Buku Pendidikan Agama Katolik Kurikulum Merdeka SMP Kelas 7'),
('Pendidikan Agama Katolik dan Budi Pekerti untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-026', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAKatolik-Kelas-VIII', 'Buku Pendidikan Agama Katolik Kurikulum Merdeka SMP Kelas 8'),
('Pendidikan Agama Katolik dan Budi Pekerti untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-027', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAKatolik-Kelas-IX', 'Buku Pendidikan Agama Katolik Kurikulum Merdeka SMP Kelas 9'),
('Pendidikan Agama Hindu dan Budi Pekerti untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-028', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAHindu-Kelas-VII', 'Buku Pendidikan Agama Hindu Kurikulum Merdeka SMP Kelas 7'),
('Pendidikan Agama Hindu dan Budi Pekerti untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-029', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAHindu-Kelas-VIII', 'Buku Pendidikan Agama Hindu Kurikulum Merdeka SMP Kelas 8'),
('Pendidikan Agama Hindu dan Budi Pekerti untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-030', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAHindu-Kelas-IX', 'Buku Pendidikan Agama Hindu Kurikulum Merdeka SMP Kelas 9'),
('Pendidikan Agama Buddha dan Budi Pekerti untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-031', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PABuddha-Kelas-VII', 'Buku Pendidikan Agama Buddha Kurikulum Merdeka SMP Kelas 7'),
('Pendidikan Agama Buddha dan Budi Pekerti untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-032', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PABuddha-Kelas-VIII', 'Buku Pendidikan Agama Buddha Kurikulum Merdeka SMP Kelas 8'),
('Pendidikan Agama Buddha dan Budi Pekerti untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-033', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PABuddha-Kelas-IX', 'Buku Pendidikan Agama Buddha Kurikulum Merdeka SMP Kelas 9'),
('Pendidikan Agama Khonghucu dan Budi Pekerti untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-034', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAKhonghucu-Kelas-VII', 'Buku Pendidikan Agama Khonghucu Kurikulum Merdeka SMP Kelas 7'),
('Pendidikan Agama Khonghucu dan Budi Pekerti untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-035', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAKhonghucu-Kelas-VIII', 'Buku Pendidikan Agama Khonghucu Kurikulum Merdeka SMP Kelas 8'),
('Pendidikan Agama Khonghucu dan Budi Pekerti untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-036', 7, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/PAKhonghucu-Kelas-IX', 'Buku Pendidikan Agama Khonghucu Kurikulum Merdeka SMP Kelas 9'),
('Seni Budaya untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-037', 8, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Seni-Budaya-Kelas-VII', 'Buku Seni Budaya Kurikulum Merdeka untuk siswa SMP Kelas 7'),
('Seni Budaya untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-038', 8, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Seni-Budaya-Kelas-VIII', 'Buku Seni Budaya Kurikulum Merdeka untuk siswa SMP Kelas 8'),
('Seni Budaya untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-039', 8, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Seni-Budaya-Kelas-IX', 'Buku Seni Budaya Kurikulum Merdeka untuk siswa SMP Kelas 9'),
('Pendidikan Jasmani, Olahraga, dan Kesehatan untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-040', 9, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Penjaskes-Kelas-VII', 'Buku Penjaskes Kurikulum Merdeka untuk SMP Kelas 7'),
('Pendidikan Jasmani, Olahraga, dan Kesehatan untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-041', 9, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Penjaskes-Kelas-VIII', 'Buku Penjaskes Kurikulum Merdeka untuk SMP Kelas 8'),
('Pendidikan Jasmani, Olahraga, dan Kesehatan untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-042', 9, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Penjaskes-Kelas-IX', 'Buku Penjaskes Kurikulum Merdeka untuk SMP Kelas 9'),
('Prakarya untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-043', 10, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Prakarya-Kelas-VII', 'Buku Prakarya Kurikulum Merdeka untuk siswa SMP Kelas 7'),
('Prakarya untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-044', 10, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Prakarya-Kelas-VIII', 'Buku Prakarya Kurikulum Merdeka untuk siswa SMP Kelas 8'),
('Prakarya untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-045', 10, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Prakarya-Kelas-IX', 'Buku Prakarya Kurikulum Merdeka untuk siswa SMP Kelas 9'),
('Informatika untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-046', 11, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Informatika-Kelas-VII', 'Buku Informatika Kurikulum Merdeka untuk SMP Kelas 7'),
('Informatika untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-047', 11, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Informatika-Kelas-VIII', 'Buku Informatika Kurikulum Merdeka untuk SMP Kelas 8'),
('Informatika untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-048', 11, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Informatika-Kelas-IX', 'Buku Informatika Kurikulum Merdeka untuk SMP Kelas 9'),
('Sejarah Kebudayaan Islam untuk MTs Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-049', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/SKI-MTs-Kelas-VII', 'Buku SKI Kurikulum Merdeka untuk siswa MTs Kelas 7'),
('Sejarah Kebudayaan Islam untuk MTs Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-050', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/SKI-MTs-Kelas-VIII', 'Buku SKI Kurikulum Merdeka untuk siswa MTs Kelas 8'),
('Sejarah Kebudayaan Islam untuk MTs Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-051', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/SKI-MTs-Kelas-IX', 'Buku SKI Kurikulum Merdeka untuk siswa MTs Kelas 9'),
('Fikih untuk MTs Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-052', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Fikih-MTs-Kelas-VII', 'Buku Fikih Kurikulum Merdeka untuk siswa MTs Kelas 7'),
('Fikih untuk MTs Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-053', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Fikih-MTs-Kelas-VIII', 'Buku Fikih Kurikulum Merdeka untuk siswa MTs Kelas 8'),
('Fikih untuk MTs Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-054', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Fikih-MTs-Kelas-IX', 'Buku Fikih Kurikulum Merdeka untuk siswa MTs Kelas 9'),
('Al-Qur\'an Hadis untuk MTs Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-055', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Qurdits-MTs-Kelas-VII', 'Buku Al-Qur\'an Hadis Kurikulum Merdeka untuk MTs Kelas 7'),
('Al-Qur\'an Hadis untuk MTs Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-056', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Qurdits-MTs-Kelas-VIII', 'Buku Al-Qur\'an Hadis Kurikulum Merdeka untuk MTs Kelas 8'),
('Al-Qur\'an Hadis untuk MTs Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-057', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Qurdits-MTs-Kelas-IX', 'Buku Al-Qur\'an Hadis Kurikulum Merdeka untuk MTs Kelas 9'),
('Akidah Akhlak untuk MTs Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-058', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Akidah-Akhlak-MTs-Kelas-VII', 'Buku Akidah Akhlak Kurikulum Merdeka untuk MTs Kelas 7'),
('Akidah Akhlak untuk MTs Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-059', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Akidah-Akhlak-MTs-Kelas-VIII', 'Buku Akidah Akhlak Kurikulum Merdeka untuk MTs Kelas 8'),
('Akidah Akhlak untuk MTs Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-060', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Akidah-Akhlak-MTs-Kelas-IX', 'Buku Akidah Akhlak Kurikulum Merdeka untuk MTs Kelas 9'),
('Bahasa Arab untuk MTs Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-061', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Bahasa-Arab-MTs-Kelas-VII', 'Buku Bahasa Arab Kurikulum Merdeka untuk MTs Kelas 7'),
('Bahasa Arab untuk MTs Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-062', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Bahasa-Arab-MTs-Kelas-VIII', 'Buku Bahasa Arab Kurikulum Merdeka untuk MTs Kelas 8'),
('Bahasa Arab untuk MTs Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-063', 12, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Bahasa-Arab-MTs-Kelas-IX', 'Buku Bahasa Arab Kurikulum Merdeka untuk MTs Kelas 9'),
('Buku Guru - Ilmu Pengetahuan Alam untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-064', 1, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-IPA-Kelas-VII', 'Panduan guru untuk mata pelajaran IPA SMP Kelas 7 Kurikulum Merdeka'),
('Buku Guru - Ilmu Pengetahuan Alam untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-065', 1, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-IPA-Kelas-VIII', 'Panduan guru untuk mata pelajaran IPA SMP Kelas 8 Kurikulum Merdeka'),
('Buku Guru - Ilmu Pengetahuan Alam untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-066', 1, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-IPA-Kelas-IX', 'Panduan guru untuk mata pelajaran IPA SMP Kelas 9 Kurikulum Merdeka'),
('Buku Guru - Matematika untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-067', 2, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Matematika-Kelas-VII', 'Panduan guru untuk mata pelajaran Matematika SMP Kelas 7'),
('Buku Guru - Matematika untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-068', 2, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Matematika-Kelas-VIII', 'Panduan guru untuk mata pelajaran Matematika SMP Kelas 8'),
('Buku Guru - Matematika untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-069', 2, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Matematika-Kelas-IX', 'Panduan guru untuk mata pelajaran Matematika SMP Kelas 9'),
('Buku Guru - Bahasa Indonesia untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-070', 3, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Bahasa-Indonesia-Kelas-VII', 'Panduan guru untuk mata pelajaran Bahasa Indonesia SMP Kelas 7'),
('Buku Guru - Bahasa Indonesia untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-071', 3, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Bahasa-Indonesia-Kelas-VIII', 'Panduan guru untuk mata pelajaran Bahasa Indonesia SMP Kelas 8'),
('Buku Guru - Bahasa Indonesia untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-072', 3, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Bahasa-Indonesia-Kelas-IX', 'Panduan guru untuk mata pelajaran Bahasa Indonesia SMP Kelas 9'),
('Buku Guru - Ilmu Pengetahuan Sosial untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-073', 4, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-IPS-Kelas-VII', 'Panduan guru untuk mata pelajaran IPS SMP Kelas 7 Kurikulum Merdeka'),
('Buku Guru - Ilmu Pengetahuan Sosial untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-074', 4, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-IPS-Kelas-VIII', 'Panduan guru untuk mata pelajaran IPS SMP Kelas 8 Kurikulum Merdeka'),
('Buku Guru - Ilmu Pengetahuan Sosial untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-075', 4, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-IPS-Kelas-IX', 'Panduan guru untuk mata pelajaran IPS SMP Kelas 9 Kurikulum Merdeka'),
('Buku Guru - Pendidikan Pancasila untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-076', 5, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-PPKn-Kelas-VII', 'Panduan guru untuk mata pelajaran PPKn SMP Kelas 7'),
('Buku Guru - Pendidikan Pancasila untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-077', 5, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-PPKn-Kelas-VIII', 'Panduan guru untuk mata pelajaran PPKn SMP Kelas 8'),
('Buku Guru - Pendidikan Pancasila untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-078', 5, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-PPKn-Kelas-IX', 'Panduan guru untuk mata pelajaran PPKn SMP Kelas 9'),
('Buku Guru - Bahasa Inggris untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-079', 6, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Bahasa-Inggris-Kelas-VII', 'Panduan guru untuk mata pelajaran Bahasa Inggris SMP Kelas 7'),
('Buku Guru - Bahasa Inggris untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-080', 6, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Bahasa-Inggris-Kelas-VIII', 'Panduan guru untuk mata pelajaran Bahasa Inggris SMP Kelas 8'),
('Buku Guru - Bahasa Inggris untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-081', 6, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Bahasa-Inggris-Kelas-IX', 'Panduan guru untuk mata pelajaran Bahasa Inggris SMP Kelas 9'),
('Buku Guru - Seni Budaya untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-082', 8, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Seni-Budaya-Kelas-VII', 'Panduan guru untuk mata pelajaran Seni Budaya SMP Kelas 7'),
('Buku Guru - Seni Budaya untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-083', 8, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Seni-Budaya-Kelas-VIII', 'Panduan guru untuk mata pelajaran Seni Budaya SMP Kelas 8'),
('Buku Guru - Seni Budaya untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-084', 8, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Seni-Budaya-Kelas-IX', 'Panduan guru untuk mata pelajaran Seni Budaya SMP Kelas 9'),
('Buku Guru - Pendidikan Jasmani, Olahraga, dan Kesehatan untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-085', 9, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Penjaskes-Kelas-VII', 'Panduan guru untuk mata pelajaran Penjaskes SMP Kelas 7'),
('Buku Guru - Pendidikan Jasmani, Olahraga, dan Kesehatan untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-086', 9, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Penjaskes-Kelas-VIII', 'Panduan guru untuk mata pelajaran Penjaskes SMP Kelas 8'),
('Buku Guru - Pendidikan Jasmani, Olahraga, dan Kesehatan untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-087', 9, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Penjaskes-Kelas-IX', 'Panduan guru untuk mata pelajaran Penjaskes SMP Kelas 9'),
('Buku Guru - Prakarya untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-088', 10, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Prakarya-Kelas-VII', 'Panduan guru untuk mata pelajaran Prakarya SMP Kelas 7'),
('Buku Guru - Prakarya untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-089', 10, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Prakarya-Kelas-VIII', 'Panduan guru untuk mata pelajaran Prakarya SMP Kelas 8'),
('Buku Guru - Prakarya untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-090', 10, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Prakarya-Kelas-IX', 'Panduan guru untuk mata pelajaran Prakarya SMP Kelas 9'),
('Buku Guru - Informatika untuk SMP Kelas 7', 'Kemdikbudristek', 'KEMDIKBUD-091', 11, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Informatika-Kelas-VII', 'Panduan guru untuk mata pelajaran Informatika SMP Kelas 7'),
('Buku Guru - Informatika untuk SMP Kelas 8', 'Kemdikbudristek', 'KEMDIKBUD-092', 11, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Informatika-Kelas-VIII', 'Panduan guru untuk mata pelajaran Informatika SMP Kelas 8'),
('Buku Guru - Informatika untuk SMP Kelas 9', 'Kemdikbudristek', 'KEMDIKBUD-093', 11, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Guru-Informatika-Kelas-IX', 'Panduan guru untuk mata pelajaran Informatika SMP Kelas 9'),
('Kapita Selekta Pembelajaran IPS untuk SMP', 'Kemdikbudristek', 'KEMDIKBUD-094', 4, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Kapita-Selekta-IPS', 'Buku pengayaan materi IPS untuk guru dan siswa SMP'),
('Pengembangan Literasi dan Numerasi di Sekolah', 'Kemdikbudristek', 'KEMDIKBUD-095', 13, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Literasi-Numerasi', 'Panduan pengembangan literasi dan numerasi untuk jenjang SMP'),
('Pembelajaran Berdiferensiasi untuk SMP', 'Kemdikbudristek', 'KEMDIKBUD-096', 13, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Pembelajaran-Berdiferensiasi', 'Panduan penerapan pembelajaran berdiferensiasi di tingkat SMP'),
('Modul Projek Penguatan Profil Pelajar Pancasila untuk Fase D', 'Kemdikbudristek', 'KEMDIKBUD-097', 13, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Modul-P5-Fase-D', 'Modul panduan projek P5 untuk jenjang SMP (Fase D)'),
('Panduan Pengembangan Asesmen untuk SMP', 'Kemdikbudristek', 'KEMDIKBUD-098', 13, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Panduan-Asesmen', 'Panduan pengembangan asesmen pembelajaran untuk jenjang SMP'),
('Implementasi Kurikulum Merdeka di SMP', 'Kemdikbudristek', 'KEMDIKBUD-099', 13, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Implementasi-Kurikulum-Merdeka', 'Buku panduan implementasi Kurikulum Merdeka untuk sekolah menengah pertama'),
('Panduan Pendidikan Inklusif di SMP', 'Kemdikbudristek', 'KEMDIKBUD-100', 13, 999, 'digital', 'https://buku.kemdikbud.go.id/katalog/Pendidikan-Inklusif', 'Panduan penyelenggaraan pendidikan inklusif di tingkat SMP');
