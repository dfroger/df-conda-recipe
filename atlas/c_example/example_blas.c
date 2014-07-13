#include <stdio.h>
#include "cblas.h"

#define N 4

int main()
{
  // Level 1
  float alpha = 0.5;

  float x[N]  = {0,2,4,6};
  int incx = 1;

  float y[N] = {0,10,20,30};
  float incy = 1;

  cblas_saxpy(N, alpha, x, incx, y, incy);

  printf("%f %f %f %f\n",y[0],y[1],y[2],y[3]);

  // Level 2
  enum CBLAS_ORDER order = CblasRowMajor;
  enum CBLAS_UPLO uplo = CblasUpper;
  enum CBLAS_TRANSPOSE trans = CblasNoTrans;
  enum CBLAS_DIAG diag = CblasNonUnit;
  float A[N*N] = { 1,  2,  3,  4,
                   0,  5,  6,  7,
                   0,  0,  8,  9,
                   0,  0,  0, 10};
  int lda = N;
  float b[N] = {20,38,43,30};
  int incb = 1;
  cblas_strsv(order,uplo,trans,diag,N,A,lda,b,incb);
  printf("%f %f %f %f\n",b[0],b[1],b[2],b[3]);

  return 0;
}
