-- ================================================================
-- MIGRATION LENGKAP — e-Perpus Digital
-- COPY-PASTE SELURUH ISI INI ke Supabase > SQL Editor > Run
-- ================================================================

-- 1. Tabel Antrian Persetujuan Buku (Novel / Cerpen)
CREATE TABLE IF NOT EXISTS book_requests (
  id            SERIAL PRIMARY KEY,
  title         TEXT NOT NULL,
  author        TEXT DEFAULT 'Various',
  description   TEXT,
  cover_url     TEXT,
  source_url    TEXT,
  category_name TEXT DEFAULT 'Cerpen & Novel',
  type          TEXT DEFAULT 'cerpen',
  requested_by  TEXT DEFAULT 'crawler',
  status        TEXT DEFAULT 'pending',
  reviewed_by   TEXT,
  review_note   TEXT,
  created_at    TIMESTAMPTZ DEFAULT NOW(),
  reviewed_at   TIMESTAMPTZ
);

-- 2. Tabel Notifikasi
CREATE TABLE IF NOT EXISTS notifications (
  id         SERIAL PRIMARY KEY,
  user_id    UUID,
  username   TEXT,
  title      TEXT NOT NULL,
  message    TEXT,
  type       TEXT DEFAULT 'info',
  is_read    BOOLEAN DEFAULT FALSE,
  link       TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. Tabel Pendaftaran Anggota Baru (Masyarakat)
CREATE TABLE IF NOT EXISTS user_requests (
  id            SERIAL PRIMARY KEY,
  username      TEXT NOT NULL UNIQUE,
  full_name     TEXT,
  email         TEXT,
  phone         TEXT,
  password_hash TEXT,
  role          TEXT DEFAULT 'masyarakat',
  status        TEXT DEFAULT 'pending',
  reviewed_by   TEXT,
  review_note   TEXT,
  created_at    TIMESTAMPTZ DEFAULT NOW(),
  reviewed_at   TIMESTAMPTZ
);

-- 4. Index
CREATE INDEX IF NOT EXISTS idx_book_requests_status  ON book_requests(status);
CREATE INDEX IF NOT EXISTS idx_notifications_user    ON notifications(username, is_read);
CREATE INDEX IF NOT EXISTS idx_notifications_unread  ON notifications(is_read, created_at);
CREATE INDEX IF NOT EXISTS idx_user_requests_status  ON user_requests(status);

-- 5. Row Level Security
ALTER TABLE book_requests  ENABLE ROW LEVEL SECURITY;
ALTER TABLE notifications   ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_requests   ENABLE ROW LEVEL SECURITY;

CREATE POLICY "anon_all_book_requests"  ON book_requests  FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "anon_all_notifications"  ON notifications   FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "anon_all_user_requests"  ON user_requests   FOR ALL USING (true) WITH CHECK (true);
