#!/bin/bash
# This installer will configure the default shell and install Zsh plugins

# Install Fzf from source
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
# Does not work as intended so installing from APT but cloning completions
# ~/.fzf/install --all

# Install Zsh's Z Plugin
URL=https://raw.githubusercontent.com/agkozak/zsh-z/master/zsh-z.plugin.zsh
mkdir ~/.zsh/ && wget -O ~/.zsh/zsh-z.plugin.zsh $URL

# Source and set shell
source ~/.bashrc; source ~/.zshrc

# Configure for sudo and non-sudo systems
if command -v sudo > /dev/null; then
    echo "/usr/bin/zsh" | sudo tee -a /etc/shells
    sudo chsh -s /usr/bin/zsh $(whoami)
else
    echo "/usr/bin/zsh" >> /etc/shells
    chsh -s /usr/bin/zsh $(whoami)
fi

# Copy over history file
cp /tmp/config/sh_history.txt ~/.zsh_history
cp /tmp/config/sh_history.txt ~/.bash_history
cp /tmp/config/sh_history.txt ~/.sh_history
