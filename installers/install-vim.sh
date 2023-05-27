#!/bin/bash

# Install Vim Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo 'command' | vim +PlugInstall +GoInstallBinaries +qall 2>/dev/null
