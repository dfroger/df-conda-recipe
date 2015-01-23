mkdir build
cd build

sed s:CONDA_PREFIX:$PREFIX: $RECIPE_DIR/config.cmake > config.cmake

cmake -C config.cmake ..
make -j$CPU_COUNT
make install
