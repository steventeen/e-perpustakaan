-- TABEL UNTUK SISTEM E-PERPUSTAKAAN

-- 1. Tabel Kategori
CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 2. Tabel Buku
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100),
    isbn VARCHAR(20),
    publisher VARCHAR(100),
    year INT,
    description TEXT,
    stock INT DEFAULT 0,
    category_id INT REFERENCES categories(id),
    type VARCHAR(20) DEFAULT 'physical', -- 'physical' atau 'digital'
    file_url TEXT, -- Link ke PDF jika digital
    cover_url TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 3. Tabel Anggota (Siswa/Guru)
-- Catatan: Menggunakan Supabase Auth untuk User, tabel ini untuk profil tambahan
CREATE TABLE profiles (
    id UUID REFERENCES auth.users ON DELETE CASCADE PRIMARY KEY,
    full_name TEXT,
    username TEXT UNIQUE, -- NIS atau NIP
    nip VARCHAR(20), -- NIP Khusus Guru
    grade_level VARCHAR(10), -- Kelas (7, 8, 9)
    role TEXT DEFAULT 'student', -- 'student', 'teacher', 'librarian', 'principal'
    points INT DEFAULT 0,
    avatar_url TEXT,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 4. Tabel Peminjaman (Circulation)
CREATE TABLE borrowings (
    id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES profiles(id),
    book_id INT REFERENCES books(id),
    borrow_date DATE DEFAULT CURRENT_DATE,
    due_date DATE NOT NULL,
    return_date DATE,
    status TEXT DEFAULT 'borrowed', -- 'borrowed', 'returned', 'late'
    extensions_count INT DEFAULT 0,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 5. Tabel Ulasan (Reviews)
CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    user_id UUID REFERENCES profiles(id),
    book_id INT REFERENCES books(id),
    rating INT CHECK (rating >= 1 AND rating <= 5),
    comment TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 6. Tabel Pengaturan (Settings)
CREATE TABLE settings (
    id SERIAL PRIMARY KEY,
    key VARCHAR(50) UNIQUE NOT NULL,
    value TEXT,
    description TEXT,
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Seeding Default Settings
INSERT INTO settings (key, value, description) VALUES
('school_name', 'Nama Sekolah Anda', 'Nama resmi sekolah'),
('school_level', 'SMP', 'Jenjang sekolah (SD/SMP/SMA)'),
('school_logo', 'https://via.placeholder.com/150?text=LOGO', 'URL Logo sekolah'),
('email_host', 'smtp.gmail.com', 'SMTP Host untuk pengiriman email'),
('email_port', '587', 'SMTP Port'),
('email_user', '', 'Username email pengirim'),
('email_password', '', 'Password email pengirim (App Password)'),
('email_from_name', 'Perpustakaan Digital Sekolah', 'Nama pengirim di email');

ALTER TABLE settings ENABLE ROW LEVEL SECURITY;
-- Hanya Admin/Librarian yang bisa mengubah setting
CREATE POLICY "Librarians can manage settings" ON settings FOR ALL USING (true); 
-- (Bisa diperketat nanti dengan filter role)
