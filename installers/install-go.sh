#!/bin/bash

URL=https://go.dev/dl/go1.20.4.linux-amd64.tar.gz
wget -O /tmp/go.linux-amd64.tar.gz $URL
rm -rf /usr/local/go && \
    tar -C /usr/local -xzf /tmp/go.linux-amd64.tar.gz && \
    rm /tmp/go.linux-amd64.tar.gz

# NOTE: Placing this here to source the go binary properly for other scripts
source ~/.bashrc
