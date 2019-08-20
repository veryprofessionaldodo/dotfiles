#!/usr/bin/env bash

backlight="$(light)"

if [[ "$@" = "-U 5" ]] && [ ${backlight%.*} -lt 6 ] && [ ${backlight%.*} -gt 1 ];
then
  light -S 1
  dunstify -r -5555 -u "Backlight: ${backlight%.*}"    
else
  light "$@"
  dunstify -r 5555 -u "Backlight: ${backlight%.*}"
fi

pkill -RTMIN+2 i3blocks
