#!/bin/bash

cd Scripts 

sudo cp gaomon_krita.desktop /usr/share/applications/

sudo cp gaomon_blender.desktop /usr/share/applications/

sudo cp 70-wacom.conf /usr/share/X11/xorg.conf.d/

echo "Completed Task."

exit 0
