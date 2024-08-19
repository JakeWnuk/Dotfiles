#!/bin/bash
# This installer will install wordlists from online sources

# Install Raft wordlists from Assetnote
mkdir -p /usr/share/wordlists
cd /usr/share/wordlists && wget -r --no-parent -A "raft-large-*" -R "index.html*" https://wordlists-cdn.assetnote.io/data/manual/ -nH -e robots=off
mv ./data/* ./ && rm -rf ./data
