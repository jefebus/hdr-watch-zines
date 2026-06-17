#!/usr/bin/env python3
"""
Watch Deal Finder
Searches multiple platforms for watches and flags listings ≥40% below new price.
Requires: pip install requests beautifulsoup4 selenium
For Selenium: pip install selenium
Then install chromedriver or use webdriver-manager: pip install webdriver-manager
"""

import time
import json
import urllib.parse
import requests
from bs4 import BeautifulSoup
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

# ─── WATCH CATALOG ────────────────────────────────────────────────────────────
WATCHES = [
    {"brand": "Baltany",      "model": "Pie pan S4090",         "new_price_eur": 300},
    {"brand": "Tissot",       "model": "Le Locle",              "new_price_eur": 650},
    {"brand": "Mido",         "model": "Multifort TV Big Date", "new_price_eur": 890},
    {"brand": "Oris",         "model": "Big Crown Pointer Date","new_price_eur": 1700},
    {"brand": "Second Hour",  "model": "Mandala",               "new_price_eur": 600},
    {"brand": "RSWC",         "model": "Verne",                 "new_price_eur": 300},
    {"brand": "Citizen",      "model": "The Citizen AQ4100",    "new_price_eur": 800},
    {"brand": "Octopus Kraken","model": "OCT-005 Big Crown",   "new_price_eur": 300},
    {"brand": "Citizen",      "model": "BL9009",                "new_price_eur": 600},
    {"brand": "IXDAO",        "model": "Warrior",               "new_price_eur": 300},
    {"brand": "San Martin",   "model": "SN0149",                "new_price_eur": 300},
]

DISCOUNT_THRESHOLD = 0.40  # 40% off
HEADERS = {"User-Agent": "Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 Chrome/122 Safari/537.36"}

# ─── HELPERS ──────────────────────────────────────────────────────────────────
def max_price(new_price: float) -> float:
    return round(new_price * (1 - DISCOUNT_THRESHOLD), 2)

def get_selenium_driver():
    """Create a Selenium WebDriver with anti-detection settings"""
    chrome_options = Options()
    chrome_options.add_argument('--headless=new')
    chrome_options.add_argument('--disable-gpu')
    chrome_options.add_argument('--no-sandbox')
    chrome_options.add_argument('--disable-dev-shm-usage')
    chrome_options.add_argument('--disable-blink-features=AutomationControlled')
    chrome_options.add_experimental_option("excludeSwitches", ["enable-automation"])
    chrome_options.add_experimental_option('useAutomationExtension', False)
    chrome_options.add_argument('user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36')
    
    driver = webdriver.Chrome(options=chrome_options)
    driver.execute_cdp_cmd('Page.addScriptToEvaluateOnNewDocument', {
        'source': 'Object.defineProperty(navigator, "webdriver", {get: () => undefined})'
    })
    return driver

def get_soup(url: str) -> BeautifulSoup | None:
    try:
        r = requests.get(url, headers=HEADERS, timeout=15)
        r.raise_for_status()
        return BeautifulSoup(r.text, "html.parser")
    except Exception as e:
        print(f"  [ERROR] {url}: {e}")
        return None

def report(platform, watch, price, url, currency="EUR"):
    threshold = max_price(watch["new_price_eur"])
    # Rough currency normalization (adjust rates as needed)
    rates = {"EUR": 1.0, "USD": 0.92, "GBP": 1.17}
    price_eur = price * rates.get(currency, 1.0)
    discount = (watch["new_price_eur"] - price_eur) / watch["new_price_eur"] * 100
    flag = "🔥 DEAL" if price_eur <= threshold else ""
    print(f"  [{platform}] {price}{currency} ({discount:.0f}% off) {flag} → {url}")
    return {"platform": platform, "brand": watch["brand"], "model": watch["model"],
            "price": price, "currency": currency, "price_eur": round(price_eur,2),
            "discount_pct": round(discount,1), "deal": price_eur <= threshold, "url": url}


# ─── PLATFORM SCRAPERS ────────────────────────────────────────────────────────

def search_wallapop(watch: dict) -> list:
    """Wallapop public API"""
    results = []
    query = f"{watch['brand']} {watch['model']}"
    url = (f"https://api.wallapop.com/api/v3/general/search?"
           f"keywords={urllib.parse.quote(query)}&filters_source=default_filters"
           f"&order_by=price_low_to_high&latitude=43.2&longitude=-2.9&distance=200000")
    try:
        r = requests.get(url, headers=HEADERS, timeout=15)
        data = r.json()
        items = data.get("data", {}).get("section", {}).get("payload", {}).get("items", [])
        for item in items[:10]:
            price = item.get("price", {}).get("amount", 0)
            item_url = f"https://es.wallapop.com/item/{item.get('id','')}"
            results.append(report("Wallapop", watch, price, item_url, "EUR"))
    except Exception as e:
        print(f"  [Wallapop ERROR] {e}")
    return results

