#include <stdio.h>
#define LOOP_COUNT 10000000
#define VSIZE 200
float v1[VSIZE], v2[VSIZE];
float dot_product(float *, float *, int length);
int main(int argc, char *argv[]) {
  float result;
  int i;

  /* initialize the two vectors */
  for (i = 0; i < VSIZE; i++) {
    v1[i] = (float) 5;
    v2[i] = (float) 3;
  }

  /* call the dot_product some number of times for time purposes */
  for (i = 0; i < LOOP_COUNT; i++)
     result = dot_product(v1, v2, VSIZE);
  printf ("result is %f\n", result);
  return 0;
}
