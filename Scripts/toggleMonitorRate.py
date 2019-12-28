import os
import sys
import subprocess
import time

rates = subprocess.run('xrandr', stdout=subprocess.PIPE).stdout.decode().rstrip()

settings = [line for line in rates.split('\n') if "74.97" in line]

toggled = "60.00"
# Was 60, toggle to 75
if "60.00*" in settings[0]:
  toggled = "74.97"

print(settings)

command = "xrandr --output DisplayPort-0 --primary --rate " + toggled + " --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-1 --mode 1920x1080 --pos 1920x630 --rotate normal"

os.system(command)


