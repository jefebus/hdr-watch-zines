import os
import re
import json
import requests
from bs4 import BeautifulSoup
from urllib.parse import urljoin
from datetime import datetime
import argparse

# -------- CONFIGURATION --------
BASE_DOMAIN = "https://www.hablemosderelojes.com/"
START_URLS = [
   "https://www.hablemosderelojes.com/t/238801",  
]
OUTPUT_DIR = "hdr_texts"
OUTPUT_FORMAT = "markdown"  # Options: "markdown", "json", "txt"

os.makedirs(OUTPUT_DIR, exist_ok=True)

def extract_text_from_post(post):
    """Extract clean text from a post's content."""
    # Try cooked div first (regular page structure)
    cooked = post.find("div", class_="cooked")
    
    # Try crawler-friendly structure
    if not cooked:
        cooked = post.find("div", class_="post", attrs={"itemprop": "text"})
    
    if not cooked:
        return ""
    
    # Remove quotes (to avoid duplicating content)
    for quote in cooked.find_all("aside", class_="quote"):
        quote.decompose()
    
    # Remove images (we just want text)
    for img in cooked.find_all("img"):
        img.decompose()
    
    # Get text and clean it up
    text = cooked.get_text(separator="\n", strip=True)
    
    # Clean up excessive whitespace
    lines = [line.strip() for line in text.split("\n") if line.strip()]
    text = "\n".join(lines)
    
    return text

def scrape_thread(url, thread_title="", first_page_only=False, author_filter=None, first_post_author=False):
    """Scrape thread and extract text content with metadata."""
    posts_data = []
    processed_posts = set()
    first_post_author_found = False
    
    while True:
        print(f"Scraping: {url}")
        r = requests.get(url)
        if r.status_code != 200:
            print(f"[FAILED] Failed to fetch page: {r.status_code}")
            break

        soup = BeautifulSoup(r.text, "html.parser")
        
        # Extract thread title if not provided
        if not thread_title:
            title_elem = soup.find("h1", class_=re.compile("fancy-title"))
            if title_elem:
                thread_title = title_elem.get_text(strip=True)
        
        # Find all post containers (crawler-friendly structure)
        post_containers = soup.find_all("div", class_="topic-body")
        
        print(f"  Found {len(post_containers)} posts")
        
        for post in post_containers:
            
            # Skip if this is a nested post div we've already processed
            post_id = post.get("id") or post.get("data-post-id") or post.get("data-post-number")
            if post_id and post_id in processed_posts:
                continue
            if post_id:
                processed_posts.add(post_id)
            
            # Extract author from crawler-post-meta or creator span
            author = "unknown"
            
            # Look for creator span with itemprop="author"
            creator = post.find("span", class_="creator")
            if creator:
                author_link = creator.find("a", itemprop="url")
                if author_link:
                    author_span = author_link.find("span", itemprop="name")
                    if author_span:
                        author = author_span.get_text(strip=True)
            
            # Fallback: Look for any link with /u/ in it
            if author == "unknown":
                user_link = post.find("a", href=re.compile(r"/u/"))
                if user_link:
                    author = user_link.get("href").split("/u/")[-1].split("/")[0]
            
            # Skip this post if we couldn't determine the author
            if author == "unknown":
                continue
            
            # If first_post_author is enabled and we haven't found the first post author yet
            if first_post_author and not first_post_author_found and not author_filter:
                author_filter = author
                first_post_author_found = True
                print(f"  [First post author detected: {author}]")
            
            # Filter by author if specified
            if author_filter and author.lower() != author_filter.lower():
                continue
            
            # Extract post date from time element
            post_date = None
            date_str = "unknown"
            time_elem = post.find("time", class_="post-time")
            if time_elem:
                datetime_str = time_elem.get("datetime")
                if datetime_str:
                    try:
                        post_date = datetime.fromisoformat(datetime_str.replace("Z", "+00:00"))
                        date_str = post_date.strftime("%Y-%m-%d %H:%M:%S")
                    except:
                        pass
            
            # Extract post number from position span
            post_number = "?"
            position_span = post.find("span", itemprop="position")
            if position_span:
                post_number = position_span.get_text(strip=True)
            
            # Extract text content
            text_content = extract_text_from_post(post)
            
            if not text_content:
                continue
            
            posts_data.append({
                "post_number": post_number,
                "author": author,
                "date": date_str,
                "datetime": post_date,
                "content": text_content
            })
            
            print(f"  Extracted post #{post_number} by {author} ({date_str})")

        # Stop after first page if flag is set
        if first_page_only:
            print("  [First page only - stopping]")
            break
        
        # Pagination: find "next" link
        next_link = soup.find("a", rel="next")
        if next_link:
            url = urljoin(url, next_link.get("href"))
        else:
            break
    
    return posts_data, thread_title

