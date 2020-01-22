#!/bin/bash

laptop="laptop"
desktop="desktop"

read -p "On which device are you installing my dude? 'laptop' or 'desktop'?  " device

echo "Got you fam, installing on $device. Adding this folder to the PATH environment variable... (requires sudo)"
sleep 1

DOTFILES_DIR=${PWD}

sudo touch /etc/profile.d/dotfiles.sh
echo "#!/bin/bash" | sudo tee -a /etc/profile.d/dotfiles.sh
echo "export PATH=DOTFILES_DIR=$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh
echo "export PATH=$PATH:$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh

echo "Added!"
sleep 1

# This is also done right now so that the rest of the script can go along nicely, even without a reboot
export DOTFILES_DIR=$DOTFILES_DIR
export PATH=$PATH:$DOTFILES_DIR

cd Scripts

./installPrograms.sh $device

read -p "Do you want to install the extra programs at Scripts/extraProgramsToInstall.sh (apps and whatnot)? (y/n)  " answer
if [ $answer == "y" ]
then 
	./extraProgramsToInstall.sh $device
fi

./touchInitialFiles

# Fix small spicetify error 
echo "prefs_path       = ${HOME}/.config/spotify/prefs" >> Apps/spicetify/config.ini

echo "\nSetting up $device configurations..."
sleep 1

./update.sh $device

cd Scripts

./installFonts.sh
killall i3bar
	

if [ $device == $laptop ]
then
	polybar main

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

sudo cp $DOTFILES_DIR/Scripts/addCommitPush /bin
sudo cp $DOTFILES_DIR/Scripts/install* /bin
sudo cp $DOTFILES_DIR/Scripts/update* /bin

# Installing GRUB theme 
echo "Installing GRUB theme..."
sleep 1

sudo $DOTFILES_DIR/Apps/grub/install.sh -v

# First wal run
python $DOTFILES_DIR/Scripts/wallpaperAndColorScheme.py

# Fix small error for VLC downloading
mkdir ~/.cache/vlc

echo "Setting up Spicetify..."
sleep 1

spicetify backup apply enable-devtool
spicetify update apply

echo "Setting up WPGTK theme... (CHANGE LATER WITH LXAPPEARANCE TO FLATCOLOR THEME AND ICON PACK)"
sleep 3

wpg-install.sh -i
wpg-install.sh -g

betterlockscreen -u $DOTFILES_DIR/Wallpapers/wallhaven-83do1o.jpg 

echo "And that's it!"
sleep 1


