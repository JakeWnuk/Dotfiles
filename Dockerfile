# Base image
FROM ubuntu:devel

# Load configuration files and installers
ADD ./config/ /tmp/config/
ADD ./installers/ /tmp/installers/
ADD ./dotfiles /root/dotfiles/

# Run installers
RUN bash /tmp/installers/install-updates.sh && \
    bash /tmp/installers/install-dotfiles.sh && \
    bash /tmp/installers/install-shell.sh && \
    bash /tmp/installers/install-grc.sh && \
    bash /tmp/installers/install-go.sh && \
    bash /tmp/installers/install-pipx.sh && \
    bash /tmp/installers/install-vim.sh && \
    bash /tmp/installers/install-tools.sh && \
    bash /tmp/installers/install-wordlists.sh && \
    bash /tmp/installers/install-msf.sh && \
    rm -rf /var/lib/apt/lists/* /tmp/*

# Set environment
WORKDIR /data
ADD ./config/conf.curl /usr/share/grc/conf.curl
ADD ./config/nginx.conf /etc/nginx/nginx.conf
ADD ./config/coc-config.json /root/.vim/coc-config.json
ADD ./config/wordlists /usr/share/wordlists
ADD ./config/nuclei-configs /usr/share/nuclei-configs
ENTRYPOINT ["/usr/bin/zsh"]

