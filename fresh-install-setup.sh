#!/bin/bash

laptop="laptop"
desktop="desktop"

read -p "On which device are you installing my dude? 'laptop' or 'desktop'?  " device

echo "Got you fam, installing on $device."

sleep 1

echo "Installing programs..."
sleep 0.5

cd Scripts
./installPrograms.sh $device

sudo cp install* /bin
sudo cp update* /bin

if [ $device == $laptop ]
then
	echo "\nSetting up laptop configurations..."
	cd ..
	./update.sh latop
	
	cd Scripts
	./touchInitialFiles.sh
	sudo gpasswd -a workingdodo bumblebee
	sudo systemctl enable bumblebeed
	./installFonts.sh
	killall i3bar
	polybar main
elif [ $device == $desktop ]
then
	echo "\nSetting up desktop configurations..."
	cd ..
	./update.sh desktop
	cd Scripts
	./touchInitialFiles.sh
	./installFonts.sh
	./tabletConfig.sh
	sudo mkdir /mnt/Windows
	sudo mkdir /mnt/CommonPartition
	killall i3bar
	polybar left && polybar right
fi

# First wal run
python /home/workingdodo/Documents/dotfiles/Scripts/wallpaperAndColorScheme.py

spicetify backup apply enable-devtool
spicetify update apply

wpg-install.sh -i
wpg-install.sh -g

betterlockscreen -u ~/Documents/dotfiles/Wallpapers/wallhaven-83do1o.jpg 

echo "And that's it!\n"


