#include <stdio.h>

#define N 5

int main(int argc, char **argv)
{
  float alpha = 0.5;

  float x[N]  = {0,2,4,6,8};
  int incx = 1;

  float y[N] = {0,100,200,300,400};
  float incy = 1;

  cblas_saxpy(N, alpha, x, incx, y, incy);

  printf("%f %f %f %f %f\n",y[0],y[1],y[2],y[3],y[4]);

  return 0;
}
