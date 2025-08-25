import os
import random
import subprocess
from pathlib import Path

import os
dotfilesDir = os.environ['DOTFILES_DIR']
print(dotfilesDir)

dirName = dotfilesDir + "/Wallpapers/set4/"

listOfFile = os.listdir(dirName)
allFiles = list()
# Iterate over all the entries
for entry in listOfFile:
    # Create full path
    fullPath = os.path.join(dirName, entry)
    # If entry is a directory then get the list of files in this directory 
    if os.path.isdir(fullPath):
        allFiles = allFiles + getListOfFiles(fullPath)
    else:
        allFiles.append(fullPath)
                
# Get random wallpaper
randWallpaper = allFiles[random.randint(0,len(allFiles)-1)]

myCmd = 'wpg -s ' + randWallpaper + ' && wal -i ' + randWallpaper + " && exit"

os.system(myCmd)

# Update Spotify and Dunst
myCmd = 'rm ~/.Xresources && cp $HOME/.cache/wal/.Xresources $HOME && xrdb -merge ~/.Xresources && cp $HOME/.cache/wal/dunstrc $HOME/.config/dunst/ && cp -r $HOME/.cache/wal/KritaPywal.colors $HOME/.local/share/krita/color-schemes/ && exit'

os.system(myCmd)

myCmd = 'killall dunst && dunst'

os.system(myCmd)