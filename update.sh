#!/bin/bash

cp hyprland.conf ~/.config/hypr
cp kitty.conf ~/.config/kitty
cp waybar/waybar.jsonc ~/.config/waybar/config.jsonc
cp waybar/style.css ~/.config/waybar

rm -rf $HOME/Imagens/wallpapers
cp -r wallpapers $HOME/Imagens/wallpapers

# update configs with pywal generated
cat ~/.cache/wal/colors-kitty.conf >> ~/.config/kitty/kitty.conf
echo background_opacity 0.7 >> ~/.config/kitty/kitty.conf
