 #!/bin/bash

cp -r ranger ~/.config

cp .Xresources ~/.Xresources

cp dunstrc ~/.config/dunst/

cp compton.conf ~/.config/compton.conf

cp polybar/modules.conf ~/.config/polybar

cp polybar/master.conf ~/.config/polybar

cp polybar/modules/* ~/.config/polybar/modules

cd Desktop

cp config ~/.i3/

cp polybar/config ~/.config/polybar/

cd ..

cp .Xresources ~

cp -r .fonts ~

echo "Updated."

exit 0




