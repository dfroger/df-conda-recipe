./configure \
    --prefix=$PREFIX

make -j$CPU_PROC

make install

cd python
pip install .
