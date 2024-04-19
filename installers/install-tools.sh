#!/bin/bash
# This installer will install relevant tools

# Install Apt tools
apt install -y nmap smbclient smbmap tcpdump

# Install Python tools
~/.local/bin/pipx install \
    impacket

# Install Golang tools
/usr/local/go/bin/go install -v \
    github.com/projectdiscovery/httpx/cmd/httpx@latest

# TODO - reimplement other tools
