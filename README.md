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
|-- [4.0K]  ./config
|   |-- [4.0K]  ./config/nuclei-configs
|   |   `-- [ 366]  ./config/nuclei-configs/simple.yml
|   |-- [4.0K]  ./config/wordlists
|   |-- [ 531]  ./config/coc-config.json
|   |-- [3.0K]  ./config/conf.curl
|   |-- [ 952]  ./config/nginx.conf
|   `-- [  99]  ./config/sh_history.txt
|-- [4.0K]  ./dotfiles
|   |-- [4.0K]  ./dotfiles/shell
|   |   |-- [1.2K]  ./dotfiles/shell/dot-bashrc
|   |   |-- [ 697]  ./dotfiles/shell/dot-curlrc
|   |   |-- [ 232]  ./dotfiles/shell/dot-inputrc
|   |   |-- [4.2K]  ./dotfiles/shell/dot-sh_aliases
|   |   |-- [3.5K]  ./dotfiles/shell/dot-sh_variables
|   |   `-- [1.9K]  ./dotfiles/shell/dot-zshrc
|   |-- [4.0K]  ./dotfiles/tmux
|   |   `-- [1.8K]  ./dotfiles/tmux/dot-tmux.conf
|   `-- [4.0K]  ./dotfiles/vim
|       `-- [1.8K]  ./dotfiles/vim/dot-vimrc
|-- [4.0K]  ./installers
|   |-- [ 388]  ./installers/install-dotfiles.sh
|   |-- [ 406]  ./installers/install-go.sh
|   |-- [ 632]  ./installers/install-grc.sh
|   |-- [ 435]  ./installers/install-pipx.sh
|   |-- [ 727]  ./installers/install-shell.sh
|   |-- [ 331]  ./installers/install-tools.sh
|   |-- [ 287]  ./installers/install-updates.sh
|   |-- [ 529]  ./installers/install-vim.sh
|   `-- [ 256]  ./installers/install-wordlists.sh
|-- [ 987]  ./Dockerfile
|-- [1.8K]  ./README.md
`-- [2.0K]  ./main.yml
```
