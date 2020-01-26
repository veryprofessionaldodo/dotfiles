#!/bin/sh

echo -e "\e[36mBuilding lightdm-eh8"
echo -e "\e[0m"

echo "Removing old copy of LightDM theme..."
sudo rm -rf /usr/share/lightdm-webkit/themes/eh8/*
echo "Done"

echo "Copying background to directory.."
cp $DOTFILES_DIR/Wallpapers/japan.jpg src/assets/images/
sudo cp src/assets/images/background.png /usr/share/backgrounds
echo "Done"

echo "Running Vue setup..."
sudo rm -r dist/
npm run-script build
echo "Done"

echo "Building directory..."
pushd dist && tar zcvf ../lightdm-eh8.tar.gz ./* && popd
sudo mkdir -p /usr/share/lightdm-webkit/themes/eh8/
sudo mv lightdm-eh8.tar.gz /usr/share/lightdm-webkit/themes/eh8/ 
echo "Done"

echo "Entering directory and running final decompression..."
cd /usr/share/lightdm-webkit/themes/eh8/
sudo tar xvf lightdm-eh8.tar.gz
echo "Done"

echo "All done!"
