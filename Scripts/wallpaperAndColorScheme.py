import os
import random

dirName = "/home/workingdodo/Downloads/Importante/dotfiles/Wallpapers"

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

myCmd = 'wal -i' + randWallpaper

os.system(myCmd)

myCmd = 'spicetify update apply'

os.system(myCmd)