#!/bin/bash

laptop="laptop"
desktop="desktop"

#sudo pacman -S yay base-devel

yay -R manjaro-i3-settings

yay -Rs picom palemoon-bin

# Essential software for rice
echo "Installing essential software for rice..."
sleep 0.1
<<<<<<< HEAD
yay -S wmctrl ffmpegthumbnailer feh sl rofi polybar redshift gsimplecal gtk-chtheme compton-tryone-git gnome-system-monitor flameshot pavucontrol vlc betterlockscreen wpgtk-git neofetch unzip playerctl spicetify-cli lxappearance xorg-xinput
=======
yay -S wmctrl dunst ffmpegthumbnailer feh sl rofi polybar redshift gsimplecal gtk-chtheme compton-tryone-git gnome-system-monitor flameshot pavucontrol vlc betterlockscreen wpgtk-git neofetch unzip playerctl spicetify-cli lxappearance
>>>>>>> 7ff2378ac52a49d3e96161e65ec7a10208f4d772

# For Spicetify
sudo mkdir /opt/spotify
sudo chown $USER -R /opt/spotify

read -p "Do you want to install the extra programs at Scripts/installPrograms.sh (apps and whatnot)? (y/n)  " answer

if [ $answer == "y" ]
then 
	echo "Installing programs..."
    sleep 0.1

    if [ $1 == $laptop ]
    then
        yay -S authy nautilus firefox telegram-desktop code transmission-qt simplenote-electron-bin franz-bin authy discord youtube-dl steam-manjaro xorg-xbacklight blacklist_pcspkr
    elif [ $1 == $desktop ]
    then
        yay -S authy nautilus firefox telegram-desktop code transmission-qt simplenote-electron-bin franz-bin authy discord youtube-dl steam-manjaro xf86-input-wacom pureref
    fi


    # Spotify sometimes breaks
    yay -S spotify

fi

echo "Cleaning cache..."
sleep 0.1
yay -Sc

echo "Updating system..."
sleep 0.1
yay

