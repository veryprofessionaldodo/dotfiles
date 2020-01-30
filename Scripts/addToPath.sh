#!/bin/bash

echo "Adding this folder to the PATH environment variable... (requires sudo)"
sleep 1

DOTFILES_DIR=${PWD}

sudo touch /etc/profile.d/dotfiles.sh
echo "#!/bin/bash" | sudo tee -a /etc/profile.d/dotfiles.sh
echo "export PATH=DOTFILES_DIR=$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh
echo "export PATH=$PATH:$DOTFILES_DIR" | sudo tee -a /etc/profile.d/dotfiles.sh

echo "Added!"
sleep 1
