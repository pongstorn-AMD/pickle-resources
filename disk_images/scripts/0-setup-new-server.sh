#!/bin/bash

sudo apt-get update
sudo apt install -y qemu-utils # for qemu-img
sudo apt install -y cloud-image-utils
sudo apt install -y qemu-system-arm

sudo apt install -y qemu-kvm
sudo apt install -y libvirt-daemon
sudo apt install -y bridge-utils

sudo addgroup libvirtd
sudo adduser ubuntu libvirtd


sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y
sudo systemctl status docker




git clone https://github.com/pongstorn-AMD/pickle-resources.git

