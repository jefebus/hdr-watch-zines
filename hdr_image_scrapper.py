import os
import re
import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from datetime import datetime
import urllib3

# Disable SSL warnings (when verify=False is used)
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

# -------- CONFIGURATION --------
BASE_DOMAIN = "https://www.hablemosderelojes.com/"
START_URLS = [
   "https://www.hablemosderelojes.com/t/224985"
]
OUTPUT_DIR = "c:\\tmp"

os.makedirs(OUTPUT_DIR, exist_ok=True)

# Track images downloaded per user per day
image_count = {}

def get_last_download_date():
    """Get the date of the most recent downloaded file."""
    if not os.path.exists(OUTPUT_DIR):
        return None
    
    files = [f for f in os.listdir(OUTPUT_DIR) if os.path.isfile(os.path.join(OUTPUT_DIR, f))]
    if not files:
        return None
    
    # Try to extract dates from filenames (format: YYYYMMDD_author_...)
    dates = []
    for filename in files:
        match = re.match(r'^(\d{8})_', filename)
        if match:
            try:
                date_str = match.group(1)
                date = datetime.strptime(date_str, "%Y%m%d")
                dates.append(date)
            except:
                pass
    
    if dates:
        latest = max(dates)
        print(f"📅 Last download was on: {latest.strftime('%Y-%m-%d')}")
        return latest
    
    # Fallback: use file modification time
    latest_mtime = 0
    for filename in files:
        filepath = os.path.join(OUTPUT_DIR, filename)
        mtime = os.path.getmtime(filepath)
        if mtime > latest_mtime:
            latest_mtime = mtime
    
    if latest_mtime > 0:
        latest = datetime.fromtimestamp(latest_mtime)
        print(f"📅 Last download was on: {latest.strftime('%Y-%m-%d %H:%M:%S')} (from file mtime)")
        return latest
    
    return None

def download_image(img_url, author="unknown", post_date=None):
    """Download image with date prefix in filename."""
    try:
        # Clean author name for filesystem
        author_clean = re.sub(r'[^a-zA-Z0-9_-]', '_', author.lower())
        
        # Extract date prefix (YYYYMMDD format)
        date_prefix = "unknown"
        if post_date:
            date_prefix = post_date.strftime("%Y%m%d")
        
        # Track image count for this user and date
        key = f"{date_prefix}_{author_clean}"
        if key not in image_count:
            image_count[key] = 0
        image_count[key] += 1
        
        # Add suffix if this is not the first image
        suffix = "" if image_count[key] == 1 else f"_{image_count[key]}"
        
        # Extract original filename from URL
        original_filename = img_url.split("/")[-1].split("?")[0]
        if not original_filename or not any(original_filename.endswith(ext) for ext in ['.jpg', '.jpeg', '.png', '.gif', '.webp']):
            original_filename = "image.jpg"
        
        # Create filename with date prefix and suffix
        filename = f"{date_prefix}_{author_clean}{suffix}_{original_filename}"
        filepath = os.path.join(OUTPUT_DIR, filename)
        # Skip if already downloaded
        if os.path.exists(filepath):
            print(f"Already exists: {filename}")
            return filepath
        
        # Add headers to mimic a browser
        headers = {
            'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36'
        }
        # Disable SSL verification due to self-signed certificate
        r = requests.get(img_url, timeout=10, headers=headers, verify=False)
        
        if r.status_code == 200:
            with open(filepath, "wb") as f:
                f.write(r.content)
            print(f"✓ Downloaded: {filename}")
            return filepath
        else:
            print(f"✗ Failed ({r.status_code}): {img_url}")
            return None
    except Exception as e:
        print(f"✗ Error downloading {img_url}: {e}")
        return None

def scrape_thread(url, skip_before_date=None):
    """Scrape thread and download images with date information.
    
    Args:
        url: Thread URL to scrape
        skip_before_date: Only download posts newer than this date (datetime object)
    """
    downloaded_images = []
    processed_posts = set()  # Track processed posts to avoid duplicates
    skipped_count = 0
    new_count = 0
    
    while True:
        print("Scraping:", url)
        try:
            # Disable SSL verification due to self-signed certificate
            r = requests.get(url, timeout=30, verify=False)
            if r.status_code != 200:
                print(f"⚠️ HTTP {r.status_code} - stopping pagination")
                break
        except requests.exceptions.RequestException as e:
            print(f"⚠️ Network error: {e}")
            print("Retrying in 5 seconds...")
            import time
            time.sleep(5)
            try:
                r = requests.get(url, timeout=30, verify=False)
                if r.status_code != 200:
                    break
            except Exception as e2:
                print(f"❌ Failed again: {e2}")
                break

        soup = BeautifulSoup(r.text, "html.parser")
        
        # Find all post divs
        posts = soup.find_all("div", class_=re.compile(r"\bpost\b"))
        print(f"  Found {len(posts)} posts")
        
        for post in posts:
            # Skip if this is a nested post div we've already processed
            post_id = post.get("id") or post.get("data-post-id")
            if post_id and post_id in processed_posts:
                continue
            if post_id:
                processed_posts.add(post_id)
                   
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
            
            # Skip this post if we couldn't determine the author
            if author == "unknown":
                continue
            
            # Extract post date
            post_date = None
            time_elem = post.find("time") or post.find("span", class_=re.compile("post-date|relative-date"))
            if time_elem:
                datetime_str = time_elem.get("datetime") or time_elem.get("data-time")
                if datetime_str:
                    try:
                        post_date = datetime.fromisoformat(datetime_str.replace("Z", "+00:00"))
                    except:
                        pass
            
            # Skip posts older than the cutoff date
            if skip_before_date and post_date:
                if post_date.date() <= skip_before_date.date():
                    skipped_count += 1
                    continue
            
            # Find images in the cooked content
            cooked = post.find("div", class_="cooked") or post
            if not cooked:
                continue
            
            imgs = cooked.find_all("img")
            
            if imgs:
                print(f"  Processing post by '{author}' on {post_date.strftime('%Y-%m-%d') if post_date else 'unknown date'} with {len(imgs)} images")
                new_count += 1
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
                filepath = download_image(full_url, author, post_date)
                if filepath:
                    downloaded_images.append({
                        'path': filepath,
                        'author': author,
                        'date': post_date
                    })
        # Pagination: find "next" link
        next_link = soup.find("a", rel="next")
        if next_link:
            url = urljoin(url, next_link.get("href"))
        else:
            break
    
    # Report statistics
    if skip_before_date:
        print(f"\n📊 Summary:")
        print(f"  • Skipped {skipped_count} old posts (before {skip_before_date.strftime('%Y-%m-%d')})")
        print(f"  • Processed {new_count} new posts")
        print(f"  • Downloaded {len(downloaded_images)} new images")
    
    return downloaded_images

# -------- EXECUTION --------
last_download = get_last_download_date()
if last_download:
    print(f"🔍 Only downloading images from posts after {last_download.strftime('%Y-%m-%d')}")
else:
    print(f"🔍 No previous downloads found. Downloading all images.")

for thread in START_URLS:
    images = scrape_thread(thread, skip_before_date=last_download)

print("\n✅ Scraping complete.")