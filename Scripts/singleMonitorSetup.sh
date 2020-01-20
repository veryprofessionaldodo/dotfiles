#!/bin/bash

killall compton &

xrandr --output HDMI-2 --off
xrandr --output DP-1 --off

xrandr --output DP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal
#xrandr --output DP-1 --auto

killall polybar 
polybar left &