def search_vinted(watch: dict) -> list:
    """Vinted search scraping"""
    results = []
    query = urllib.parse.quote(f"{watch['brand']} {watch['model']}")
    url = f"https://www.vinted.es/catalog?search_text={query}&order=price_low_to_high"
    soup = get_soup(url)
    if not soup:
        return results
    for item in soup.select('[data-testid="regular-item-box"]')[:10]:
        try:
            price_text = item.select_one('[data-testid="price-text"]').text.strip()
            price = float(''.join(c for c in price_text if c.isdigit() or c == '.'))
            link = "https://www.vinted.es" + item.select_one("a")["href"]
            results.append(report("Vinted", watch, price, link, "EUR"))
        except Exception:
            pass
    return results

def search_ebay(watch: dict) -> list:
    """eBay completed listings search"""
    results = []
    query = urllib.parse.quote(f"{watch['brand']} {watch['model']}")
    url = f"https://www.ebay.es/sch/i.html?_nkw={query}&_sop=15&LH_BIN=1&_ipg=50"
    soup = get_soup(url)
    if not soup:
        return results
    for item in soup.select('.s-item')[:10]:
        try:
            price_text = item.select_one('.s-item__price').text.strip()
            price_clean = price_text.replace('EUR', '').replace('€', '').replace(',', '.').strip()
            price = float(''.join(c for c in price_clean.split()[0] if c.isdigit() or c == '.'))
            link = item.select_one('.s-item__link')['href']
            results.append(report("eBay", watch, price, link, "EUR"))
        except Exception:
            pass
    return results

def search_chrono24(watch: dict) -> list:
    """Chrono24 search scraping"""
    results = []
    query = urllib.parse.quote(f"{watch['brand']} {watch['model']}")
    url = f"https://www.chrono24.es/search/index.htm?query={query}&sortorder=1"
    soup = get_soup(url)
    if not soup:
        return results
    for item in soup.select('.article-item-container')[:10]:
        try:
            price_text = item.select_one('.price').text.strip()
            price = float(''.join(c for c in price_text if c.isdigit() or c == '.'))
            link = "https://www.chrono24.es" + item.select_one('a')['href']
            results.append(report("Chrono24", watch, price, link, "EUR"))
        except Exception:
            pass
    return results

def search_relojes_especiales(watch: dict) -> list:
    """Relojes-Especiales forum classifieds"""
    results = []
    query = urllib.parse.quote(f"{watch['brand']} {watch['model']}")
    url = f"https://www.relojes-especiales.com/foros/search/?q={query}&t=post&c[node][0]=175"
    soup = get_soup(url)
    if not soup:
        return results
    for item in soup.select('.structItem--thread')[:10]:
        try:
            title = item.select_one('.structItem-title').text.strip()
            link = "https://www.relojes-especiales.com" + item.select_one('a')['href']
            # Price often in title like "[350€]"
            import re
            match = re.search(r'(\d+)[€eur]', title.lower())
            if match:
                price = float(match.group(1))
                results.append(report("Relojes-Especiales", watch, price, link, "EUR"))
        except Exception:
            pass
    return results

def search_hablemosderelojes(watch: dict) -> list:
    """HablemosDerelojes forum classifieds - browses marketplace category directly"""
    results = []
    url = "https://www.hablemosderelojes.com/c/mercado-de-relojes/12"
    print(f"  [DEBUG HdR] URL: {url}")
    print(f"  [DEBUG HdR] Looking for: {watch['brand']} {watch['model']}")
    
    driver = None
    try:
        driver = get_selenium_driver()
        driver.get(url)
        
        # Wait for page to load
        time.sleep(4)
        
        # Scroll down to load more threads
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        time.sleep(2)
        
        # Get page source and parse with BeautifulSoup
        soup = BeautifulSoup(driver.page_source, "html.parser")
        
        # Save HTML for debugging
        with open("debug_hdr.html", "w", encoding="utf-8") as f:
            f.write(driver.page_source)
        print(f"  [DEBUG HdR] Saved HTML to debug_hdr.html")
        
        import re
        # Find all topic links
        topic_links = soup.find_all('a', class_='title', href=True)
        print(f"  [DEBUG HdR] Found {len(topic_links)} topic links")
        
        search_terms = [watch['brand'].lower(), watch['model'].lower()]
        
        for link_elem in topic_links[:50]:  # Check first 50 threads
            try:
                title = link_elem.text.strip()
                link = link_elem.get('href', '')
                
                # Check if any search term is in the title
                title_lower = title.lower()
                if not any(term in title_lower for term in search_terms):
                    continue
                
                if link and not link.startswith('http'):
                    link = "https://www.hablemosderelojes.com" + link
                
                print(f"  [DEBUG HdR] Found match: {title[:60]}...")
                
                # Look for price in title
                match = re.search(r'(\d+)€', title)
                if match:
                    price = float(match.group(1))
                    results.append(report("HablemosDerelojes", watch, price, link, "EUR"))
                else:
                    print(f"  [DEBUG HdR] No price found in title")
                    
            except Exception as e:
                print(f"  [DEBUG HdR] Error parsing item: {e}")
        
    except Exception as e:
        print(f"  [DEBUG HdR] Selenium error: {e}")
    finally:
        if driver:
            driver.quit()
    
    return results

