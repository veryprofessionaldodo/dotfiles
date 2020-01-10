#!/bin/bash

laptop="laptop"
desktop="desktop"

if [ ! -d "$HOME/.config/polybar" ]; then 
    mkdir $HOME/.config/polybar
fi

if [ ! -d "$HOME/.config/spicetify/Themes/Yoo" ]; then
    mkdir $HOME/.config/spicetify/Themes/Yoo
fi

if [ ! -d "$HOME/.config/rofi" ]; then
    mkdir $HOME/.config/rofi
fi

echo "Configuring apps..."
sleep 0.1

cd $DOTFILES_DIR/Apps

cp -r ranger $HOME/.config/

cp -r krita/Config/krita*rc $HOME/.config/

cp -r krita/Resources/* $HOME/.local/share/krita/

cp rofi/config $HOME/.config/rofi/

cp -r polybar/* $HOME/.config/polybar/


cd $DOTFILES_DIR/Configs

cp -a .Xresources $HOME/

cp redshift.conf $HOME/.config/

cp compton.conf $HOME/.config/compton.conf

# Dunst needs to be updated, and then sent to it's place
cp dunstrc $HOME/.config/wal/templates

cp $HOME/.cache/wal/dunstrc $HOME/.config/dunst

cp $DOTFILES_DIR/Apps/spicetify/config.ini $HOME/.config/spicetify

cp -r $DOTFILES_DIR/Apps/spicetify/* $HOME/.config/spicetify/Themes/Yoo

spicetify update

echo "Configuring i3 setup..."
sleep 0.1

if [ $1 == $laptop ]
then 
    cd $DOTFILES_DIR/Laptop
    
    touch $HOME/.i3/config
    rm $HOME/.i3/config

    cat $DOTFILES_DIR/Configs/common_config config >> $HOME/.i3/config

    cp polybar/config $HOME/.config/polybar
elif [ $1 == $desktop ]
then
    cd $DOTFILES_DIR/Desktop

    touch $HOME/.config/i3/config
    rm $HOME/.config/i3/config

    cat $DOTFILES_DIR/Configs/common_config config >> $HOME/.config/i3/config
    
    cp polybar/config $HOME/.config/polybar
fi


echo "Updated $1, homie."
sleep 0.1

exit 0
