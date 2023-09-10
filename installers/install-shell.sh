#!/bin/bash

# Install Fzf from source
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# Install Zsh's Z Plugin
URL=https://raw.githubusercontent.com/agkozak/zsh-z/master/zsh-z.plugin.zsh
mkdir ~/.zsh/ && wget -O ~/.zsh/zsh-z.plugin.zsh $URL

# Source and set shell
source ~/.bashrc; source ~/.zshrc

if command -v sudo > /dev/null; then
    echo "/usr/bin/zsh" | sudo tee -a /etc/shells
    sudo chsh -s /usr/bin/zsh $(whoami)
else
    echo "/usr/bin/zsh" >> /etc/shells
    chsh -s /usr/bin/zsh $(whoami)
fi
