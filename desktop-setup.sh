 #!/bin/bash

cp .Xresources ~/.Xresources

cp compton.conf ~/.config/compton.conf

cd Desktop

cp config ~/.i3/

cp polybar/config ~/.config/polybar/

cd ..

cp .Xresources ~

cp -r .fonts ~

echo "Updated."

exit 0




