#!/bin/bash
# This installer will install Golang from source

# Fetch the source from go.dev
URL=https://go.dev/dl/go1.23.0.linux-amd64.tar.gz
wget -O /tmp/go.linux-amd64.tar.gz $URL

# Install for sudo or non-sudo systems
if command -v sudo > /dev/null; then
    sudo rm -rf /usr/local/go && \
    sudo tar -C /usr/local -xzf /tmp/go.linux-amd64.tar.gz && \
    rm /tmp/go.linux-amd64.tar.gz
else
    rm -rf /usr/local/go && \
    tar -C /usr/local -xzf /tmp/go.linux-amd64.tar.gz && \
    rm /tmp/go.linux-amd64.tar.gz
fi

