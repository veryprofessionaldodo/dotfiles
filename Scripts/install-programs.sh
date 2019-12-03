#!/bin/bash

laptop="laptop"
desktop="desktop"

echo "Installing Programs..."

#sudo pacman -S yay base-devel

yay -R manjaro-i3-settings

yay -Rs palemoon-bin compton

if [ $1 == $laptop ]
then
    yay -S light ffmpegthumbnailer nautilus feh firefox telegram-desktop code variety sl rescuetime2 krita blender rofi polybar redshift simplenote-electron-bin transmission-qt gsimplecal simplenote-electron-bin betterlockscreen osx-arc-darker gtk-chtheme compton-tryone-git franz-bin authy gnome-system-monitor spotify discord flameshot pavucontrol vlc betterlockscreen xorg-xbacklight
elif [ $device == $desktop ]
then
    yay -S light ffmpegthumbnailer nautilus feh firefox telegram-desktop code variety sl rescuetime2 krita blender rofi polybar redshift simplenote-electron-bin transmission-qt gsimplecal simplenote-electron-bin betterlockscreen osx-arc-darker gtk-chtheme compton-tryone-git franz-bin authy gnome-system-monitor spotify discord flameshot pavucontrol vlc betterlockscreen
fi