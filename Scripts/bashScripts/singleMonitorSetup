#!/bin/bash

killall compton &

xrandr --output HDMI-A-1 --off
xrandr --output DisplayPort-0 --off

xrandr --output DisplayPort-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal
#xrandr --output DisplayPort-0 --auto

killall polybar 
polybar left &
