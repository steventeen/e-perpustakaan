import json
import csv
import sys
from typing import List, Dict
from crawlers import GutenbergCrawler, FreeKidsBooksCrawler, SIBICrawler, OpenLibraryCrawler

class EPerpustakaanCrawler:
    """
    Crawler terintegrasi untuk semua sumber buku gratis
    """
    
    def __init__(self):
        self.gutenberg = GutenbergCrawler()
        self.freekids = FreeKidsBooksCrawler()
        self.sibi = SIBICrawler()
        self.openlib = OpenLibraryCrawler()
    
    def get_all_books_for_smp(self, limit_per_source: int = 30) -> List[Dict]:
        """
        Mengumpulkan buku dari semua sumber untuk jenjang SMP
        
        Args:
            limit_per_source: Batas buku per sumber
        
        Returns:
            List lengkap buku dari semua sumber
        """
        all_books = []
        
        # 1. Project Gutenberg - buku klasik
        print("📚 Mengambil dari Project Gutenberg...")
        try:
            gutenberg_books = self.gutenberg.search_books("children school", max_results=limit_per_source)
            for book in gutenberg_books:
                metadata = self.gutenberg.get_book_metadata(book['id'])
                all_books.append({
                    'title': book['title'],
                    'author': book['author'],
                    'isbn': metadata.get('isbn', ''),
                    'category': 'Classic Literature',
                    'source_url': book['url'],
                    'source': 'gutenberg',
                    'description': f"Subjects: {', '.join(metadata.get('subjects', [])[:3])}"
                })
        except Exception as e:
            print(f"❌ Gagal Gutenberg: {e}")
        
        # 2. SIBI - Buku pelajaran Indonesia
        print("📚 Mengambil dari SIBI Kemdikbud...")
        try:
            sibi_books = self.sibi.get_books_by_level("SMP")
            for book in sibi_books[:limit_per_source]:
                all_books.append({
                    'title': book['title'],
                    'author': book['author'],
                    'isbn': '',
                    'category': f"Textbook - {book['subject']}",
                    'source_url': book.get('pdf_url', ''),
                    'source': 'sibi',
                    'description': f"Buku {book['subject']} untuk {book['grade']} - Kurikulum Merdeka"
                })
        except Exception as e:
            print(f"❌ Gagal SIBI: {e}")
        
        # 3. Free Kids Books
        print("📚 Mengambil dari Free Kids Books...")
        try:
            kids_books = self.freekids.get_category_books("classic-books", max_pages=2)
            for book in kids_books[:limit_per_source]:
                details = self.freekids.get_book_details(book['url'])
                all_books.append({
                    'title': book['title'],
                    'author': 'Various',
                    'isbn': '',
                    'category': 'Children Classic',
                    'source_url': details.get('download_links', [''])[0] if details.get('download_links') else book['url'],
                    'source': 'freekidsbooks',
                    'description': details.get('description', 'Buku cerita klasik untuk anak')
                })
        except Exception as e:
            print(f"❌ Gagal Free Kids: {e}")
        
        # 4. Open Library - buku referensi
        print("📚 Mengambil dari Open Library...")
        try:
            ol_books = self.openlib.search_books("juvenile fiction school", limit=limit_per_source)
            for book in ol_books:
                all_books.append({
                    'title': book['title'],
                    'author': book['author'],
                    'isbn': book['isbn'],
                    'category': 'Juvenile Fiction',
                    'source_url': f"https://openlibrary.org{book['openlibrary_key']}",
                    'source': 'openlibrary',
                    'description': f"First published: {book['first_publish_year']}"
                })
        except Exception as e:
            print(f"❌ Gagal Open Library: {e}")
        
        return all_books
    
    def export_to_csv(self, books: List[Dict], filename: str = "ebook_collection.csv"):
        """Ekspor koleksi buku ke file CSV"""
        with open(filename, 'w', newline='', encoding='utf-8') as csvfile:
            fieldnames = ['title', 'author', 'isbn', 'category', 'source', 'source_url', 'description']
            writer = csv.DictWriter(csvfile, fieldnames=fieldnames)
            writer.writeheader()
            writer.writerows(books)
        
        print(f"✅ Diekspor ke {filename}")
    
    def export_to_json(self, books: List[Dict], filename: str = "ebook_collection.json"):
        """Ekspor koleksi buku ke file JSON"""
        with open(filename, 'w', encoding='utf-8') as f:
            json.dump(books, f, indent=2, ensure_ascii=False)
        
        print(f"✅ Diekspor ke {filename}")


# Menjalankan crawler terintegrasi
if __name__ == "__main__":
    crawler = EPerpustakaanCrawler()
    
    print("🚀 Memulai crawling buku gratis untuk e-perpustakaan sekolah...")
    books = crawler.get_all_books_for_smp(limit_per_source=25)
    
    print(f"\n✅ Total buku yang dikumpulkan: {len(books)}")
    
    # Ekspor hasil
    crawler.export_to_csv(books)
    crawler.export_to_json(books)
    
    print("\n📋 Contoh data yang dikumpulkan:")
    for book in books[:5]:
        print(f"  - {book['title']} oleh {book['author']} ({book['source']})")
