#!/bin/bash
# This installer will install needed Python packages using pip3

# Check if --break-system-packages option is available
if python3 -m pip install --help | grep -q -- '--break-system-packages'; then
    python3 -m pip install --user --break-system-packages \
        pylint \
        jedi \
        yapf \
        autoflake \
        isort \
        ansible-core
else
    python3 -m pip install --user \
        pylint \
        jedi \
        yapf \
        autoflake \
        isort \
        ansible-core
fi

# Ensure the installed packages are in the PATH
source ~/.bashrc

