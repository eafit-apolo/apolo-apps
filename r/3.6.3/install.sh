#!/bin/bash

curl -O https://cran.rstudio.com/src/base/R-3/R-3.6.3.tar.gz
tar -xzvf R-3.6.3.tar.gz
cd R-3.6.3
module load lapack/3.9.0 gcc/7.4.0 zlib/1.2.11_gcc-7.4.0 bzip2/1.0.6 pcre/8.39 xz/5.2.2 curl/7.51.0 java/jdk-1.8.0_112
export LDFLAGS="-L/share/apps/bzip2/1.0.6/lib -L/share/apps/xz/5.2.2/lib -L/share/apps/zlib/1.2.11/gcc/7.4.0/lib -L/share/apps/xz/5.2.2/lib -L/share/apps/pcre/8.39/lib -L/share/apps/curl/7.51.0/lib"
export CFLAGS="-fPIC -fopenmp -O3 -I/share/apps/bzip2/1.0.6/include -I/share/apps/xz/5.2.2/include -I/share/apps/zlib/1.2.11/gcc/7.4.0/include -I/share/apps/xz/5.2.2/include -I/share/apps/pcre/8.39/include -I/share/apps/curl/7.51.0/include"
export CXXFLAGS="-fPIC -fopenmp -O3 -I/share/apps/bzip2/1.0.6/include -I/share/apps/xz/5.2.2/include -I/share/apps/zlib/1.2.11/gcc/7.4.0/include -I/share/apps/xz/5.2.2/include -I/share/apps/pcre/8.39/include -I/share/apps/curl/7.51.0/include"
export FFLAGS="-fPIC -fopenmp -O3"
export FCFLAGS="-fPIC -fopenmp -O3"
mkdir -p /share/apps/r/3.6.3/gcc/7.4.0
CXX98="gcc -std=c++98" CXX11="gcc -std=c++11" CXX14="gcc -std=c++14" CXX17="gcc -std=c++17" ./configure --prefix=/share/apps/r/3.6.3/gcc/7.4.0 --enable-memory-profiling --enable-R-shlib --with-blas --with-lapack
make
make install
