#!/usr/bin/env bash
#make
mnt_dir=/temp/terark

sudo rm -rf build
mkdir build
cd build
sudo cmake ..
sudo make
cd ../

#run
sudo fusermount -u $mnt_dir
sudo mkdir /temp/terark
sudo ./build/terark_fuse -d -s -f $mnt_dir -terark_core=./terark-fuse-core
