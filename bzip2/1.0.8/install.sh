#!/bin/bash

wget https://www.sourceware.org/pub/bzip2/bzip2-latest.tar.gz
tar -xvf bzip2-latest.tar.gz
cd bzip2-1.0.8/
mkdir -p /share/apps/bzip2/1.0.8
make install PREFIX=/share/apps/bzip2/1.0.8
