#!/bin/bash

laptop="laptop"
desktop="desktop"

#sudo pacman -S yay base-devel

yay -R manjaro-i3-settings

yay -Rs picom

if [ $1 == $laptop ]
then
    yay -S light ffmpegthumbnailer nautilus feh firefox telegram-desktop code sl rescuetime2 krita blender rofi polybar redshift simplenote-electron-bin transmission-qt gsimplecal simplenote-electron-bin betterlockscreen osx-arc-darker gtk-chtheme compton-tryone-git franz-bin authy gnome-system-monitor spotify discord flameshot pavucontrol vlc betterlockscreen xorg-xbacklight wpgtk-git neofetch blacklist_pcspkr unzip playerctl spicetify-cli youtube-dl lxappearance
elif [ $1 == $desktop ]
then
    yay -S ffmpegthumbnailer nautilus feh firefox telegram-desktop code sl rescuetime2 krita blender rofi polybar redshift simplenote-electron-bin transmission-qt gsimplecal simplenote-electron-bin betterlockscreen osx-arc-darker gtk-chtheme compton-tryone-git franz-bin authy gnome-system-monitor spotify discord flameshot pavucontrol vlc betterlockscreen wpgtk-git neofetch unzip playerctl spicetify-cli youtube-dl lxappearance pureref
fi
