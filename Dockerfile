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
    bash /tmp/installers/install-vim.sh && \
    rm -rf /var/lib/apt/lists/* /tmp/*

# Set environment
WORKDIR /data
ADD ./config/conf.curl /usr/share/grc/conf.curl
ENTRYPOINT ["/usr/bin/zsh"]
