#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "dot.h"

int main () {
  unsigned int n = 100, i;
  double *x, *y, s;

  srand(time(0));
  x = (double *) malloc(sizeof(double)*n);
  y = (double *) malloc(sizeof(double)*n);
  for (i = 0; i < n; i++) {
    x[i] = 2.0*(rand()%1000)/1000.0-1.0;
    y[i] = 2.0*(rand()%1000)/1000.0-1.0;
  }

  s = dot(n, x, y);
  printf("<x,y> = %lf\n", s);

  return 0;
}
