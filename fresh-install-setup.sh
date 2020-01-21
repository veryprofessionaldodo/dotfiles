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
echo "#!/bin/bash" | sudo tee -a /etc/profile.d/dotfiles.sh
echo "export PATH=DOTFILES_DIR=$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh
echo "export PATH=$PATH:$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh

echo "Added!"
sleep 0.1

# This is also done right now so that the rest of the script can go along nicely, even without a reboot
export DOTFILES_DIR=$DOTFILES_DIR
export PATH=$PATH:$DOTFILES_DIR

cd Scripts
./installPrograms.sh $device
./touchInitialFiles

# Fix small spicetify error 
echo "prefs_path       = ${HOME}/.config/spotify/prefs" >> Apps/spicetify/config.ini

if [ $device == $laptop ]
then
	echo "\nSetting up laptop configurations..."
	sleep 0.1

	cd ..
	./update.sh latop
	
	read -p "Do you want to setup bumblebee? (y/n)  " answer

	if [ $answer == "y" ]
	then 
		sudo pacman -S nvidia lib32-nvidia-utils xf86-video-intel nvidia-prime
		sudo mv $DOTFILES_DIR/Configs/30-nvidia.conf /etc/X11/xorg.conf.d/
	fi 

	cd Scripts
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
	./installFonts.sh
	./tabletConfig.sh
	sudo mkdir /mnt/Windows
	sudo mkdir /mnt/CommonPartition
	killall i3bar
	polybar left && polybar right
fi

sudo cp $DOTFILES_DIR/Scripts/addCommitPush /bin
sudo cp $DOTFILES_DIR/Scripts/install* /bin
sudo cp $DOTFILES_DIR/Scripts/update* /bin

# Installing GRUB theme 
echo "Installing GRUB theme..."
sleep 0.1

sudo Apps/grub/install.sh -v

# First wal run
python $DOTFILES_DIR/Scripts/wallpaperAndColorScheme.py

mkdir ~/.cache/vlc

spicetify backup apply enable-devtool
spicetify update apply

wpg-install.sh -i
wpg-install.sh -g

betterlockscreen -u $DOTFILES_DIR/Wallpapers/wallhaven-83do1o.jpg 

echo "And that's it!\n Use lxappearance to set the GTK and Icon Theme to FlatColor"
sleep 0.1


