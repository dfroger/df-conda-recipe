#include <stdlib.h>
#include <stdio.h>
#include "cblas.h"
#include "clapack.h"

#define M 4
#define N 4

int main()
{
    float A[M*N] = {1,  2,   3,   4,
                    1,  7,   9,  11,
                    2, 19,  32,  38,
                    4, 33,  90, 115};
    int lda = N;
    int* ipiv = (int*) malloc(M*sizeof(int));
    
    int err = clapack_sgetrf(CblasRowMajor, M, N, A, lda, ipiv);

    printf("%f %f %f %f\n",A[ 0],A[ 1],A[ 2],A[ 3]);
    printf("%f %f %f %f\n",A[ 4],A[ 5],A[ 6],A[ 7]);
    printf("%f %f %f %f\n",A[ 8],A[ 9],A[10],A[11]);
    printf("%f %f %f %f\n",A[12],A[13],A[14],A[15]);
}
