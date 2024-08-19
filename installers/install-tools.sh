#!/bin/bash
# This installer will install relevant tools

# Install Apt tools
apt install -y \ 
    nmap \
    smbclient 

# Install Golang tools
/usr/local/go/bin/go install -v \
    github.com/jakewnuk/ptt@latest

