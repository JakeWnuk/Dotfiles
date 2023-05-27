#!/bin/bash

# Install Fzf from source
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install Zsh's Z Plugin
URL=https://raw.githubusercontent.com/agkozak/zsh-z/master/zsh-z.plugin.zsh
mkdir ~/.zsh/ && wget -O ~/.zsh/zsh-z.plugin.zsh $URL

# Source and set shell
source ~/.bashrc; source ~/.zshrc
chsh -s $(which zsh) $(whoami)

