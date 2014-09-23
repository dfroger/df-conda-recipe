cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DCMAKE_CXX_FLAGS_RELWITHDEBINFO="-g -O3" .
make -j8
make install