def search_uhrforum(watch: dict) -> list:
    """Uhrforum.de classifieds - browses Angebote section directly"""
    results = []
    url = "https://www.uhrforum.de/forums/angebote.11/"
    print(f"  [DEBUG Uhrforum] URL: {url}")
    print(f"  [DEBUG Uhrforum] Looking for: {watch['brand']} {watch['model']}")
    
    driver = None
    try:
        driver = get_selenium_driver()
        driver.get(url)
        
        # Wait for page to load
        time.sleep(4)
        
        # Scroll down to load more threads
        driver.execute_script("window.scrollTo(0, document.body.scrollHeight);")
        time.sleep(2)
        
        # Get page source and parse
        soup = BeautifulSoup(driver.page_source, "html.parser")
        
        # Save HTML for debugging
        with open("debug_uhrforum.html", "w", encoding="utf-8") as f:
            f.write(driver.page_source)
        print(f"  [DEBUG Uhrforum] Saved HTML to debug_uhrforum.html")
        
        import re
        # Find all thread titles
        thread_titles = soup.find_all('div', class_='structItem-title')
        print(f"  [DEBUG Uhrforum] Found {len(thread_titles)} threads")
        
        search_terms = [watch['brand'].lower(), watch['model'].lower()]
        
        for thread_div in thread_titles[:50]:  # Check first 50 threads
            try:
                link_elem = thread_div.find('a', href=True)
                if not link_elem:
                    continue
                    
                title = link_elem.text.strip()
                link = link_elem.get('href', '')
                
                # Check if any search term is in the title  
                title_lower = title.lower()
                if not any(term in title_lower for term in search_terms):
                    continue
                
                if link and not link.startswith('http'):
                    link = "https://www.uhrforum.de" + link
                
                print(f"  [DEBUG Uhrforum] Found match: {title[:60]}...")
                
                # Look for price in EUR
                match = re.search(r'(\d+)\s*€', title)
                if match:
                    price = float(match.group(1))
                    results.append(report("Uhrforum", watch, price, link, "EUR"))
                else:
                    print(f"  [DEBUG Uhrforum] No price found in title")
                    
            except Exception as e:
                print(f"  [DEBUG Uhrforum] Error parsing item: {e}")
        
    except Exception as e:
        print(f"  [DEBUG Uhrforum] Selenium error: {e}")
    finally:
        if driver:
            driver.quit()
    
    return results


# ─── MAIN ─────────────────────────────────────────────────────────────────────
def main():
    all_deals = []
    searchers = [
        # search_wallapop,
        # search_vinted,
        # search_ebay,
        # search_chrono24,
        # search_relojes_especiales,
        search_hablemosderelojes,
        search_uhrforum,
    ]

    for watch in WATCHES:
        print(f"\n{'='*60}")
        print(f"🔍 {watch['brand']} {watch['model']}  |  New: {watch['new_price_eur']}€  |  Max target: {max_price(watch['new_price_eur'])}€")
        print('='*60)
        for searcher in searchers:
            results = searcher(watch)
            deals = [r for r in results if r.get("deal")]
            all_deals.extend(deals)
            time.sleep(1)  # be polite to servers

    print(f"\n\n{'='*60}")
    print(f"🔥 TOTAL DEALS FOUND (≥40% off): {len(all_deals)}")
    print('='*60)
    for d in all_deals:
        print(f"  {d['brand']} {d['model']} @ {d['price']}{d['currency']} "
              f"({d['discount_pct']}% off) [{d['platform']}]")
        print(f"  → {d['url']}")

    # Save results to JSON
    with open("watch_deals.json", "w", encoding="utf-8") as f:
        json.dump(all_deals, f, indent=2, ensure_ascii=False)
    print(f"\n💾 Results saved to watch_deals.json")


if __name__ == "__main__":
    main()
