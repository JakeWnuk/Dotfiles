#!/bin/bash

# Install Vim Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NOTE: Souce go binary before attempting CLI plugin install
source ~/.bashrc

# Install deps
echo 'command' | vim +PlugInstall +GoInstallBinaries +qall 2>/dev/null
vim -c 'CocInstall -sync coc-go coc-html coc-css coc-json coc-clangd coc-python coc-prettier coc-yaml |q'

# Install copilot
git clone https://github.com/github/copilot.vim ~/.vim/pack/github/start/copilot.vim