def save_as_markdown(posts_data, thread_title, filename):
    """Save posts as a markdown file."""
    with open(filename, 'w', encoding='utf-8', errors='replace') as f:
        f.write(f"# {thread_title}\n\n")
        f.write(f"Scraped: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"Total posts: {len(posts_data)}\n\n")
        f.write("---\n\n")
        
        for post in posts_data:
            f.write(f"## Post #{post['post_number']} - {post['author']}\n")
            f.write(f"*{post['date']}*\n\n")
            f.write(f"{post['content']}\n\n")
            f.write("---\n\n")
    
    print(f"[OK] Saved as Markdown: {filename}")

def save_as_json(posts_data, thread_title, filename):
    """Save posts as a JSON file."""
    output = {
        "thread_title": thread_title,
        "scraped_at": datetime.now().isoformat(),
        "total_posts": len(posts_data),
        "posts": []
    }
    
    for post in posts_data:
        output["posts"].append({
            "post_number": post["post_number"],
            "author": post["author"],
            "date": post["date"],
            "content": post["content"]
        })
    
    with open(filename, 'w', encoding='utf-8', errors='replace') as f:
        json.dump(output, f, ensure_ascii=False, indent=2)
    
    print(f"[OK] Saved as JSON: {filename}")

def save_as_txt(posts_data, thread_title, filename):
    """Save posts as a plain text file."""
    with open(filename, 'w', encoding='utf-8', errors='replace') as f:
        f.write(f"{thread_title}\n")
        f.write(f"{'=' * len(thread_title)}\n\n")
        f.write(f"Scraped: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
        f.write(f"Total posts: {len(posts_data)}\n\n")
        
        for post in posts_data:
            f.write(f"Post #{post['post_number']} - {post['author']} - {post['date']}\n")
            f.write(f"{'-' * 60}\n")
            f.write(f"{post['content']}\n\n")
    
    print(f"[OK] Saved as TXT: {filename}")

def get_watch_ids_for_thread(thread_id):
    """Get watch IDs associated with a thread from zines_data.json."""
    try:
        with open('zines_data.json', 'r', encoding='utf-8') as f:
            zines = json.load(f)
        
        watch_ids = []
        for zine in zines:
            link = zine.get('hdr_link', '')
            if thread_id in link:
                watch_ids.append(zine['id'])
        
        return watch_ids
    except:
        return []

# -------- EXECUTION --------
parser = argparse.ArgumentParser(description='HdR Text Scraper')
parser.add_argument('--format', choices=['markdown', 'json', 'txt'], default='txt',
                    help='Output format (default: txt)')
parser.add_argument('--url', type=str, help='Thread URL or thread ID to scrape (overrides config)')
parser.add_argument('--first-page-only', action='store_true',
                    help='Download only the first page of the thread')
parser.add_argument('--author', type=str, help='Filter posts by specific author (case-insensitive)')
parser.add_argument('--first-post-author', action='store_true',
                    help='Automatically filter posts by the author of the first post')
args = parser.parse_args()

# Use command line URL if provided
if args.url:
    # If it's just a thread ID (digits only), construct the full URL
    if args.url.isdigit():
        urls = [f"{BASE_DOMAIN}t/{args.url}"]
    else:
        urls = [args.url]
else:
    urls = START_URLS
output_format = args.format
author_filter = args.author
first_post_author = args.first_post_author

# Validate arguments
if author_filter and first_post_author:
    print("Error: Cannot use both --author and --first-post-author options together.")
    exit(1)

for thread_url in urls:
    filter_msg = f" (filtering by author: {author_filter})" if author_filter else ""
    filter_msg += " (filtering by first post author)" if first_post_author and not author_filter else ""
    print(f"\n=== Scraping thread: {thread_url}{filter_msg} ===\n")
    
    posts_data, thread_title = scrape_thread(thread_url, first_page_only=args.first_page_only, author_filter=author_filter, first_post_author=first_post_author)
    
    if not posts_data:
        print("No posts found or extracted.")
        continue
    
    print(f"\n[OK] Extracted {len(posts_data)} posts from '{thread_title}'")
    
    # Extract thread ID from URL
    thread_id = thread_url.rstrip('/').split('/')[-1].split('?')[0]
    
    # Get watch IDs for this thread
    watch_ids = get_watch_ids_for_thread(thread_id)
    
    # Create filename: threadnum_id1_id2_...idn.ext
    if watch_ids:
        base_filename = f"{thread_id}_{'_'.join(watch_ids)}"
    else:
        base_filename = thread_id
    
    # Save in chosen format
    if output_format == 'markdown':
        filename = os.path.join(OUTPUT_DIR, f"{base_filename}.md")
        save_as_markdown(posts_data, thread_title, filename)
    elif output_format == 'json':
        filename = os.path.join(OUTPUT_DIR, f"{base_filename}.json")
        save_as_json(posts_data, thread_title, filename)
    elif output_format == 'txt':
        filename = os.path.join(OUTPUT_DIR, f"{base_filename}.txt")
        save_as_txt(posts_data, thread_title, filename)

print("\nAll done!")
