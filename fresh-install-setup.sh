#!/bin/bash

laptop="laptop"
desktop="desktop"

read -p "On which device are you installing my dude? 'laptop' or 'desktop'?  " device

echo "Got you fam, installing on $device."
sleep 0.1

echo "Adding this folder to the PATH environment variable... (requires sudo)"
sleep 0.5

DOTFILES_DIR=${PWD}

sudo touch /etc/profile.d/dotfiles.sh

echo '#!/bin/bash' | sudo tee -a /etc/profile.d/dotfiles.sh   
echo "export DOTFILES_DIR=$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh  
echo "export PATH=$PATH:$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh  

echo "Added!"
sleep 0.1

# This is also done right now so that the rest of the script can go along nicely, even without a reboot
export DOTFILES_DIR=$DOTFILES_DIR
export PATH=$PATH:$DOTFILES_DIR

cd Scripts
./installPrograms.sh $device

if [ $device == $laptop ]
then
	echo "\nSetting up laptop configurations..."
	sleep 0.1

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
	sleep 0.1

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
sleep 0.1

sudo Apps/grub/install.sh -v

# First wal run
python $DOTFILES_DIR/Scripts/wallpaperAndColorScheme.py

# For Spicetify
sudo mkdir /opt/spotify
sudo mkdir /opt/spotify/Apps/zlink
sudo mkdir /opt/spotify/Apps/zlink/css
sudo touch /opt/spotify/Apps/zlink/css/user.cs
sudo mkdir /opt/spotify/Apps/login
sudo mkdir /opt/spotify/Apps/login/css


sudo chown $USER -R /opt/spotify

mkdir ${HOME}/.config/spotify/prefs

spicetify backup apply enable-devtool
spicetify update apply

wpg-install.sh -i
wpg-install.sh -g

betterlockscreen -u $DOTFILES_DIR/Wallpapers/wallhaven-83do1o.jpg 


# Fix small spicetify error 
echo "prefs_path       = ${HOME}/.config/spotify/prefs" >> Apps/spicetify/config.ini

echo "And that's it!\n"
sleep 0.1


