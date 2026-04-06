import requests
import json
import time

class GutenbergCrawler:
    """Project Gutenberg mirror API (Gutendex)"""
    def __init__(self):
        self.base_url = "https://gutendex.com/books"

    def search_books(self, query: str, max_results: int = 25):
        params = {'search': query}
        try:
            response = requests.get(self.base_url, params=params)
            data = response.json()
            books = []
            for b in data.get('results', [])[:max_results]:
                books.append({
                    'id': b['id'],
                    'title': b['title'],
                    'author': b['authors'][0]['name'] if b['authors'] else 'Unknown',
                    'url': f"https://www.gutenberg.org/ebooks/{b['id']}"
                })
            return books
        except Exception as e:
            print(f"Error Gutenberg: {e}")
            return []

    def get_book_metadata(self, book_id: int):
        try:
            response = requests.get(f"{self.base_url}/{book_id}")
            data = response.json()
            return {
                'subjects': data.get('subjects', []),
                'languages': data.get('languages', []),
                'formats': data.get('formats', {})
            }
        except:
            return {}

class OpenLibraryCrawler:
    """Open Library Search API"""
    def __init__(self):
        self.base_url = "https://openlibrary.org/search.json"

    def search_books(self, query: str, limit: int = 25):
        params = {'q': query, 'limit': limit}
        try:
            response = requests.get(self.base_url, params=params)
            data = response.json()
            books = []
            for b in data.get('docs', []):
                books.append({
                    'title': b.get('title', 'Unknown'),
                    'author': b.get('author_name', ['Unknown'])[0],
                    'isbn': b.get('isbn', [''])[0],
                    'openlibrary_key': b.get('key', ''),
                    'first_publish_year': b.get('first_publish_year', 'Unknown')
                })
            return books
        except Exception as e:
            print(f"Error OpenLibrary: {e}")
            return []

class SIBICrawler:
    """Mock/Simplified SIBI Kemdikbud Crawler (Usually needs specific endpoints)"""
    def get_books_by_level(self, level: str = "SMP"):
        # This is a mock as real SIBI API is often restricted/dynamic
        # We can simulate results for now or target their known public list
        return [
            {'title': f'IPA Terpadu {level} Kelas 7', 'author': 'Kemdikbud', 'subject': 'Sains', 'grade': '7', 'pdf_url': 'https://buku.kemdikbud.go.id/katalog/IPA-Kelas-7'},
            {'title': f'Matematika {level} Kelas 8', 'author': 'Kemdikbud', 'subject': 'Matematika', 'grade': '8', 'pdf_url': 'https://buku.kemdikbud.go.id/katalog/Matematika-Kelas-8'},
            {'title': f'Bahasa Indonesia {level} Kelas 9', 'author': 'Kemdikbud', 'subject': 'Bahasa', 'grade': '9', 'pdf_url': 'https://buku.kemdikbud.go.id/katalog/Bahasa-Indonesia-9'}
        ]

class FreeKidsBooksCrawler:
    """Mock for FreeKidsBooks (requires BeautifulSoup for real scraping)"""
    def get_category_books(self, category: str, max_pages: int = 1):
        return [
            {'title': 'Alice in Wonderland', 'url': 'https://freekidsbooks.org/alice-in-wonderland/'},
            {'title': 'The Secret Garden', 'url': 'https://freekidsbooks.org/the-secret-garden/'}
        ]

    def get_book_details(self, url: str):
        return {
            'description': 'A classic book for children available for free download.',
            'download_links': ['https://gerhardschimpf.github.io/react-reader/files/alice.epub']
        }
