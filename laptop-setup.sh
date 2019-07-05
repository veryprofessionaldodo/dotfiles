#!/bin/bash

cp -r ranger /home/workingdodo/.config/

cp dunstrc /home/workingdodo/.config/dunst/

cp compton.conf /home/workingdodo/.config/compton.conf

cp polybar/modules.conf /home/workingdodo/.config/polybar/

cp polybar/master.conf /home/workingdodo/.config/polybar/

cp polybar/modules/* /home/workingdodo/.config/polybar/modules/

rm /home/workingdodo/.i3/config

cat common_config Laptop/config >> /home/workingdodo/.i3/config

cat common_config Laptop/config >> /home/workingdodo/.config/i3/config

cd Laptop

cp polybar/config ~/.config/polybar/

cd ..

cp .Xresources ~

cp -r .fonts ~

echo "Updated, maluco."

exit 0
