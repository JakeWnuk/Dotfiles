### Dotfiles

#### Install
```
sudo apt update && sudo apt install -y git
git clone https://github.com/JakeWnuk/Dotfiles
```
Docker
```
docker build . -t dotfiles
docker run -it --rm --volume ${PWD}:/data dotfiles
```
Ansible
```
sudo apt update && sudo apt install -y ansible
ansible-playbook main.yml
```

#### Contents
```
[4.0K]  .
├── [4.0K]  ./config
│   ├── [4.0K]  ./config/wordlists
│   │   └── [1.6K]  ./config/wordlists/* [...]
│   ├── [3.0K]  ./config/conf.curl
│   ├── [ 952]  ./config/nginx.conf
│   └── [   0]  ./config/sh_history.txt
├── [4.0K]  ./dotfiles
│   ├── [4.0K]  ./dotfiles/shell
│   │   ├── [3.0K]  ./dotfiles/shell/dot-bashrc
│   │   ├── [ 697]  ./dotfiles/shell/dot-curlrc
│   │   ├── [ 232]  ./dotfiles/shell/dot-inputrc
│   │   ├── [3.6K]  ./dotfiles/shell/dot-sh_aliases
│   │   └── [3.3K]  ./dotfiles/shell/dot-zshrc
│   ├── [4.0K]  ./dotfiles/tmux
│   │   └── [1.8K]  ./dotfiles/tmux/dot-tmux.conf
│   └── [4.0K]  ./dotfiles/vim
│       └── [1.8K]  ./dotfiles/vim/dot-vimrc
├── [4.0K]  ./installers
│   ├── [ 388]  ./installers/install-dotfiles.sh
│   ├── [ 406]  ./installers/install-go.sh
│   ├── [ 632]  ./installers/install-grc.sh
│   ├── [ 435]  ./installers/install-pipx.sh
│   ├── [ 682]  ./installers/install-shell.sh
│   ├── [ 211]  ./installers/install-tools.sh
│   ├── [ 272]  ./installers/install-updates.sh
│   ├── [ 423]  ./installers/install-vim.sh
│   └── [ 256]  ./installers/install-wordlists.sh
├── [ 875]  ./Dockerfile
├── [ 804]  ./README.md
└── [1.6K]  ./main.yml
```
