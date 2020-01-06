#!/bin/bash

laptop="laptop"
desktop="desktop"

echo "Updating... "

if [ ! -d "$HOME/.config/polybar" ]; then
    mkdir $HOME/.config/polybar
fi

if [ ! -d "$HOME/.config/spicetify/Themes/Yoo" ]; then
    mkdir $HOME/.config/spicetify/Themes/Yoo
fi

if [ ! -d "$HOME/.config/rofi" ]; then
    mkdir $HOME/.config/rofi
fi

cd Apps

cp -r ranger $HOME/.config/

cp -r krita/Config/krita*rc $HOME/.config/

cp -r krita/Resources/* $HOME/.local/share/krita/

cp rofi/config $HOME/.config/rofi/

cp -r polybar/* $HOME/.config/polybar/

if [ $1 == $laptop ]
then 
    cd ../Laptop
    
    touch $HOME/.i3/config
    rm $HOME/.i3/config

    cat ../Configs/common_config config >> $HOME/.i3/config
elif [ $1 == $desktop ]
then
    cd ../Desktop

    touch $HOME/.config/i3/config
    rm $HOME/.config/i3/config


    cat ../Configs/common_config config >> $HOME/.config/i3/config
fi

cp polybar/config $HOME/.config/polybar

cd ../Configs

cp -a .Xresources $HOME/

cp redshift.conf $HOME/.config/

cp compton.conf $HOME/.config/compton.conf

# Dunst needs to be updated, and then sent to it's place
cp dunstrc $HOME/.config/wal/templates

cp $HOME/.cache/wal/dunstrc $HOME/.config/dunst

cp ../Apps/spicetify/config.ini $HOME/.config/spicetify

cp -r ../Apps/spicetify/* $HOME/.config/spicetify/Themes/Yoo

spicetify update

echo "Updated $1, homie."

exit 0
