import os
import re
import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin

# -------- CONFIGURATION --------
BASE_DOMAIN = "https://www.hablemosderelojes.com/"
START_URLS = [
    "https://www.hablemosderelojes.com/t/236535", # deco-timer
    "https://www.hablemosderelojes.com/t/224985" #RSWC Only
]
OUTPUT_DIR = "hdr_images"

os.makedirs(OUTPUT_DIR, exist_ok=True)

def download_image(img_url, author="unknown"):
    try:
        # Clean author name for filesystem
        author_clean = re.sub(r'[^a-zA-Z0-9_-]', '_', author.lower())
        
        # Create author subfolder
        author_dir = os.path.join(OUTPUT_DIR, author_clean)
        os.makedirs(author_dir, exist_ok=True)
        
        # Extract filename from URL, handle query parameters
        filename = img_url.split("/")[-1].split("?")[0]
        if not filename:
            filename = "image_" + str(hash(img_url))[-8:] + ".jpg"
        
        filepath = os.path.join(author_dir, filename)
        
        # Skip if already downloaded
        if os.path.exists(filepath):
            print(f"Already exists: {filename}")
            return
        
        # Add headers to mimic a browser
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
        r = requests.get(img_url, timeout=10, headers=headers)
        
        if r.status_code == 200:
            with open(filepath, "wb") as f:
                f.write(r.content)
            print(f"✓ Downloaded: {filename}")
        else:
            print(f"✗ Failed ({r.status_code}): {img_url}")
    except Exception as e:
        print(f"✗ Error downloading {img_url}: {e}")

def scrape_thread(url):
    while True:
        print("Scraping:", url)
        r = requests.get(url)
        if r.status_code != 200:
            break

        soup = BeautifulSoup(r.text, "html.parser")
        
        # Find all post divs
        posts = soup.find_all("div", class_=re.compile(r"\bpost\b"))
        print(f"  Found {len(posts)} posts")
        
        for post in posts:
            # Extract author - try multiple methods
            author = "unknown"
            
            # Method 1: Look for username in data attributes
            if post.get("data-user-id"):
                # Find username link or span near this post
                username_elem = post.find("a", class_=re.compile("username")) or post.find("span", class_=re.compile("username"))
                if username_elem:
                    author = username_elem.get_text(strip=True)
            
            # Method 2: Look in parent/sibling structure for author info
            if author == "unknown":
                # Look for username in parent or previous siblings
                parent = post.find_parent("article") or post.find_parent("div", class_=re.compile("topic-post"))
                if parent:
                    username_elem = parent.find("a", class_=re.compile("username"))
                    if username_elem:
                        author = username_elem.get_text(strip=True)
            
            # Method 3: Look for any link with /u/ in it (user profile link)
            if author == "unknown":
                user_link = post.find("a", href=re.compile(r"/u/"))
                if user_link:
                    author = user_link.get("href").split("/u/")[-1].split("/")[0]
            
            # Find images in the cooked content
            cooked = post.find("div", class_="cooked") or post
            if not cooked:
                continue
            
            imgs = cooked.find_all("img")
            
            if imgs:
                print(f"  Processing post by '{author}' with {len(imgs)} images")
            for img in imgs:
                # Try different attributes in priority order
                src = img.get("src") or img.get("data-original-src") or img.get("data-src")
                if not src:
                    continue
                
                # Make URL absolute if it's relative
                if not src.startswith("http"):
                    full_url = urljoin(BASE_DOMAIN, src)
                else:
                    full_url = src
                
                # Skip emoji/icon images and thumbnails
                if any(skip in full_url.lower() for skip in ["emoji", "avatar", "_avatar"]):
                    continue
                if full_url.endswith(".svg"):
                    continue
                
                # Prefer original size over thumbnails
                if "/optimized/" in full_url:
                    full_url = full_url.replace("/optimized/", "/original/")
                
                # Remove size suffixes like _2_690x460.jpeg to get original
                full_url = re.sub(r'_\d+_\d+x\d+(\.\w+)$', r'\1', full_url)
                    
                print(f"Found image by {author}: {full_url}")
                download_image(full_url, author)

        # Pagination: find "next" link
        next_link = soup.find("a", rel="next")
        if next_link:
            url = urljoin(url, next_link.get("href"))
        else:
            break

# -------- EXECUTION --------
for thread in START_URLS:
    scrape_thread(thread)

print("Scraping complete.")