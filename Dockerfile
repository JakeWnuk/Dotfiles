# Base image
FROM ubuntu:mantic

# Load configuration files and installers
ADD ./config/ /tmp/config/
ADD ./installers/ /root/installers/
ADD ./dotfiles /root/dotfiles/
ADD ./ansible/ /tmp/ansible/
ADD ./main.yml /tmp/main.yml

# Install Pip to install Ansible
RUN bash /root/installers/install-updates.sh && \
    bash /root/installers/install-pip.sh 

# Copy Ansible script to Docker image
COPY main.yml /root/main.yml

# Run Ansible script
ENV DEBIAN_FRONTEND noninteractive
RUN /root/.local/bin/ansible-playbook -vvv /tmp/main.yml

# Set environment
WORKDIR /data
ENTRYPOINT ["/usr/bin/zsh"]

