import os
import sys
import subprocess
import time

if sys.argv[1] == "toggle":
  action = "playerctl play-pause"
  
  os.system(action)

  time.sleep(0.1)

  result = subprocess.run(['playerctl', 'status'], stdout=subprocess.PIPE)

  # Notify current state
  notification = "notify-send " + result.stdout.decode() + "."

def getTrackInformation():
  song = subprocess.run(['playerctl', 'metadata', 'title'], stdout=subprocess.PIPE).stdout.decode().rstrip()
  artist = subprocess.run(['playerctl', 'metadata', 'artist'], stdout=subprocess.PIPE).stdout.decode().rstrip()

  return song + ", by " + artist

if sys.argv[1] == "previous":
  action = "playerctl previous"

  os.system(action)

  time.sleep(0.1)

  notification = "notify-send \""+ "It's rewind time:\n" + getTrackInformation() + "\""


if sys.argv[1] == "next":
  action = "playerctl next"

  os.system(action)

  time.sleep(0.1)

  notification = "notify-send \""+ "Thank u next:\n" +  getTrackInformation() + "\""

if sys.argv[1] == "info":
  notification = "notify-send \""+ "Currently playing:\n" +  getTrackInformation() + "\""

os.system(notification)