#/bin/bash

wget https://ftp.gnu.org/gnu/glibc/glibc-2.17.tar.gz
tar -xvf glibc-2.17.tar.gz
cd glibc-2.17
mkdir build
cd build
mkdir /share/apps/glibc/2.17
../configure --prefix=/share/apps/glibc/2.17
make
make install
