cp $RECIPE_DIR/Makefile.gfortran.PAR Makefile.inc
CONDADIR=$PREFIX make
cp lib/*.a $PREFIX/lib
cp include/*.h $PREFIX/include
