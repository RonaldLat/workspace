#! /bin/bash
echo "Setup has began..."
zsh
wget https://github.com/RonaldLat/ronfiles/blob/gh-cs/nvim.appimage
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
ln -s ~/workspace/.zshrc ~/.zshrc
sudo apt-get install fuse libfuse2
source ~/.zshrc
cd /workspaces

echo "Setup END!"
