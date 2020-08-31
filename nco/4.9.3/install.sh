#!/bin/bash

wget https://github.com/nco/nco/archive/4.9.3.tar.gz
tar -xvf 4.9.3.tar.gz
cd nco-4.9.3
module load netcdf/4.6.0_gcc-5.4.0 gsl/2.4_gcc-5.4.0 udunits/2.2.26_gcc-5.4.0
mkdir -p /share/apps/nco/4.9.3/gcc
./configure --prefix=/share/apps/nco/4.9.3/gcc/5.4.0
make
make install
