#!/bin/sh

cp Configs/yabairc ~/.config/yabai/yabairc
cp Configs/skhdrc ~/.config/skhd/skhdrc

brew services restart yabai
brew services restart skhd

