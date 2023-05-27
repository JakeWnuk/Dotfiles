# Base image
FROM ubuntu:devel

# Load configuration files and installers
ADD ./config/go-tools.json /tmp/
ADD ./installers/ ./installers/
ADD ./dotfiles /root/dotfiles/

# Run installers
RUN bash ./installers/install-updates.sh && \
    bash ./installers/install-dotfiles.sh && \
    bash ./installers/install-shell.sh && \
    bash ./installers/install-grc.sh && \
    bash ./installers/install-go.sh && \
    bash ./installers/install-go-tools.sh && \
    bash ./installers/install-vim.sh

# Set environment
WORKDIR /data
ADD ./config/conf.curl /usr/share/grc/conf.curl
ENTRYPOINT ["/usr/bin/zsh"]
