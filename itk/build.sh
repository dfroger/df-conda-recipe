mkdir build
cd build

cmake -C $RECIPE_DIR/config.cmake ..
make -j$CPU_COUNT
make install
