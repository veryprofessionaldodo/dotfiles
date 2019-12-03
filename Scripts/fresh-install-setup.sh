#!/bin/bash

laptop="laptop"
desktop="desktop"

read -p "On which device are you installing my dude? 'laptop' or 'desktop'?  " device

echo "Got you fam, installing on $device."

sleep 1

if [ $device == $laptop ]
then
	echo "\nSetting up laptop configurations..."
	./update-laptop.sh
	gpasswd -a workingdodo bumblebee
	sudo systemctl enable bumblebeed
	./Scripts/install-fonts.sh
	sudo rmmod pcspkr
	sudo echo 'blacklist pcspkr' >> /etc/modprobe.d/blacklist
elif [ $device == $desktop ]
then
	echo "\nSetting up desktop configurations..."
	./update-desktop.sh
	./Scripts/install-fonts.sh
fi

sudo echo '\nColor' >> /etc/pacman.conf

echo "Installing Programs"

sudo pacman -S yay base-devel

yay -R manjaro-i3-settings

yay -Rs palemoon-bin compton

if [ $device == $laptop ]
	yay -S xorg-xbacklight
fi

yay -S light ffmpegthumbnailer nautilus feh firefox telegram-desktop code variety sl rescuetime2 krita blender rofi polybar redshift simplenote-electron-bin transmission-qt gsimplecal simplenote-electron-bin betterlockscreen osx-arc-darker gtk-chtheme compton-tryone-git franz-bin authy gnome-system-monitor spotify discord flameshot pavucontrol 

echo "And that's it!\n"


