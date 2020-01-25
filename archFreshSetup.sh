#!/bin/bash


laptop="laptop"
desktop="desktop"

echo "Important! Run this inside the dotfiles folder!"
sleep 2

echo "Also, only do this AFTER you completed Arch Linux installation! Follow guide on arch-install-help.txt"
sleep 2

cd ~

echo "Installing essential Arch apps..."

sleep 1

sudo pacman -S xorg-server xorg-xinit i3-gaps rxvt-unicode tlp powertop lightdm lightdm-gtk-greeter python-pip pamixer pulseaudio pulseaudio-alsa alsa-utils w3m polkit-gnome

sudo systemctl enable tlp
sudo systemctl start tlp
sudo systemctl enable lightdm
sudo powertop --auto-tune

echo "Configuring i3 on boot..."

sleep 1

echo "exec i3" | tee -a ~/.xinitrc  
echo "loadkeys pt" | tee -a ~/.xinitrc

echo "export LANG=en_GB.UTF-8" | tee -a ~/.bashrc 
echo "export LANGUAGE=en_GB.UTF-8" | tee -a ~/.bashrc
echo "xrdb merge ~/.Xresources" | tee -a ~/.bashrc

cd Downloads

echo "Downloading and installing yay..."
sleep 1

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

./Scripts/commonSetup.sh
