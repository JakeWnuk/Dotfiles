#!/bin/bash

apt-get update -qq
apt-get install -y tmux jq grc zsh-syntax-highlighting docker.io vim wget curl tree gcc stow
apt-get update --fix-missing
