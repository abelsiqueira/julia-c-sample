#include "dot.h"

double dot (unsigned int n, double *x, double *y) {
  unsigned int i;
  double s = 0.0;
  for (i = 0; i < n; i++)
    s += x[i]*y[i];
  return s;
}
