#!/bin/bash

python3 -m pip install --user pipx
python3 -m pipx ensurepath

pipx install --user pylint
pipx install --user yapf
pipx install --user autoflake
pipx install --user isort
