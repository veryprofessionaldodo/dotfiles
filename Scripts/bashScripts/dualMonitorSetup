#!/bin/bash

xrandr --output HDMI-A-1 --off
xrandr --output DisplayPort-0 --off

xrandr --output DisplayPort-0 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-A-1 --mode 1920x1080 --pos 1920x630 --rotate normal

killall polybar 
polybar right &
polybar left &
compton &