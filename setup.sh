#! /bin/bash
echo "Setup has began..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended || true
#zshrc
rm -r ~/.zshrc || true
cd ~/ && ln -fs /workspace/workspace/.zshrc .zshrc && cd /workspace/workspace || true
#tmux
rm -r ~/tmux.conf || true
cd ~/ && ln -fs /workspace/workspace/tmux.conf tmux.conf && cd /workspace/workspace || true
#nvim
rm -r ~/.config/nvim || true
cd ~/.config && ln -fs /workspace/workspace/nvim nvim && cd /workspace/workspace || true
sudo apt-get install fuse libfuse2 tmux -yf
source ~/.zshrc
#cd /workspaces
zsh

echo "Setup END!"
