#!/bin/bash

# Check if --break-system-packages option is available
if python3 -m pip install --help | grep -q -- '--break-system-packages'; then
    python3 -m pip install --user pipx --break-system-packages
else
    python3 -m pip install --user pipx
fi

python3 -m pipx ensurepath

source ~/.bashrc

~/.local/bin/pipx install pylint
~/.local/bin/pipx install yapf
~/.local/bin/pipx install autoflake
~/.local/bin/pipx install isort
