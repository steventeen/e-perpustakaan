# 🚀 Panduan Deploy e-Perpustakaan ke Vercel (GRATIS)

Ikuti langkah-langkah ini untuk membuat website perpustakaan sekolah Anda online hari ini juga!

## Tahap 1: Setup Supabase (Database)
1.  Buka [Supabase Dashboard](https://app.supabase.com/).
2.  Buat Project Baru (contoh: `e-Perpustakaan-Sekolah`).
3.  Klik Menu **SQL Editor** di sidebar kiri.
4.  Klik **New Query**, copy isi dari file `supabase_schema.sql` dan klik **Run**.
5.  Buka Menu **Project Settings** -> **API**.
6.  Catat `Project URL` dan `anon key`. Anda butuh ini untuk dihubungkan ke Vercel.

## Tahap 2: Push Kode ke GitHub
Vercel paling mudah dideploy jika kode Anda ada di GitHub.
1.  Buat akun di [GitHub](https://github.com/) jika belum punya.
2.  Buka Terminal di folder proyek Anda:
    ```bash
    git init
    git add .
    git commit -m "Initial commit e-perpustakaan"
    # Hubungkan ke repo GitHub baru Anda
    git remote add origin https://github.com/username/nama-repo.git
    git push -u origin main
    ```

## Tahap 3: Hubungkan ke Vercel
1.  Buka [Vercel](https://vercel.com/) dan Login pakai akun GitHub.
2.  Klik **Add New Project**.
3.  Pilih repository GitHub `e-perpustakaan` tadi, klik **Import**.
4.  Di bagian **Environment Variables**, tambahkan:
    *   `VITE_SUPABASE_URL` = (Isi dengan Project URL dari Supabase)
    *   `VITE_SUPABASE_ANON_KEY` = (Isi dengan anon key dari Supabase)
5.  Klik **Deploy**!
6.  Tunggu 1-2 menit, Vercel akan memberikan link website (contoh: `e-perpustakaan.vercel.app`).

## Tahap 4: Update Kode secara Real-time
Setiap kali Anda melakukan perubahan kode dan melakukan `git push`, Vercel akan **otomatis update website** Anda dalam hitungan detik secara otomatis dan GRATIS.

---
💡 **Tips**: Sangat disarankan untuk segera mengganti domain `.vercel.app` dengan domain sekolah (misal: `perpustakaan.sch.id`) jika sudah ada anggarannya. Vercel mendukung domain kustom secara gratis (setelah anda beli domainnya).
