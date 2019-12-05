import os
import sys
import subprocess
import time

myCmd = "echo " + sys.argv[1]

if sys.argv[1] == "toggle":
  action = "playerctl play-pause"
  
  os.system(action)

  time.sleep(0.1)

  result = subprocess.run(['playerctl', 'status'], stdout=subprocess.PIPE)

  notification = "dunstify " + result.stdout.decode() + "."

def getTrackInformation():
  song = subprocess.run(['playerctl', 'metadata', 'title'], stdout=subprocess.PIPE).stdout.decode().rstrip()
  artist = subprocess.run(['playerctl', 'metadata', 'artist'], stdout=subprocess.PIPE).stdout.decode().rstrip()

  return song + ", by " + artist

if sys.argv[1] == "previous":
  action = "playerctl previous"

  os.system(action)

  time.sleep(0.1)

  notification = "dunstify \""+ "It's rewind time:\n" + getTrackInformation() + "\""


if sys.argv[1] == "next":
  action = "playerctl next"

  os.system(action)

  time.sleep(0.1)

  notification = "dunstify \""+ "Thank u next:\n" +  getTrackInformation() + "\""

if sys.argv[1] == "info":
  notification = "dunstify \""+ "Current playing:\n" +  getTrackInformation() + "\""

os.system(notification)