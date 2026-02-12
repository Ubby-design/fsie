#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install -y vim git curl ufw net-tools
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw enable
