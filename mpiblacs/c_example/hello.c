#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "mpi.h"

int main(int argc, char** argv) 
{

extern int BLACS_PNUM;

int cntx, mpi_rank, mpi_size, nprow, npcol, myprow, mypcol;
int icaller, irow, icol, hisrow, hiscol;

MPI_Init(&argc, &argv);

Cblacs_pinfo(&mpi_rank, &mpi_size);

// Create a square grid process.
nprow = (int) sqrt((float) mpi_size);
npcol = mpi_size / nprow;

// Get default context.
Cblacs_get(0, 0, &cntx);

// Create grid.
Cblacs_gridinit(&cntx, "R", nprow, npcol);
Cblacs_gridinfo(cntx, &nprow, &npcol, &myprow, &mypcol);

if ((myprow==0) && (mypcol==0)) {
    printf("nprow,npcol: %d %d\n", nprow, npcol);
}

if ( (nprow == -1) || (npcol == -1) ) {
    Cblacs_exit(0);
    return 0;
}

// Get process ID.
icaller = Cblacs_pnum(cntx, myprow, mypcol);

printf("icaller, myprow, mypcol: %d %d %d\n", icaller,myprow,mypcol);

// Process (0,0) receive "icaller" from all nodes.
if ( (myprow == 0) && (mypcol == 0) ) {

    for (irow = 0 ; irow < nprow ; irow++) {
    for (icol = 0 ; icol < npcol ; icol++) {
        if ( (irow != 0) || (icol != 0) ) {
            Cigerv2d(cntx, 1, 1, &icaller, 1, irow, icol) ;
            printf("Received: %d\n", icaller);
        }

        // Make sure icaller is where we think in process grid.
        Cblacs_pcoord(cntx, icaller, &hisrow, &hiscol);
        if ( (hisrow != irow) || (hiscol != icol) ) {
            printf("Error with icaller.\n");
            exit(0);
        }
    }}

} else {
    Cigesd2d(cntx, 1, 1, &icaller, 1, 0, 0);
    printf("Sent %d\n", icaller);
}

Cblacs_exit(0);
}
