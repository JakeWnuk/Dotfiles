#!/bin/bash
# This installer will install Pipx and needed Python packages

# Check if --break-system-packages option is available
if python3 -m pip install --help | grep -q -- '--break-system-packages'; then
    python3 -m pip install --user --break-system-packages pipx

    # Install additional dependencies that can not be used with Pipx
    python3 -m pip install --break-system-packages pylint jedi
else
    python3 -m pip install --user pipx
    
    # Install additional dependencies that can not be used with Pipx
    python3 -m pip install pylint jedi
fi

# Finish setting up Pipx
python3 -m pipx ensurepath
source ~/.bashrc

# Install other dependencies
~/.local/bin/pipx install yapf
~/.local/bin/pipx install autoflake
~/.local/bin/pipx install isort
~/.local/bin/pipx install ansible-core
