#!/usr/bin/env python3
"""Extract YouTube links from buttons where span contains only 'YouTube' (no SVG)."""
import re
import sys

def main():
    html = sys.stdin.read()
    # Match <a href="youtube URL"> followed by <span>...</span> that contains ONLY "YouTube" (no <svg>)
    # So we want: <a ... href="URL"> \s* <span ...> \s* YouTube \s* </span>
    pattern = re.compile(
        r'<a[^>]+href="(https://(?:www\.youtube\.com/watch\?v=|youtu\.be/)[^"]+)"[^>]*>\s*'
        r'<span[^>]*>\s*YouTube\s*</span>',
        re.IGNORECASE | re.DOTALL
    )
    urls = pattern.findall(html)
    for u in urls:
        print(u)

if __name__ == "__main__":
    main()
