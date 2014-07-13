#include <stdio.h>
#include "cblas.h"

#define M 2
#define K 3
#define N 4

int main()
{
  enum CBLAS_ORDER order = CblasRowMajor;
  enum CBLAS_TRANSPOSE trans_a = CblasNoTrans;
  enum CBLAS_TRANSPOSE trans_b = CblasNoTrans;

  float alpha = 0.5;
  float A[M*K] = {0,2,4,6,8,10};
  int lda = K;

  float B[K*N] = {0,1,2,3,4,5,6,7,8,9,10,11};
  int ldb = N;

  float beta = 2.;
  float C[M*N] = {0,0.5,1,1.5,2,2.5,3,3.5};
  int ldc = N;

  cblas_sgemm(order, trans_a, trans_b, M, N, K, alpha, A, lda, 
              B, ldb, beta, C, ldc);

  printf("%f %f %f %f\n",C[0],C[1],C[2],C[3]);
  printf("%f %f %f %f\n",C[4],C[5],C[6],C[7]);

  return 0;
}
