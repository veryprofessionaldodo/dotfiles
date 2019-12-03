#!/bin/bash

laptop="laptop"
desktop="desktop"

read -p "On which device are you installing my dude? 'laptop' or 'desktop'?  " device

echo "Got you fam, installing on $device."

sleep 1

cd Scripts

if [ $device == $laptop ]
then
	echo "\nSetting up laptop configurations..."
	./update-laptop.sh
	sudo gpasswd -a workingdodo bumblebee
	sudo systemctl enable bumblebeed
	./install-fonts.sh

	#sudo rmmod pcspkr
	#sudo echo 'blacklist pcspkr' >> /etc/modprobe.d/blacklist

	#sudo echo '\nColor' >> /etc/pacman.conf
elif [ $device == $desktop ]
then
	echo "\nSetting up desktop configurations..."
	./update-desktop.sh
	./install-fonts.sh
fi

./install-programs.sh $device

betterlockscreen -u ~/Downloads/Importante/dotfiles/Wallpapers/wallhaven-83do1o.jpg 


echo "And that's it!\n"


