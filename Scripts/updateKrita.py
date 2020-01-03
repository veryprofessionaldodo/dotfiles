# imported the requests library 
import requests 
from bs4 import BeautifulSoup as bs
from pathlib import Path

print("Fetching page...")
home = str(Path.home())

base_url = "https://binary-factory.kde.org/job/Krita_Nightly_Appimage_Build/lastSuccessfulBuild/"

r = requests.get(base_url)
soup = bs(r.text, features="html5lib")
urls = []

print("Parsing page...")

for i, link in enumerate(soup.findAll('a')):
    _FULLURL = base_url + str(link.get('href'))
    if _FULLURL.endswith('.appimage'):
        urls.append(_FULLURL)

print("Fetching from the Interwebs...")

file = requests.get(base_url + urls[1])

print("Writing file...")

with open(home + "/krita-git/krita.appimage",'wb') as f: 
      f.write(file.content) 

print("Done!")


