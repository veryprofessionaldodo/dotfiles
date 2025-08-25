#!/bin/bash

WALLPAPER_DIR="$HOME/Imagens/wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

# Apply the selected wallpaper
hyprctl hyprpaper reload ,"$WALLPAPER"
wal -i $WALLPAPER

# update configs with pywal generated
cat ~/.cache/wal/colors-kitty.conf >> ~/.config/kitty/kitty.conf
