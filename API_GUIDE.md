# 📚 API Reference - e-Perpus Digital (v2.0)

E-Perpus Digital sekarang menyediakan API berbasis REST yang dapat diakses secara publik. API ini dibangun menggunakan **Cloudflare Pages Functions** dan terintegrasi langsung dengan database **Supabase**.

## 🚀 Endpoint Utama

Seluruh endpoint API dapat diakses dengan menambahkan `/api/` pada domain situs Anda.

### 1. Daftar Buku
Mengambil seluruh koleksi koleksi buku digital yang tersedia.

*   **URL:** `/api/books`
*   **Method:** `GET`
*   **Response:** JSON
*   **Akses:** Publik (CORS Enabled)

---

### 2. Statistik Perpustakaan
Mengambil ringkasan data operasional perpustakaan.

*   **URL:** `/api/stats`
*   **Method:** `GET`
*   **Response:** JSON
*   **Akses:** Publik (CORS Enabled)

---

## 🛠️ Cara Menggunakan (Contoh Kode)

### Menggunakan JavaScript (Fetch API)
```javascript
async function getLibraryStats() {
  try {
    const response = await fetch('https://domain-perpustakaan.com/api/stats');
    const result = await response.json();
    if (result.success) {
      console.log('Total Buku:', result.data.total_books);
    }
  } catch (error) {
    console.error('Gagal mengambil data:', error);
  }
}
```

### Menggunakan cURL (Terminal)
```bash
curl -X GET https://domain-perpustakaan.com/api/books
```

---

## ⚠️ Aktivasi di Cloudflare Dash
Agar API ini berfungsi secara "Live", Anda wajib menambahkan Variabel Lingkungan di dasbor **Cloudflare Pages**:
1. Buka settings proyek **e-perpustakaan** di Cloudflare.
2. Klik **Settings** -> **Environment Variables**.
3. Tambahkan 2 key ini (samakan dengan yang ada di `.env` lokal):
   - `VITE_SUPABASE_URL`
   - `VITE_SUPABASE_ANON_KEY`
4. **Deploy Ulang** situs Anda.

---
*Dibuat otomatis oleh e-Perpus Digital v2.0 - 2026*
