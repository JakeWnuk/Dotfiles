#!/bin/bash
# This installer will install vim and associated plugins

# Install Vim Plugins
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# NOTE: Source Golang binary before attempting CLI plugin install
source ~/.bashrc

# Install dependencies
echo 'command' | vim +PlugInstall +GoInstallBinaries +qall 2>/dev/null
vim -es -c 'CocInstall -sync coc-go coc-html coc-css coc-json coc-clangd coc-python coc-prettier coc-yaml coc-tsserver coc-markdownlint coc-perl' -c 'qa!'

# Install GitHub Copilot
git clone https://github.com/github/copilot.vim ~/.vim/pack/github/start/copilot.vim
