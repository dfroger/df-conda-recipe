# CONDAEXE is for example: /path/to/miniconda/bin/conda
# CONDABIN is for example: /path/to/miniconda/bin
# CONDADIR is for example: /path/to/miniconda

CONDAEXE = $(shell which conda)
CONDABIN = $(dir $(CONDAEXE))
CONDADIR = $(realpath $(CONDABIN)/..)

hello: hello.o
	mpicc -o $@ $< -L$(CONDADIR)/lib \
	-lblacsCinit_MPI-linux-64-0 \
	-lblacs_MPI-linux-64-0 \
	-lblacsCinit_MPI-linux-64-0 \
	-lm


hello.o: hello.c
	mpicc -fPIC -c $< 

test:
	mpirun -n 4 ./hello

clean:
	rm -f *.o hello
