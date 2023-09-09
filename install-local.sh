#!/bin/bash

apt update && apt install -y ansible

ansible-playbook main.yml

