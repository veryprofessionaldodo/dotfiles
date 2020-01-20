#!/bin/bash

xrandr --output HDMI-2 --off
xrandr --output DP-1 --off

xrandr --output DP-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output HDMI-2 --mode 1920x1080 --pos 1920x630 --rotate normal

killall polybar 
polybar right &
polybar left &
compton &