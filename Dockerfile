# Base image
FROM ubuntu:mantic

# Load configuration files and installers
ADD ./config/ /tmp/config/
ADD ./installers/ /tmp/installers/
ADD ./dotfiles /root/dotfiles/
ADD ./ansible/ /tmp/ansible/
ADD ./main.yml /tmp/main.yml

# Install Pipx to install Ansible
RUN bash /tmp/installers/install-updates.sh && \
    bash /tmp/installers/install-pipx.sh 

# Copy Ansible script to Docker image
COPY main.yml /root/main.yml

# Run Ansible script
ENV DEBIAN_FRONTEND noninteractive
RUN /root/.local/bin/ansible-playbook -vvv /tmp/main.yml

# Set environment
WORKDIR /data
ENTRYPOINT ["/usr/bin/zsh"]

