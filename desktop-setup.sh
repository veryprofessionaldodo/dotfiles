 #!/bin/bash

cp -r ranger /home/workingdodo/.config/

cp -r Apps/Krita/Config/krita*rc /home/workingdodo/.config/

cp -r Apps/Krita/Resources/* /home/workingdodo/.local/share/krita/

cp .Xresources /home/workingdodo/.Xresources



cp dunstrc /home/workingdodo/.config/dunst/

cp compton.conf /home/workingdodo/.config/compton.conf

cp polybar/modules.conf /home/workingdodo/.config/polybar/

cp polybar/master.conf /home/workingdodo/.config/polybar/

cp polybar/modules/* /home/workingdodo/.config/polybar/modules/

rm /home/workingdodo/.config/i3/config

cd Desktop

cp neovim/* /home/workingdodo/.config/nvim

cat ../common_config config >> /home/workingdodo/.config/i3/config

cp polybar/config /home/workingdodo/.config/polybar/

cd ..

cp .Xresources /home/workingdodo

cp -r .fonts /home/workingdodo

echo "Updated."

exit 0




