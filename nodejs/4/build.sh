./configure --prefix=$PREFIX
# don't use -j : nodejs requires a lot of memory to compile, it's better to
# run only one g++ at the same time to avoid g++ to fail because it has not
# enough memory. 
make 
make install
