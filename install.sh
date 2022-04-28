#!/bin/bash

apt-get remove docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update
apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin 
apt install -y mc ca-certificates     curl     gnupg     lsb-release htop net-tools atop nload iftop

crontab /root/crontab.txt

ufw reset
ufw allow from 33.33.33.33 to any port 22
ufw enable

reboot -d
