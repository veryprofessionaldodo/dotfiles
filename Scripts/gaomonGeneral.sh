#!/bin/bash

keyboard="Tablet Monitor Pen stylus"
tablet="Tablet Monitor Pad pad"

# xsetwacom set "$keyboard" MapToOutput HDMI-2
1 0 0 0 1 0 0 0 1
# this is my particular setup, check out this in case you want to know more about the coordinate transformation matrix
# https://github.com/linuxwacom/xf86-input-wacom/wiki/Dual-and-Multi-Monitor-Set-Up
xinput set-prop "$keyboard" --type=float "Coordinate Transformation Matrix" 1 0 0 0 1 0 0 0 1
xinput set-prop "$keyboard" --type=int "Wacom Sample and Suppress" 2 1
xinput set-prop "$keyboard" --type=float "VelocityInitialRange" 0
xinput set-prop "$keyboard" --type=float "VelocityTrackerCount" 4
# xsetwacom set-prop "$tablet" Area -31 153 54075 30538

xsetwacom --set "$keyboard" button 2 2

xinput set-prop "$tablet" --type=float "VelocityRelDiff" 0.2
xinput set-prop "$tablet" --type=int "Wacom Sample and Suppress" 4 0
xinput set-prop "$tablet" --type=float "Velocity Scaling" 10
xinput set-prop "$tablet" --type=float "VelocityInitialRange" 0
xinput set-prop "$tablet" --type=float "VelocityTrackerCount" 4

xsetwacom --set "$tablet" button 1 key +"space"
xsetwacom --set "$tablet" button 2 key +"ctrl +space"
xsetwacom --set "$tablet" button 3 key "ctrl"
xsetwacom --set "$tablet" button 8 key "shift"
xsetwacom --set "$tablet" button 9 key "ctrl +z"
xsetwacom --set "$tablet" button 10 key "ctrl +shift +z"
xsetwacom --set "$tablet" button 11 key "b"
xsetwacom --set "$tablet" button 12 key "ctrl +t"
xsetwacom --set "$tablet" button 13 key "ctrl +r"
xsetwacom --set "$tablet" button 14 key "m"

echo "Done ma boi."

exit 0
