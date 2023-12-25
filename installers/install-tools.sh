#!/bin/bash

# Core tools on apt
apt install -y nmap smbclient smbmap hashcat

# Install Pipx tools
~/.local/bin/pipx install git+https://github.com/Pennyw0rth/NetExec
