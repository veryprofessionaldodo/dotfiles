#!/usr/bin/env bash

backlight="$(xbacklight)"

if [[ "$@" = "-dec 10" ]] && [ ${backlight%.*} -lt 11 ] && [ ${backlight%.*} -gt 1 ];
then
    xbacklight -set 1
        
else
  xbacklight "$@"
fi

pkill -RTMIN+2 i3blocks