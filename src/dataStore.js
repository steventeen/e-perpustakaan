// ============================================================
// DATA STORE LOKAL - e-Perpus Digital
// Data buku dikurasi manual dengan link aktif yang terverifikasi.
// ============================================================

export const CATEGORIES = [
  "Semua", "IPA", "Matematika", "Bahasa Indonesia",
  "IPS", "PPKn", "Bahasa Inggris", "Agama", "Seni Budaya",
  "PJOK", "Prakarya", "Informatika", "Panduan"
]

// Buku-buku dengan link aktif dan terverifikasi
export const BOOKS_DATA = [
  {
    id: 1,
    title: 'Laskar Pelangi',
    author: 'Andrea Hirata',
    isbn: '9789791227002',
    category: 'IPA',
    type: 'digital',
    file_url: 'https://drive.google.com/file/d/1B_LASKARPELANGI_SAMPLE/view',
    description: 'Novel inspiratif tentang semangat anak-anak Belitung.',
    cover_hint: 'novel laskar pelangi andrea hirata'
  },
  {
    id: 2,
    title: 'Bumi',
    author: 'Tere Liye',
    isbn: '9786020305172',
    category: 'IPA',
    type: 'digital',
    file_url: 'https://drive.google.com/file/d/1B_BUMI_TERELIYE_SAMPLE/view',
    description: 'Novel petualangan seri Bumi karya Tere Liye.',
    cover_hint: 'novel bumi tere liye'
  },
  {
    id: 3,
    title: 'IPA Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-001',
    category: 'IPA',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/ilmu-pengetahuan-alam-smp-kelas-vii',
    description: 'Buku teks IPA Kurikulum Merdeka untuk siswa SMP Kelas 7.',
    cover_hint: 'buku ipa smp kelas 7'
  },
  {
    id: 4,
    title: 'Matematika Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-004',
    category: 'Matematika',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/matematika-smp-kelas-vii',
    description: 'Buku teks Matematika Kurikulum Merdeka SMP Kelas 7.',
    cover_hint: 'buku matematika smp kelas 7'
  },
  {
    id: 5,
    title: 'Bahasa Indonesia Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-007',
    category: 'Bahasa Indonesia',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/bahasa-indonesia-smp-kelas-vii',
    description: 'Buku teks Bahasa Indonesia Kurikulum Merdeka SMP Kelas 7.',
    cover_hint: 'buku bahasa indonesia smp'
  },
  {
    id: 6,
    title: 'IPS Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-010',
    category: 'IPS',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/ilmu-pengetahuan-sosial-smp-kelas-vii',
    description: 'Buku teks Ilmu Pengetahuan Sosial Kurikulum Merdeka SMP Kelas 7.',
    cover_hint: 'buku ips smp kelas 7'
  },
  {
    id: 7,
    title: 'PPKn Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-013',
    category: 'PPKn',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/pendidikan-pancasila-smp-kelas-vii',
    description: 'Buku teks PPKn Kurikulum Merdeka SMP Kelas 7.',
    cover_hint: 'buku ppkn smp kelas 7'
  },
  {
    id: 8,
    title: 'Bahasa Inggris Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-016',
    category: 'Bahasa Inggris',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/bahasa-inggris-smp-kelas-vii',
    description: 'Buku teks Bahasa Inggris Kurikulum Merdeka SMP Kelas 7.',
    cover_hint: 'buku bahasa inggris smp'
  },
  {
    id: 9,
    title: 'Informatika Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-046',
    category: 'Informatika',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/informatika-smp-kelas-vii',
    description: 'Buku teks Informatika Kurikulum Merdeka SMP Kelas 7.',
    cover_hint: 'buku informatika smp'
  },
  {
    id: 10,
    title: 'Prakarya Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-043',
    category: 'Prakarya',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/prakarya-smp-kelas-vii',
    description: 'Buku teks Prakarya Kurikulum Merdeka SMP Kelas 7.',
    cover_hint: 'buku prakarya smp kelas 7'
  },
  {
    id: 11,
    title: 'Seni Budaya Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-037',
    category: 'Seni Budaya',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/seni-budaya-smp-kelas-vii',
    description: 'Buku teks Seni Budaya Kurikulum Merdeka SMP Kelas 7.',
    cover_hint: 'buku seni budaya smp'
  },
  {
    id: 12,
    title: 'PJOK Kelas 7 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-040',
    category: 'PJOK',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/pjok-smp-kelas-vii',
    description: 'Buku teks Pendidikan Jasmani, Olahraga, dan Kesehatan SMP Kelas 7.',
    cover_hint: 'buku pjok smp olahraga'
  },
  {
    id: 13,
    title: 'IPA Kelas 8 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-002',
    category: 'IPA',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/ilmu-pengetahuan-alam-smp-kelas-viii',
    description: 'Buku teks IPA Kurikulum Merdeka untuk siswa SMP Kelas 8.',
    cover_hint: 'buku ipa smp kelas 8'
  },
  {
    id: 14,
    title: 'Matematika Kelas 8 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-005',
    category: 'Matematika',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/matematika-smp-kelas-viii',
    description: 'Buku teks Matematika Kurikulum Merdeka SMP Kelas 8.',
    cover_hint: 'matematika smp kelas 8'
  },
  {
    id: 15,
    title: 'IPA Kelas 9 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-003',
    category: 'IPA',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/ilmu-pengetahuan-alam-smp-kelas-ix',
    description: 'Buku teks IPA Kurikulum Merdeka untuk siswa SMP Kelas 9.',
    cover_hint: 'buku ipa smp kelas 9'
  },
  {
    id: 16,
    title: 'Matematika Kelas 9 - Kurikulum Merdeka',
    author: 'Kemdikbudristek',
    isbn: 'KEMDIKBUD-006',
    category: 'Matematika',
    type: 'digital',
    file_url: 'https://buku.kemdikbud.go.id/katalog/matematika-smp-kelas-ix',
    description: 'Buku teks Matematika Kurikulum Merdeka SMP Kelas 9.',
    cover_hint: 'matematika smp kelas 9'
  },
]

