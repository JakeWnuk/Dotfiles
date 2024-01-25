#!/bin/bash

# Core tools on apt
apt install -y nmap smbclient smbmap hashcat tcpdump

# Install Pipx tools
~/.local/bin/pipx install git+https://github.com/Pennyw0rth/NetExec
~/.local/bin/pipx install impacket

# Install Golang tools
/usr/local/go/bin/go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest

