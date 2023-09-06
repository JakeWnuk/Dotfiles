#!/bin/bash

# Install Vim Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NOTE: Souce go binary before attempting CLI plugin install
source ~/.bashrc

# Install SpaceVim
curl -sLf https://spacevim.org/install.sh | bash

# Install deps
echo 'command' | vim +PlugInstall +GoInstallBinaries +qall 2>/dev/null

