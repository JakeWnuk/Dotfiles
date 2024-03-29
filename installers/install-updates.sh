#!/bin/bash

apt-get update -qq
apt-get install -y tmux grc zsh-syntax-highlighting docker.io vim wget curl \
tree gcc stow python3-pip python3-venv nodejs dos2unix openvpn iputils-ping \
rlwrap rubygems ruby-dev dnsutils dnsmasq nginx npm clangd ntp
apt-get update --fix-missing
