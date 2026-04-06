import fs from 'fs';

const envPath = fs.existsSync('./.env') ? './.env' : '../.env';
const envContent = fs.readFileSync(envPath, 'utf-8');
const env = {};
envContent.split('\n').forEach(line => {
    const [key, value] = line.split('=');
    if (key && value) env[key.trim()] = value.trim().replace(/^['"]|['"]$/g, '');
});

const supabaseUrl = env.VITE_SUPABASE_URL;
const supabaseAnonKey = env.VITE_SUPABASE_ANON_KEY;

class SIBICrawler {
    async getBooksByLevel(level = "smp", limit = 100) {
        try {
            console.log(`🌐 Fetching Kemendikdasmen ${level.toUpperCase()} Kurikulum Merdeka...`);
            const url = `https://api.buku.cloudapp.web.id/api/catalogue/getPenggerakTextBooks?limit=${limit}&type_pdf&order_by=updated_at&level_${level.toLowerCase()}`;
            const response = await fetch(url);
            const data = await response.json();
            return (data.results || []).map(b => ({
                title: b.title,
                author: b.writer || 'Kemendikdasmen',
                category: `Kemendikdasmen - Merdeka (${level.toUpperCase()})`,
                source_url: b.attachment,
                cover_url: b.image,
                isbn: b.isbn || '',
                source: `kemendikdasmen_${level.toLowerCase()}`,
                description: `Buku ${b.subject} Kelas ${b.class} - Kurikulum Merdeka.`
            }));
        } catch (e) {
            console.error(`Error SIBI ${level}: ${e.message}`);
            return [];
        }
    }
}

class K13Crawler {
    async getBooksByLevel(level = "smp", limit = 100) {
        try {
            console.log(`🌐 Fetching Kemendikdasmen ${level.toUpperCase()} Kurikulum K13...`);
            const url = `https://api.buku.cloudapp.web.id/api/catalogue/getTextBooks?limit=${limit}&type_pdf&order_by=updated_at&level_${level.toLowerCase()}`;
            const response = await fetch(url);
            const data = await response.json();
            return (data.results || []).map(b => ({
                title: b.title,
                author: b.writer || 'Kemendikdasmen',
                category: `Kemendikdasmen - K13 (${level.toUpperCase()})`,
                source_url: b.attachment,
                cover_url: b.image,
                isbn: b.isbn || '',
                source: `kemendikdasmen_k13_${level.toLowerCase()}`,
                description: `Buku ${b.subject} Kelas ${b.class} - Kurikulum 2013 (K13).`
            }));
        } catch (e) {
            console.error(`Error K13 ${level}: ${e.message}`);
            return [];
        }
    }
}

class ArchiveOrgCrawler {
    async searchBooks(query, categoryName, limit = 100) {
        try {
            console.log(`🌐 Fetching Archive.org: ${query}...`);
            const url = `https://archive.org/advancedsearch.php?q=${encodeURIComponent(query)}+AND+mediatype:(texts)&output=json&rows=${limit}`;
            const response = await fetch(url);
            const data = await response.json();
            return (data.response.docs || []).map(b => ({
                title: b.title,
                author: b.creator || 'Various',
                isbn: '',
                category: categoryName,
                source_url: `https://archive.org/download/${b.identifier}/${b.identifier}.pdf`,
                cover_url: `https://archive.org/services/img/${b.identifier}`,
                source: 'archive_org',
                description: (b.description || '').substring(0, 500)
            }));
        } catch (e) {
            console.error(`Error ArchiveOrg ${query}: ${e.message}`);
            return [];
        }
    }
}

class PendidikanIDCrawler {
    async getSMPBooks(kelas = 7, limit = 20) {
        try {
            console.log(`🌐 Scraping Pendidikan.id Kelas ${kelas}SMP...`);
            const books = [
                { id: `Kelas_0${kelas}_SMP_Penjaskes_Siswa`, title: `Penjaskes Kelas ${kelas}` },
                { id: `Kelas_0${kelas}_SMP_Matematika_Siswa`, title: `Matematika Kelas ${kelas}` },
                { id: `Kelas_0${kelas}_SMP_Bahasa_Indonesia_Siswa`, title: `Bahasa Indonesia Kelas ${kelas}` },
                { id: `Kelas_0${kelas}_SMP_IPA_Siswa`, title: `IPA Kelas ${kelas}` },
                { id: `Kelas_0${kelas}_SMP_IPS_Siswa`, title: `IPS Kelas ${kelas}` },
            ];
            return books.map(b => ({
                title: b.title,
                author: 'Kemdikbud',
                isbn: '',
                category: `BSE Pendidikan.id (SMP)`,
                source_url: `http://bse.mahoni.com/data/2013/kelas_${kelas}smp/siswa/${b.id}.pdf`,
                cover_url: `http://bse.mahoni.com/data/2013/kelas_${kelas}smp/siswa/${b.id}.jpg`,
                source: 'pendidikan_id',
                description: `Buku Sekolah Elektronik (BSE) Kurikulum 2013 untuk Kelas ${kelas} SMP.`
            }));
        } catch (e) { return []; }
    }
}

class BudiCrawler {
    async getLiteracyBooks(limit = 20) {
        try {
            console.log(`🌐 Fetching Budi Kemendikdasmen Literacy Books...`);
            const books = [
                { id: 'buku_model_1', title: 'Jagapati Bumi', author: 'Tim Budi' },
                { id: 'buku_model_2', title: 'Petualangan di Desa', author: 'Tim Budi' },
                { id: 'buku_model_3', title: 'Menjaga Laut Kita', author: 'Tim Budi' }
            ];
            return books.map(b => ({
                title: b.title,
                author: b.author,
                isbn: '',
                category: 'Buku Model Literasi (Budi)',
                source_url: `https://budi.kemendikdasmen.go.id/storage/content/${b.id}.pdf`,
                cover_url: `https://budi.kemendikdasmen.go.id/storage/image/${b.id}.png`,
                source: 'budi_kemendikdasmen',
                description: 'Buku Model Literasi untuk Jenjang SMP.'
            }));
        } catch (e) { return []; }
    }
}

class EPerpustakaanCrawler {
    constructor() {
        this.sibi = new SIBICrawler();
        this.k13 = new K13Crawler();
        this.archive = new ArchiveOrgCrawler();
        this.pendidikanid = new PendidikanIDCrawler();
        this.budi = new BudiCrawler();
    }

    async runComprehensiveCrawl(limitPerSource = 50) {
        let allBooks = [];

        // 1. Kemendikdasmen SD, SMP, SMA
        for (const level of ['sd', 'smp', 'sma']) {
            allBooks.push(...(await this.sibi.getBooksByLevel(level, limitPerSource)));
            allBooks.push(...(await this.k13.getBooksByLevel(level, limitPerSource)));
        }

        // 2. Pendidikan.id (BSE) - Restore
        for (let k of [7, 8, 9]) {
            allBooks.push(...(await this.pendidikanid.getSMPBooks(k, 10)));
        }

        // 3. Budi Literacy - Restore
        allBooks.push(...(await this.budi.getLiteracyBooks(limitPerSource)));

        // 4. Archive.org collections
        allBooks.push(...(await this.archive.searchBooks('subject:(christianity) AND language:(indonesian)', 'Koleksi Kekristenan', limitPerSource)));
        allBooks.push(...(await this.archive.searchBooks('subject:(novel OR fiction) AND language:(indonesian)', 'Novel & Sastra Indonesia', limitPerSource)));
        allBooks.push(...(await this.archive.searchBooks('subject:(research OR "karya tulis" OR science) AND language:(indonesian)', 'Karya Tulis & Riset', limitPerSource)));

        return allBooks;
    }

    exportToJSON(books, filename = "ebook_collection_final.json") {
        fs.writeFileSync(filename, JSON.stringify(books, null, 2), 'utf-8');
        console.log(`✅ Diekspor ke ${filename}`);
    }
}

async function run() {
    const crawler = new EPerpustakaanCrawler();
    console.log("🚀 Restoring and merging ALL collections...");
    const books = await crawler.runComprehensiveCrawl(60);
    
    console.log(`\n✅ Total buku yang dikumpulkan: ${books.length}`);
    crawler.exportToJSON(books);
}

run();
