cp $RECIPE_DIR/make.inc .
CONDADIR=$PREFIX make
cp \
  SRC/superlu_ddefs.h \
  SRC/superlu_defs.h \
  SRC/superlu_enum_consts.h \
  SRC/superlu_zdefs.h \
  $PREFIX/include

