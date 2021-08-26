# Scrape based on tutorial at https://www.youtube.com/watch?v=XQgXKtPSzUI
# JSBeautifier makes ugly code pretty

import bs4
from bs4 import BeautifulSoup as soup
from urllib.request import urlopen as uReq

# Define scrape
my_url = 'https://massey-peabody.com/nfl-2019-rankings-week/'

# his_url = 'https://www.newegg.com/Video-Cards-Video-Devices/Category/ID-38'
# u2Client = uReq(his_url)
# 2page_html = u2Client.read()
# u2Client.close()
# Fetch raw HTML & close connection
# 2page_soup = soup(2page_html, "html.parser")

uClient = uReq (my_url)
page_html = uClient.read()
uClient.close()

# HTML Parse
page_soup = soup(page_html, "html.parser")

# Fetch a tag to test
page_soup.body.tr 