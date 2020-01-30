#!/bin/bash

laptop="laptop"
desktop="desktop"

read -p "On which device are you installing my dude? 'laptop' or 'desktop'?  " device

echo "Got you fam, installing on $device."
./Scripts/addToPath.sh

# This is also done right now so that the rest of the script can go along nicely, even without a reboot
export DOTFILES_DIR=$DOTFILES_DIR
export PATH=$PATH:$DOTFILES_DIR

cd Scripts

./touchInitialFiles.sh

./installPrograms.sh $device

echo "There is a list of programs at Scripts/extraProgramsToInstall.sh . You can modify this file now if you want, to download exactly what you need!"
sleep 2

read -p "Do you want to install the extra programs at Scripts/extraProgramsToInstall.sh? (y/n)  " answer
if [ $answer == "y" ]
then 
	./extraProgramsToInstall.sh $device "arch-based"
fi

./setupLightDM.sh 

./setupSpicetify.sh

# Fix small spicetify error 
echo "prefs_path       = ${HOME}/.config/spotify/prefs" >> Apps/spicetify/config.ini

# Fix small ranger error 
echo "set preview_script $HOME/.config/ranger/scope.sh" >> Apps/ranger/rc.conf

echo "\nSetting up $device configurations..."
sleep 1

./update.sh $device

cd Scripts

./installFonts.sh
killall i3bar
	
if [ $device == $laptop ]
then
	polybar main

	echo "Configuring TLP for better battery management..."
	sleep 1

	./setupTLP.sh

	read -p "Do you want to setup Prime? (y/n)  " answer

	if [ $answer == "y" ]
	then 
		sudo pacman -S nvidia lib32-nvidia-utils xf86-video-intel nvidia-prime
		sudo mv $DOTFILES_DIR/Configs/30-nvidia.conf /etc/X11/xorg.conf.d/
	fi 

elif [ $device == $desktop ]
then
	./tabletConfig.sh
	polybar left && polybar right
fi

# Installing GRUB theme 
echo "Installing GRUB theme..."
sleep 1

sudo $DOTFILES_DIR/Apps/grub/install.sh -v

# First wal run
python $DOTFILES_DIR/Scripts/wallpaperAndColorScheme.py

# Fix small error for VLC downloading
mkdir ~/.cache/vlc

echo "Setting up WPGTK theme... (CHANGE LATER WITH LXAPPEARANCE TO FLATCOLOR THEME AND ICON PACK)"
sleep 3

wpg-install.sh -i
wpg-install.sh -g

echo "Change line 93 of this script if you want another lockscreen wallpaper."
sleep 1 

betterlockscreen -u $DOTFILES_DIR/Wallpapers/wallhaven-83do1o.jpg 

echo "And that's it! Exiting."
sleep 1


