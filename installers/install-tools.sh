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

/usr/local/go/bin/go install \
    github.com/jakewnuk/maskcat@v0.0.1 

/usr/local/go/bin/go install \
    github.com/jakewnuk/rulecat@v0.0.2

/usr/local/go/bin/go install \
    github.com/jakewnuk/mode@v0.0.1

