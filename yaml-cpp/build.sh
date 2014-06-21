mkdir build
cd build
cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DSHARED_LIBS=ON \
    ..
make
make install
