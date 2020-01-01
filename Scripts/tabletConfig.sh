#!/bin/bash

cd ../Configs

sudo cp 70-wacom.conf /usr/share/X11/xorg.conf.d/

sudo cp 10-evdev.conf /usr/share/X11/xorg.conf.d/

echo "Completed Task."

exit 0
