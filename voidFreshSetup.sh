#!/bin/bash


laptop="laptop"
desktop="desktop"

echo "Important! Run this inside the dotfiles folder!"
sleep 2

cd ~

mkdir Documents Downloads Music Games Pictures Desktop 

echo "Entering the void..."

sleep 1

sudo xbps-install -Suv
sudo xbps-install -S xorg-minimal xorg-fonts i3-gaps rxvt-unicode tlp lightdm lightdm-gtk3-greeter python-pip pamixer pulseaudio alsa-utils w3m elogind dbus polkit polkit-gnome

echo "Configuring i3 on boot..."

sudo ln -srf /etc/sv/{dbus,polkitd,elogind} /var/service
sudo ln -sb /etc/sv/dbus /var/service/dbus
sudo ln -sv /etc/sv/polkitd/ /var/service
sudo ln -s /etc/sv/lightdm /var/service/lightdm

sleep 1

echo "exec i3" | tee -a ~/.xinitrc  
echo "loadkeys keymap" | tee -a ~/.xinitrc

echo "export LANG=en_US.UTF-8" | tee -a ~/.bashrc 
echo "export LANGUAGE=en_US.UTF-8" | tee -a ~/.bashrc

cd Downloads

laptop="laptop"
desktop="desktop"

read -p "On which device are you installing my dude? 'laptop' or 'desktop'?  " device

sudo xbps-install -S xorg-minimal xorg-fonts xf86-video-intel

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

echo "Setting up Void repositories..."
sleep 1

sudo xbps-install void-repo-multilib void-repo-multilib-nonfree void-repo-nonfree 
xbps-install -S

echo "Installing Void programs..."
sleep 1

xbps-install wmctrl ranger dmenu dunst ffmpegthumbnailer feh rofi polybar gsimplecal compton flameshot betterlockscreen wpgtk playerctl lxappearance

# Extra packages for Void 
# compton-tryone-git
# pacmixer
# spicetify-cli

echo "There is a list of programs at Scripts/extraProgramsToInstall.sh . You can modify this file now if you want, to download exactly what you need!"
sleep 2

read -p "Do you want to install the extra programs at Scripts/extraProgramsToInstall.sh? (y/n)  " answer
if [ $answer == "y" ]
then 
	./extraProgramsToInstall.sh $device "void"
fi

./touchInitialFiles.sh

# Fix small spicetify error 
echo "prefs_path       = ${HOME}/.config/spotify/prefs" >> Apps/spicetify/config.ini

# Fix small ranger error 
echo "set preview_script $HOME/.config/ranger/scope.sh" >> Apps/ranger/rc.conf

echo "\nSetting up $device configurations..."
sleep 1

./updateVoid.sh $device

cd Scripts

./installFonts.sh
killall i3bar
	
if [ $device == $laptop ]
then
	polybar main

	read -p "Do you want to setup Prime? (y/n)  " answer

	if [ $answer == "y" ]
	then 
		sudo pacman -S nvidia lib32-nvidia-utils xf86-video-intel
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

#echo "Setting up Spicetify..."
#sleep 1

#spicetify backup apply enable-devtool
#spicetify update apply

echo "Setting up WPGTK theme... (CHANGE LATER WITH LXAPPEARANCE TO FLATCOLOR THEME AND ICON PACK)"
sleep 3

wpg-install.sh -i
wpg-install.sh -g

betterlockscreen -u $DOTFILES_DIR/Wallpapers/wallhaven-83do1o.jpg 

echo "And that's it!"
sleep 1


