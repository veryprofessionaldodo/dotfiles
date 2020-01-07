#!/bin/bash

laptop="laptop"
desktop="desktop"

read -p "On which device are you installing my dude? 'laptop' or 'desktop'?  " device

echo "Got you fam, installing on $device."

echo "Adding this folder to the PATH environment variable... (requires sudo)"

DOTFILES_DIR=${PWD}

sudo touch /etc/profile.d/dotfiles.sh

echo '#!/bin/bash' | sudo tee -a /etc/profile.d/dotfiles.sh   
echo "export DOTFILES_DIR=$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh  
echo "export PATH=$PATH:$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh  


# This is also done right now so that the rest of the script can go along nicely, even without a reboot
export DOTFILES_DIR=$DOTFILES_DIR
export PATH=$PATH:$DOTFILES_DIR

sleep 0.2

read -p "Do you want to install the programs at Scripts/installPrograms.sh? (y/n)  " answer

if [ $answer == "y" ]
then 
	echo "Installing programs..."
	sleep 0.5

	cd Scripts
	./installPrograms.sh $device
fi

if [ $device == $laptop ]
then
	echo "\nSetting up laptop configurations..."
	cd ..
	./update.sh latop
	
	cd Scripts
	./touchInitialFiles.sh

	read -p "Do you want to setup bumblebee? (y/n)  " answer

	if [ $answer == "y" ]
	then 
		sudo gpasswd -a $USER bumblebee
		sudo systemctl enable bumblebeed
	fi 

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

sudo cp $DOTFILES_DIR/Scripts/addCommitPush /bin

# Installing GRUB theme 
echo "Installing GRUB theme..."
sudo Apps/grub/install.sh -v

# First wal run
python $DOTFILES_DIR/Scripts/wallpaperAndColorScheme.py

spicetify backup apply enable-devtool
spicetify update apply

wpg-install.sh -i
wpg-install.sh -g

betterlockscreen -u $DOTFILES_DIR/Wallpapers/wallhaven-83do1o.jpg 

# Fix small spicetify error 
echo "prefs_path       = ${HOME}/.config/spotify/prefs" >> Apps/spicetify/config.ini

echo "And that's it!\n"


