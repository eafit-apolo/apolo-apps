#!/bin/bash

wget https://zlib.net/zlib-1.2.11.tar.gz
tar -xvf zlib-1.2.11.tar.gz
cd zlib-1.2.11
mkdir build
cd build
module load gcc/7.4.0
mkdir -p /share/apps/zlib/1.2.11/gcc/7.4.0
../configure --prefix=/share/apps/zlib/1.2.11/gcc/7.4.0
make
make install
