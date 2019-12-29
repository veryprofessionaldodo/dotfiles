import os
import sys
import subprocess
import time

rates = subprocess.run('xrandr', stdout=subprocess.PIPE).stdout.decode().rstrip()

# Number of settings equates to number of active displays
settings = [line for line in rates.split('\n') if "*" in line]

toggled = "60.00"
# Was 60, toggle to 75
if "60.00*" in settings[0]:
  toggled = "74.97"

print(settings)

# Two monitors active
if len(settings) == 2:
  command = "xrandr --output DisplayPort-0 --primary --rate " + toggled + " --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-1 --mode 1920x1080 --pos 1920x630 --rotate normal"
else:
  command = "xrandr --output DisplayPort-0 --primary --rate " + toggled + " --mode 1920x1080 --pos 0x0 --rotate normal"

os.system(command)

notification = "notify-send \"Toggled to: "+ toggled + "\"" 
os.system(notification)


