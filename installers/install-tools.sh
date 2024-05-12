#!/bin/bash
# This installer will install relevant tools

# Install Apt tools
apt install -y nmap smbclient smbmap tcpdump

# Install Python tools
~/.local/bin/pipx install \
    impacket

~/.local/bin/pipx install \
    netexec

~/.local/bin/pipx install \
    semgrep

# Install Golang tools
/usr/local/go/bin/go install -v \
    github.com/projectdiscovery/httpx/cmd/httpx@latest

/usr/local/go/bin/go install -v \
    github.com/jakewnuk/ptt@latest

