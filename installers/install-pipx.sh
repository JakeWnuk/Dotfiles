#!/bin/bash

python3 -m pip install --user pipx --break-system-packages
python3 -m pipx ensurepath

pipx install pylint
pipx install yapf
pipx install autoflake
pipx install isort
