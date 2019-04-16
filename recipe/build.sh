#!/bin/sh
set -x
mkdir build && cd build
cmake \
  -DCMAKE_INSTALL_PREFIX="${PREFIX}" \
  -DCMAKE_BUILD_TYPE=Release \
  -DTILEDB_WERROR=OFF \
  -DTILEDB_TESTS=OFF \
  -DTILEDB_INSTALL_LIBDIR=lib \
  -DTILEDB_HDFS=ON \
  -DTILEDB_S3=ON ..
make -j ${CPU_COUNT} VERBOSE=1
make -C tiledb install VERBOSE=1
