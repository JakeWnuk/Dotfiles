### Dotfiles

#### Install
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
