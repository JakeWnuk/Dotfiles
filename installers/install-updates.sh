#!/bin/bash

apt-get update -qq
apt-get install -y tmux jq grc zsh-syntax-highlighting docker.io vim wget curl tree gcc stow python3-pip
apt-get update --fix-missing
