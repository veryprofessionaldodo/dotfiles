#!/bin/bash

cp -r ranger /home/workingdodo/.config/

cp dunstrc /home/workingdodo/.config/dunst/

cp compton.conf /home/workingdodo/.config/compton.conf

cp polybar/modules.conf /home/workingdodo/.config/polybar/

cp polybar/master.conf /home/workingdodo/.config/polybar/

cp polybar/modules/* /home/workingdodo/.config/polybar/modules/

cd Laptop

cp config ~/.config/i3/

cp polybar/config ~/.config/polybar/

cd ..

cp .Xresources ~

cp -r .fonts ~

echo "Updated, maluco."

exit 0