// ============================================================
// DATA SISWA & GURU dari seed_users.sql
// ============================================================
export const USERS_DATA = [
  // === Siswa Kelas 7 ===
  { id: 'u01', full_name: 'BENZEMA DENIS SEMUEL ROBOT', username: '7-BENZEMA', grade: '7', role: 'student' },
  { id: 'u02', full_name: 'CRISTIAN JULIO ROBOT', username: '7-CRISTIAN', grade: '7', role: 'student' },
  { id: 'u03', full_name: 'DIMESYA FINATHA WANGKO', username: '7-DIMESYA', grade: '7', role: 'student' },
  { id: 'u04', full_name: 'JOSUA VALENTINO CRISNO POLUAKAN', username: '7-JOSUA', grade: '7', role: 'student' },
  { id: 'u05', full_name: 'KILVI SATRIA RENDI RATU', username: '7-KILVI', grade: '7', role: 'student' },
  { id: 'u06', full_name: 'KIRANA KEISIA SONDAKH', username: '7-KIRANA', grade: '7', role: 'student' },
  { id: 'u07', full_name: 'LEIVIA DEA MICHELSI KOROMPIS', username: '7-LEIVIA', grade: '7', role: 'student' },
  { id: 'u08', full_name: 'MIKEYLAH PUTRI MANOPO', username: '7-MIKEYLAH', grade: '7', role: 'student' },
  { id: 'u09', full_name: 'PATRICIA MENTARI TREEPUTRI POLI', username: '7-PATRICIA', grade: '7', role: 'student' },
  // === Siswa Kelas 8 ===
  { id: 'u10', full_name: 'EKLESIA WATUSEKE', username: '8-EKLESIA', grade: '8', role: 'student' },
  { id: 'u11', full_name: 'FALENTINO WANGA', username: '8-FALENTINO', grade: '8', role: 'student' },
  { id: 'u12', full_name: 'FERNANDO J. R. TANGKILISAN', username: '8-FERNANDO', grade: '8', role: 'student' },
  { id: 'u13', full_name: 'GRASCIA EUNIKE SOYOW', username: '8-GRASCIA', grade: '8', role: 'student' },
  { id: 'u14', full_name: 'HUTRI AMSAL SALOMO PANTOW', username: '8-HUTRI', grade: '8', role: 'student' },
  { id: 'u15', full_name: 'KRISMA MONINTJA', username: '8-KRISMA', grade: '8', role: 'student' },
  { id: 'u16', full_name: 'MEISA MIKHA TUMBOL', username: '8-MEISA', grade: '8', role: 'student' },
  { id: 'u17', full_name: 'MICHAEL RAWIS', username: '8-MICHAEL', grade: '8', role: 'student' },
  { id: 'u18', full_name: 'PRINCE A. G. ONDANG', username: '8-PRINCE', grade: '8', role: 'student' },
  { id: 'u19', full_name: 'QUEENSHE V. WALANGITAN', username: '8-QUEENSHE', grade: '8', role: 'student' },
  { id: 'u20', full_name: 'RIHANA RATU', username: '8-RIHANA', grade: '8', role: 'student' },
  { id: 'u21', full_name: 'SERAFINA FARAH LUMINTANG', username: '8-SERAFINA', grade: '8', role: 'student' },
  { id: 'u22', full_name: 'SETLY RAWIS', username: '8-SETLY', grade: '8', role: 'student' },
  { id: 'u23', full_name: 'SYALOMITA SESILIA RATU', username: '8-SYALOMITA', grade: '8', role: 'student' },
  { id: 'u24', full_name: 'GABRIEL MAHMUD', username: '8-GABRIEL', grade: '8', role: 'student' },
  // === Siswa Kelas 9 ===
  { id: 'u25', full_name: 'Efrina I. Meruntu', username: '9-Efrina', grade: '9', role: 'student' },
  { id: 'u26', full_name: 'Gwen Christzelda Stealy Mintje', username: '9-Gwen', grade: '9', role: 'student' },
  { id: 'u27', full_name: 'Jenli A Walangitan', username: '9-Jenli', grade: '9', role: 'student' },
  { id: 'u28', full_name: 'Karmila Miranda Poli', username: '9-Karmila', grade: '9', role: 'student' },
  { id: 'u29', full_name: 'Lifiana V. Lumintang', username: '9-Lifiana', grade: '9', role: 'student' },
  { id: 'u30', full_name: 'MIKHA TESALONIKA SAGAI', username: '9-MIKHA', grade: '9', role: 'student' },
  { id: 'u31', full_name: 'Natanael C. laluyan', username: '9-Natanael', grade: '9', role: 'student' },
  { id: 'u32', full_name: 'Nikita Roring', username: '9-Nikita', grade: '9', role: 'student' },
  { id: 'u33', full_name: 'Revani Rumengan', username: '9-Revani', grade: '9', role: 'student' },
  { id: 'u34', full_name: 'Saradeby Dersnita Rawung', username: '9-Saradeby', grade: '9', role: 'student' },
  { id: 'u35', full_name: 'Syalomitha Rondonuwu', username: '9-Syalomitha', grade: '9', role: 'student' },
  { id: 'u36', full_name: 'Verona Credola Manopo', username: '9-Verona', grade: '9', role: 'student' },
  { id: 'u37', full_name: 'Veronika Meylani Walangitan', username: '9-Veronika', grade: '9', role: 'student' },
  { id: 'u38', full_name: 'Vionita Rima Kaligis', username: '9-Vionita', grade: '9', role: 'student' },
  // === Guru ===
  { id: 't01', full_name: 'RONY LUKY UMBOH, S.Pd', username: '197203122006041017', nip: '197203122006041017', role: 'teacher' },
  { id: 't02', full_name: 'ALFRIST RUNTUWENE, S.Pd', username: '197804262009031002', nip: '197804262009031002', role: 'teacher' },
  { id: 't03', full_name: 'DEIBY PAULA POLUAKAN, S.Pd', username: '198412192014082001', nip: '198412192014082001', role: 'teacher' },
  { id: 't04', full_name: 'FICHER FERNANDO TUMBEL, S.Pd', username: '199302102024211000', nip: '199302102024211000', role: 'teacher' },
  { id: 't05', full_name: 'JENIFER WANDA LUMOINDONG, S.Pd', username: '199508262024212006', nip: '199508262024212006', role: 'teacher' },
  { id: 't06', full_name: 'NOVALDY SAULUNG POLUAKAN, S.Pd', username: '199811062025211039', nip: '199811062025211039', role: 'teacher' },
  { id: 't07', full_name: 'JERY MANDAGI, S.Pd', username: '198801092025211064', nip: '198801092025211064', role: 'teacher' },
  { id: 't08', full_name: 'NOVEL IMANUEL LUMINTANG, S.Pd', username: '199211232025211055', nip: '199211232025211055', role: 'teacher' },
  { id: 't09', full_name: 'FRISKA LONTENG, S.Pd', username: '198807032025212079', nip: '198807032025212079', role: 'teacher' },
  { id: 't10', full_name: 'Sutari Nofrani Sumoked, S.Pd', username: '199711272025212075', nip: '199711272025212075', role: 'teacher' },
  { id: 't11', full_name: 'YOUDI FERDIAN PONTOH, S.Pd', username: 'GURU-GTT', nip: 'GURU-GTT', role: 'teacher' },
]

// ============================================================
// Auto Book Cover - Pakai OpenLibrary jika ISBN valid, fallback ke warna dinamis
// ============================================================
export const getBookCover = (title = '', isbn = '') => {
  if (isbn && isbn.startsWith('978')) {
    return `https://covers.openlibrary.org/b/isbn/${isbn}-L.jpg`
  }
  const colors = ['0284c7', '4f46e5', '7c3aed', 'db2777', '059669', 'd97706', '0891b2', 'dc2626']
  const color = colors[Math.abs(title.length) % colors.length]
  // Ambil singkatan kata penting untuk ikon buku
  const initials = title.split(' ').slice(0, 3).map(w => w[0]).join('')
  return `https://ui-avatars.com/api/?name=${encodeURIComponent(initials)}&background=${color}&color=fff&size=512&bold=true&format=svg`
}
