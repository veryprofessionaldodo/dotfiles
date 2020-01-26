#!/bin/bash

laptop="laptop"
desktop="desktop"

#sudo pacman -S yay base-devel

yay -R manjaro-i3-settings

yay -Rs picom palemoon-bin

# Essential software for rice
echo "Installing essential software for rice..."
sleep 0.1

yay -S wmctrl ranger pacmixer lightdm-webkit-theme-litarvan dmenu dunst ffmpegthumbnailer feh rofi polybar gsimplecal compton flameshot betterlockscreen wpgtk-git playerctl spicetify-cli lxappearance


echo "Cleaning cache..."
sleep 0.1
yay -Sc

echo "Updating system..."
sleep 0.1
yay

