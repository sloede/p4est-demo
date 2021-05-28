#!/bin/bash
set -eo pipefail

P4EST_VERSION=2.3.1
P4EST_DIR=p4est-$P4EST_VERSION
TARBALL=$P4EST_DIR.tar.gz

cwd=$(pwd)
rm -rf build
mkdir build
cd build
wget https://p4est.github.io/release/$TARBALL
tar xf $TARBALL
cd $P4EST_DIR
sed -i "1s/^/#define htonl(_val) ( ((uint16_t)(_val) \& 0xff00) >> 8 | ((uint16_t)(_val) \& 0xff) << 8 )\n/" src/p4est_algorithms.c src/p8est_algorithms.c src/p6est.c src/p4est_ghost.c
./configure --prefix=$cwd/p4est --disable-static --without-blas
make -j 2 LDFLAGS="-no-undefined"
make install
