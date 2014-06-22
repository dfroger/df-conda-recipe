mkdir build
cd build
cmake \
    -DCMAKE_INSTALL_PREFIX=$PREFIX \
    -DBoost_INCLUDE_DIR=$PREFIX/boost_1_55_0 \
    -DBUILD_SHARED_LIBS=ON \
    ..
make
make install
