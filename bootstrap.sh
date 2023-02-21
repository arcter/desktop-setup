#!/bin/env bash


# Install dependencies to Ansible
apt install python3 python3-pip python3-virtualenv -y

# Create virtual env
python3 -m venv .env

# Install ansible
source .env/bin/activate
pip3 install ansible ansible-lint
ansible-galaxy install --force -r requirements.galaxy.yaml

# Run playbook
ansible-playbook main.yaml

# Clean up
#rm -rf Downloads

