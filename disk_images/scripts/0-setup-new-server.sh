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

git clone https://github.com/pongstorn-AMD/pickle-resources.git

