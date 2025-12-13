#!/bin/bash

version=6.8
rm -rf linux-${version}.*
rm -rf linux_src
wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-${version}.tar.xz
tar xf linux-${version}.tar.xz
mv linux-${version} linux_src
cd linux_src
wget https://raw.githubusercontent.com/gem5/gem5-resources/f32e4ccd6cfc197699bc58f2f64b139ad95cc830/src/linux-kernel/linux-configs/config.arm64.5.15.36
mv config.arm64.5.15.36 .config
yes "" | make oldconfig
make -j$(nproc)






