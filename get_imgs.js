async function getImgs() {
  try {
    const r = await fetch('https://www.perpus.org/komik/doraemon-01');
    const t = await r.text();
    const imgs = t.match(/<img[^>]+src=['"]([^'"]+)['"]/g) || [];
    console.log("Daftar Gambar Ditemukan:");
    imgs.forEach(img => console.log(img));
  } catch (e) {
    console.error(e);
  }
}
getImgs();
