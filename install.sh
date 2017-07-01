#!/bin/sh
sudo apt-get update -y 
sudo apt-get install git screen automake build-essential libcurl4-openssl-dev libgmp-dev autotools-dev -y 
git clone https://github.com/noncepool/m7magi-cpuminer-v2 
cd m7magi-cpuminer-v2
sudo ./autogen.sh
CFLAGS="-O3" ./configure
make
sudo cp minerd /usr/local/bin
sudo ~/mine.sh