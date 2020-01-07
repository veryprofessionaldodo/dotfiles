import os
import sys
import subprocess
import time

def sendNotification(message):
  notification = "notify-send \""+ message + ":\n" + getTrackInformation() + "\"" 
  os.system(notification)


def getTrackInformation():
  song = subprocess.run(['playerctl', 'metadata', 'title'], stdout=subprocess.PIPE).stdout.decode().rstrip()
  artist = subprocess.run(['playerctl', 'metadata', 'artist'], stdout=subprocess.PIPE).stdout.decode().rstrip()

  return song + ", by " + artist

if sys.argv[1] == "previous":
  action = "playerctl previous"

  os.system(action)

  time.sleep(0.2)

  sendNotification("It's rewind time");


  
if sys.argv[1] == "next":
  action = "playerctl next"

  os.system(action)

  time.sleep(0.1)

  sendNotification("Thank u next");

if sys.argv[1] == "info":
  sendNotification("Currently Playing:");
  
if sys.argv[1] == "toggle":
  action = "playerctl play-pause"
  
  os.system(action)

  time.sleep(0.2)

  result = subprocess.run(['playerctl', 'status'], stdout=subprocess.PIPE)

  notification = "notify-send \""+ result.stdout.decode() + "\"" 
  os.system(notification)
