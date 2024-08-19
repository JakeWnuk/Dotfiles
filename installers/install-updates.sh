#!/bin/bash
# This installer will fetch apt updates and install several packages

apt-get update -qq
DEBIAN_FRONTEND=noninteractive apt-get install -y \
    tmux \
    zsh-syntax-highlighting \
    docker.io \
    vim \
    wget \
    curl \
    tree \
    gcc \
    stow \
    python3-pip \
    python3-venv \
    nodejs \
    dos2unix \
    openvpn \
    iputils-ping \
    rlwrap \
    rubygems \
    ruby-dev \
    dnsutils \
    dnsmasq \
    nginx \
    npm \
    clangd \
    ntp \
    locales
apt-get update --fix-missing
DEBIAN_FRONTEND=noninteractive apt-get install --fix-broken
apt-get autoremove && apt-get clean && apt-get autoclean && rm -rf /var/lib/apt/lists/*
