#!/bin/bash

cd ../Configs

#sudo cp 70-wacom.conf /etc/X11/xorg.conf.d/

sudo cp 10-evdev.conf /etc/X11/xorg.conf.d/

sudo cp 52-tablet.conf  /etc/X11/xorg.conf.d/

echo "Completed Task."

exit 0
