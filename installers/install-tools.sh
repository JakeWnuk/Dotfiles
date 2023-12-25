#!/bin/bash

# Core tools on apt
apt install -y nmap

# Tools from Go
go install github.com/jakewnuk/maskcat@v0.0.1
go install github.com/jakewnuk/rulecat@v0.0.1

