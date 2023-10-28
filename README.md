#### Dotfiles
- .bashrc
- .curlrc
- .inputrc
- .sh_aliases
- .tmux.conf
- .vimrc
- .zshrc

#### Packages & Repositories

- [fzf](https://github.com/junegunn/fzf)
- [go](https://go.dev/doc/)
- [pipx](https://github.com/pypa/pipx)
- [grc](https://github.com/garabik/grc)
- [stow](https://www.gnu.org/software/stow/)
- [tmux](https://github.com/tmux/tmux)
- [z](https://github.com/agkozak/zsh-z)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)

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
