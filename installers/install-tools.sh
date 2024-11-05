#!/bin/bash
# This installer will install relevant tools

# Install Apt tools
apt install -y \ 
   # docker.io \
    nmap \
    smbclient \
    openvpn \
    rlwrap \
    nginx 

# Install Golang tools
/usr/local/go/bin/go install -v \
    github.com/jakewnuk/ptt@latest

