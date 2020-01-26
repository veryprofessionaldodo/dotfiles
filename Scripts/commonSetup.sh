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

echo "There is a list of programs at Scripts/extraProgramsToInstall.sh . You can modify this file now if you want, to download exactly what you need!"
sleep 2

read -p "Do you want to install the extra programs at Scripts/extraProgramsToInstall.sh? (y/n)  " answer
if [ $answer == "y" ]
then 
	./extraProgramsToInstall.sh $device "arch-based"
fi

sudo cp Apps/lightdm/* /etc/lightdm/
sudo rm -rf /usr/share/backgrounds/gnome
sudo cp Wallpapers/* /usr/share/backgrounds

./touchInitialFiles.sh


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

	sudo systemctl enable tlp
	sudo systemctl enable tlp-sleep.service
	sudo systemctl mask systemd-rfkill.service
	sudo systemctl mask systemd-rfkill.socket

	sudo systemctl start tlp


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


