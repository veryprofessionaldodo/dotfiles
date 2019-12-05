import os
import sys
import subprocess

myCmd = "echo " + sys.argv[1]

if sys.argv[1] == "toggle":
  action = "playerctl play-pause"
  
  os.system(action)

  result = subprocess.run(['playerctl', 'status'], stdout=subprocess.PIPE)

  notification = "dunstify " + result.stdout.decode()

def getTrackInformation(result):
  trackInfo = result.split('\n')

  # Split artist metadata
  artist = ""
  for x in range(2, len(trackInfo[5].split())):
    artist += trackInfo[5].split()[x] + " "

  # Split song metadata
  song = ""
  for x in range(2, len(trackInfo[8].split())):
    song += trackInfo[8].split()[x] + " "

  print("\'" + song + "\', by " + artist)
  return "\'" + song + "\', by " + artist;


if sys.argv[1] == "previous":
  action = "playerctl previous"

  os.system(action)

  result = subprocess.run(['playerctl', 'metadata'], stdout=subprocess.PIPE)

  notification = "dunstify 'AGAIN!'" 


if sys.argv[1] == "next":
  action = "playerctl next"

  os.system(action)

  myCmd += " && dunstify 'Playing Next: '"
  
  result = subprocess.run(['playerctl', 'metadata'], stdout=subprocess.PIPE)

  notification = "dunstify 'Thank u next'"

os.system(notification)