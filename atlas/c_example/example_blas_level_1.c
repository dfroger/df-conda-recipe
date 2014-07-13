#include <stdio.h>
#include "cblas.h"

#define N 4

int main()
{
  float alpha = 0.5;

  float x[N]  = {0,2,4,6};
  int incx = 1;

  float y[N] = {0,10,20,30};
  float incy = 1;

  cblas_saxpy(N, alpha, x, incx, y, incy);

  printf("%f %f %f %f\n",y[0],y[1],y[2],y[3]);

  return 0;
}
