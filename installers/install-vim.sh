#!/bin/bash

# Install Vim Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NOTE: Souce go binary before attempting CLI plugin install
source ~/.bashrc

# Install deps
echo 'command' | vim +PlugInstall +GoInstallBinaries +qall 2>/dev/null

# Install copilot
git clone https://github.com/github/copilot.vim ~/.vim/pack/github/start/copilot.vim

