# CONDAEXE is for example: /path/to/miniconda/bin/conda
# CONDABIN is for example: /path/to/miniconda/bin
# CONDADIR is for example: /path/to/miniconda

CONDAEXE = $(shell which conda)
CONDABIN = $(dir $(CONDAEXE))
CONDADIR = $(realpath $(CONDABIN)/..)

hello: hello.o
	mpif90 -o $@ $< -L$(CONDADIR)/lib \
	-lblacsF77init_MPI-linux-64-0 \
	-lblacs_MPI-linux-64-0 \
	-lblacsF77init_MPI-linux-64-0

# -lblacsCinit_MPI-linux-64-0

hello.o: hello.f90
	mpif90 -fPIC -c $< 

test:
	mpirun -n 4 ./hello

clean:
	rm -f *.o hello
