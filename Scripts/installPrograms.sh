#!/bin/bash

laptop="laptop"
desktop="desktop"

#sudo pacman -S yay base-devel

yay -R manjaro-i3-settings

yay -Rs picom palemoon-bin

if [ $1 == $laptop ]
then
    yay -S light ffmpegthumbnailer nautilus feh firefox telegram-desktop code sl rescuetime2 rofi polybar redshift simplenote-electron-bin transmission-qt gsimplecal simplenote-electron-bin betterlockscreen osx-arc-darker gtk-chtheme compton-tryone-git franz-bin authy gnome-system-monitor discord flameshot pavucontrol vlc betterlockscreen xorg-xbacklight wpgtk-git neofetch blacklist_pcspkr unzip playerctl spicetify-cli youtube-dl lxappearance steam-manjaro
elif [ $1 == $desktop ]
then
    yay -S ffmpegthumbnailer nautilus feh firefox telegram-desktop code sl rescuetime2 rofi polybar redshift simplenote-electron-bin transmission-qt gsimplecal simplenote-electron-bin betterlockscreen osx-arc-darker gtk-chtheme compton-tryone-git franz-bin authy gnome-system-monitor discord flameshot pavucontrol vlc betterlockscreen wpgtk-git neofetch unzip playerctl spicetify-cli youtube-dl lxappearance pureref steam-manjaro xf86-input-wacom
fi

# For Spicetify
sudo mkdir /opt/spotify
sudo chown $USER -R /opt/spotify

yay -Sc

yay -S spotify

yay
