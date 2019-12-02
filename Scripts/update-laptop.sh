#!/bin/bash

if [ ! -d "/home/workingdodo/.config/polybar" ]; then
    mkdir /home/workingdodo/.config/polybar
fi

if [ ! -d "/home/workingdodo/.config/polybar/modules" ]; then
    mkdir /home/workingdodo/.config/polybar/modules
fi

cd Apps

cp -r ranger /home/workingdodo/.config/

cp -r Krita/Config/krita*rc /home/workingdodo/.config/

cp -r Krita/Resources/* /home/workingdodo/.local/share/krita/

#cp -r neovim/* /home/workingdodo/.config/nvim

cp polybar/modules.conf /home/workingdodo/.config/polybar/

cp polybar/master.conf /home/workingdodo/.config/polybar/

cp polybar/modules/* /home/workingdodo/.config/polybar/modules/

cp .Xresources /home/workingdodo/.Xresources

touch /home/workingdodo/.i3/config

rm /home/workingdodo/.i3/config

cd ../Laptop

cat ../Configs/common_config config >> /home/workingdodo/.i3/config

cp polybar/config ~/.config/polybar/

cd ../Configs

cp compton.conf /home/workingdodo/.config/compton.conf

cp dunstrc /home/workingdodo/.config/dunst/

cp -rf .Xresources /home/workingdodo/

echo "Updated, yo."

exit 0
