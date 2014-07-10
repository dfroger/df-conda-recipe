cp $RECIPE_DIR/Bmake.MPI-LINUX Bmake.inc
echo "current dir is $PWD"
CONDADIR=$PREFIX BLACS_DIR=$PWD make mpi
