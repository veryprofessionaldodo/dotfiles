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

cp -r Krita/Config/krita*rc /home/workingdodo/.config/

cp -r Krita/Resources/* /home/workingdodo/.local/share/krita/

#cp -r neovim/* /home/workingdodo/.config/nvim

cp rofi/config /home/workingdodo/.config/rofi/

cp -r polybar/* /home/workingdodo/.config/polybar/

if [ $1 == $laptop ]
then 
    cd ../Laptop
    
    touch /home/workingdodo/.i3/config
    rm /home/workingdodo/.i3/config

    cat ../Configs/common_config config >> /home/workingdodo/.i3/config
elif [ $1 == $desktop ]
then
    cd ../Desktop

    touch /home/workingdodo/.config/i3/config
    rm /home/workingdodo/.config/i3/config

    cat ../Configs/common_config config >> /home/workingdodo/.config/i3/config
fi

cp polybar/config /home/workingdodo/.config/polybar

cd ../Configs

cp -a .Xresources /home/workingdodo/

cp compton.conf /home/workingdodo/.config/compton.conf

cp dunstrc /home/workingdodo/.config/dunst/

cp config.ini /home/workingdodo/.config/spicetify

cp ../Apps/spicetify/* /home/workingdodo/.config/spicetify/Themes/Yoo

spicetify update apply

echo "Updated $1, homie."

exit 0