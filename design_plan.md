# Rencana Implementasi Sistem e-Perpustakaan Sekolah

Dokumen ini merinci arsitektur, fitur, dan jadwal implementasi sistem perpustakaan digital yang ramah seluler untuk Siswa, Guru, Pustakawan, dan Kepala Sekolah.

## 1. Tujuan & Sasaran Sistem
- **Aksesibilitas**: Memudahkan akses koleksi perpustakaan kapan saja dan di mana saja melalui HP.
- **Literasi**: Meningkatkan minat baca dan literasi digital di lingkungan sekolah.
- **Efisiensi**: Mengelola sirkulasi buku, peminjaman, dan pengembalian secara otomatis.
- **Transparansi**: Menyediakan laporan real-time untuk pengambilan keputusan sekolah.

## 2. Struktur Pengguna (Actor & Role)
| Actor | Peran Utama | Fitur Utama |
| :--- | :--- | :--- |
| **Siswa** | Peminjam/Pembaca | Pinjam buku, baca e-book, histori, ulasan, poin baca. |
| **Guru** | Peminjam/Pendidik | Akses materi digital, rekomendasi buku ke siswa. |
| **Pustakawan** | Pengelola | Input buku, validasi sirkulasi, manajemen akun, backup. |
| **Kepala Sekolah**| Pengawas | Melihat statistik peminjaman dan laporan aktivitas. |

## 3. Arsitektur Teknis
- **Frontend**: React.js / Vite (Mobile-First PWA).
- **Backend**: Node.js (Express) atau Laravel 11.
- **Database**: MySQL (untuk relasi data) & Redis (untuk caching laporan).
- **Tools**: Barcode Scanner API (untuk pengembalian fisik), PDF.js (untuk viewer digital).

## 4. Skema Basis Data (Expanded)
- **Users**: `id, username (NIS/NIP), name, password, role, points, join_date`.
- **Books**: `id, title, author, ISBN, category_id, stock, type (physical/digital), file_url, description`.
- **Circulation**: `id, user_id, book_id, borrow_date, due_date, return_date, extensions (0-2), status`.
- **Notifications**: `id, user_id, message, type (WA/Email), sent_at`.
- **Reviews & Points**: `id, user_id, book_id, rating, comment, points_earned`.

## 5. Rencana Modul & Fitur Utama

### a. Manajemen Koleksi & DRM
- Input buku fisik & upload e-book (PDF/ePub).
- Implementasi **DRM Ringan**: Batasan cetak dan proteksi link unduhan.

### b. Sirkulasi Otomatis
- Peminjaman online dengan jadwal pengambalian otomatis.
- **Self-Extension**: Guru/Siswa bisa memperpanjang pinjaman maksimal 2 kali via aplikasi.
- **Barcode Scanner**: Integrasi kamera HP untuk scan barcode buku fisik saat pengembalian.

### c. Pembaca Digital (Integrated Viewer)
- Viewer e-book internal dengan fitur **Zoom, Bookmark, dan Highlights**.
- Mode baca offline (download sementara di storage browser/PWA).

### d. Notifikasi & Laporan
- Integrasi Gateway WhatsApp/Email untuk pengingat H-1 jatuh tempo.
- Dashboard visual: Statistik buku terpopuler dan anggota paling aktif (Leaderboard Poin).

---

## 6. Roadmap Implementasi (Implementation Plan)

### Fase 1: Inisialisasi & Database (Minggu 1)
- Setup repository & environment.
- Perancangan final skema database dan migrasi.
- Setup Boilerplate Backend & Frontend.

### Fase 2: Autentikasi & Manajemen Pengguna (Minggu 2)
- Implementasi login NIS/NIP.
- Halaman registrasi & validasi oleh Pustakawan.
- Manajemen Role (RBAC).

### Fase 3: Katalog & Sirkulasi (Minggu 3-4)
- Fitur pencarian buku dengan filter kategori.
- Logika peminjaman, perpanjangan, dan pengembalian.
- Integrasi Barcode Scanner untuk buku fisik.

### Fase 4: Digital Library & Viewer (Minggu 5)
- Upload sistem e-book dan metadata PDF.
- Implementasi viewer e-book terintegrasi.
- Fitur Poin Baca & Ulasan.

### Fase 5: Dashboard, Laporan & Notifikasi (Minggu 6)
- Pembuatan visualisasi data untuk Kepala Sekolah & Pustakawan.
- Integrasi Notifikasi WhatsApp/Email.
- Ekspor laporan ke PDF/Excel.

### Fase 6: Testing & Deployment (Minggu 7-8)
- Beta testing oleh perwakilan siswa & guru.
- Optimasi performa mobile & PWA Manifest.
- Launching & User Training.

