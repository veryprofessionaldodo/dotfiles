#!/bin/bash

laptop="laptop"
desktop="desktop"

if [ ! -d "/home/workingdodo/.config/polybar" ]; then
    mkdir /home/workingdodo/.config/polybar
fi

if [ ! -d "/home/workingdodo/.config/spicetify/Themes/Yoo" ]; then
    mkdir /home/workingdodo/.config/spicetify/Themes/Yoo
fi

if [ ! -d "/home/workingdodo/.config/rofi" ]; then
    mkdir /home/workingdodo/.config/rofi
fi

cd Apps

cp -r ranger /home/workingdodo/.config/

cp -r krita/Config/krita*rc /home/workingdodo/.config/

cp -r krita/Resources/* /home/workingdodo/.local/share/krita/

#cp -r neovim/* /home/workingdodo/.config/nvim

cp rofi/config /home/workingdodo/.config/rofi/

cp -r polybar/* /home/workingdodo/.config/polybar/

if [ $1 == $laptop ]
then 
    cd ../Laptop
    
    touch /home/workingdodo/.i3/config
    rm /home/workingdodo/.i3/config

    FIREFOX="$(cd /home/workingdodo/.mozilla/firefox/ && ls -a | grep *-release)"

    cat ../Configs/common_config config >> /home/workingdodo/.i3/config
elif [ $1 == $desktop ]
then
    cd ../Desktop

    touch /home/workingdodo/.config/i3/config
    rm /home/workingdodo/.config/i3/config

    FIREFOX="$(cd /home/workingdodo/.mozilla/firefox/ && ls -a | grep *.default)"

    cat ../Configs/common_config config >> /home/workingdodo/.config/i3/config
fi

cp polybar/config /home/workingdodo/.config/polybar

cd ../Configs

cp -a .Xresources /home/workingdodo/

cp redshift.conf /home/workingdodo/.config/

cp compton.conf /home/workingdodo/.config/compton.conf

# Dunst needs to be updated, and then sent to it's place
cp dunstrc /home/workingdodo/.config/wal/templates

cp /home/workingdodo/.cache/wal/dunstrc ~/.config/dunst

cp config.ini /home/workingdodo/.config/spicetify

cp -r ../Apps/spicetify/* /home/workingdodo/.config/spicetify/Themes/Yoo

cp -r ../Apps/firefox/* /home/workingdodo/.mozilla/firefox/$FIREFOX

spicetify update

echo "Updated $1, homie."

exit 0
