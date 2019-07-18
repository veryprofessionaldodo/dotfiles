#!/bin/bash

cd Scripts 

mkdir $HOME/scripts

sudo cp *.sh $HOME/scripts/

sudo cp *.py $HOME/scripts/

sudo cp org.kde.krita.desktop /usr/share/applications/

sudo cp soundcloud.desktop /usr/share/applications/

sudo cp 70-wacom.conf /usr/share/X11/xorg.conf.d/

sudo cp 10-evdev.conf /usr/share/X11/xorg.conf.d/

cp redshift.conf /home/workingdodo/.config/

echo "Completed Task."

exit 0
