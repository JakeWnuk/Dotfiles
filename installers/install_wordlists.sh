#!/bin/bash

# install raft wordlists from Assetnote
mkdir -p /usr/share/wordlists
cd /usr/share/wordlists && wget -r --no-parent -A "raft*" -R "index.html*" https://wordlists-cdn.assetnote.io/data/manual/ -nH
