#!/bin/bash

wget http://www.netlib.org/lapack/lapack-3.9.0.tgz
tar -xvf lapack-3.9.0.tgz
cd lapack-3.9.0
mkdir build
module load cmake/3.7.1
cmake .. -DBUILD_SHARED_LIBS=ON -DCMAKE_INSTALL_PREFIX=/share/apps/lapack/3.9.0
make
make install
