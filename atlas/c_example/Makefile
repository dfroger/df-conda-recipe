# CONDAEXE: /path/to/miniconda/bin/conda
# CONDABIN: /path/to/miniconda/bin
# CONDADIR: /path/to/miniconda

CONDAEXE = $(shell which conda)
CONDABIN = $(dir $(CONDAEXE))
CONDADIR = $(realpath $(CONDABIN)/..)

help:
	@echo "Use one of the following targets: make <target>:"
	@echo "    l1 : build blas level 1 example"
	@echo "    l2 : build blas level 2 example"
	@echo "    l3 : build blas level 3 example"

l1: example_blas_level_1
l2: example_blas_level_2
l3: example_blas_level_3

example_blas_level_%: example_blas_level_%.o
	gcc -o $@ $^ \
			-L$(CONDADIR)/lib \
			-lcblas -lf77blas -latlas

%.o: %.c
	gcc -I$(CONDADIR)/include  \
			-c $<

clean:
	rm -f *.o example_blas_level_1 example_blas_level_2 example_blas_level_3
