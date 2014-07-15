cp $RECIPE_DIR/Bmake.MPI-LINUX Bmake.inc

CONDADIR=$PREFIX BLACS_DIR=$PWD make mpi

cp LIB/lib*.a $PREFIX/lib
