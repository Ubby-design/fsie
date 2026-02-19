#!/bin/bash
# Add users
sudo adduser devops3 --gecos "" --disabled-password
sudo adduser fsieadmin --gecos "" --disabled-password

# Add groups
sudo groupadd depl
sudo groupadd admins

# Assign users to groups
sudo usermod -aG depl devops3
sudo usermod -aG admins fsieadmin

# Directory setup
sudo mkdir -p /srv/fsie-project
sudo chown fsieadmin:admins /srv/fsie-project
sudo chmod 770 /srv/fsie-project

# Sudoers setup
echo "fsieadmin ALL=(ALL) NOPASSWD:ALL" | sudo tee -a /etc/sudoers
echo "devops3 ALL=(ALL) ALL" | sudo tee -a /etc/sudoers
