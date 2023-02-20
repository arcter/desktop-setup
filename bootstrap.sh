#!/bin/env bash


# Install dependencies to Ansible
apt install python pip3 python3-virtualenv

# Create virtual env
python3 -m venv /.env

# Install ansible
source .env/bin/activate
pip3 install ansible ansible-lint
ansible-galaxy install --force -r requirements.galaxy.yaml

# Run playbook
ansible-playbook -i inventory.yaml

# Clean up
rm -rf Downloads

