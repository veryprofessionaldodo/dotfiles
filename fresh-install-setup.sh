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
	./update.sh latop
	sudo gpasswd -a workingdodo bumblebee
	sudo systemctl enable bumblebeed
	./install-fonts.sh
elif [ $device == $desktop ]
then
	echo "\nSetting up desktop configurations..."
	./update.sh desktop
	./install-fonts.sh
fi

./install-programs.sh $device

# For Spicetify
sudo chown $USER -R /opt/spotify

betterlockscreen -u ~/Downloads/Importante/dotfiles/Wallpapers/wallhaven-83do1o.jpg 


echo "And that's it!\n"


