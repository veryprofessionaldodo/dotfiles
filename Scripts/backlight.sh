#!/usr/bin/env bash

backlight="$(xbacklight)"

if [[ "$@" = "-dec 10" ]] && [ ${backlight%.*} -lt 11 ] && [ ${backlight%.*} -gt 1 ];
then
    xbacklight -set 1
    dunstify -r -5555 -u "Backlight: ${backlight%.*}"    
else
  xbacklight "$@"
  dunstify -r 5555 -u "Backlight: ${backlight%.*}"
fi

pkill -RTMIN+2 i3blocks
