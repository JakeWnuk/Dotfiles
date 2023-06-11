#!/bin/bash

# Install Vim Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NOTE: Placing this here to source the go binary properly before attempting
# install
source ~/.bashrc

echo 'command' | vim +PlugInstall +GoInstallBinaries +qall 2>/dev/null
