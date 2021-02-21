#!/bin/bash

sudo snap install docker
sudo apt-get install curl wireshark net-tools make python3-bs4 sshpass iputils-arping -y
sudo apt-get install gnupg-agent software-properties-common -y

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 7EA0A9C3F273FCD8
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io



sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo groupadd --system docker
sudo adduser $USER docker
newgrp docker

