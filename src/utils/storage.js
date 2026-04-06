/**
 * Utilitas untuk membaca localStorage dengan aman (mencegah crash layar putih)
 */

export const safeParseStorage = (key, defaultValue = null) => {
  try {
    const saved = localStorage.getItem(key);
    if (saved === null || saved === undefined || saved === 'undefined') {
      return defaultValue;
    }
    return JSON.parse(saved);
  } catch (e) {
    console.warn(`[Storage] Gagal memparsing key "${key}":`, e);
    // Jika data korup, sebaiknya dihapus agar tidak terus memicu error
    localStorage.removeItem(key);
    return defaultValue;
  }
};

export const setStorage = (key, value) => {
  try {
    localStorage.setItem(key, JSON.stringify(value));
  } catch (e) {
    console.error(`[Storage] Gagal menyimpan ke key "${key}":`, e);
  }
};

export const removeStorage = (key) => {
  localStorage.removeItem(key);
};
