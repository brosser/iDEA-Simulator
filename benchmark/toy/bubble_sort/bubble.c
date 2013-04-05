/* Bubble sort code */
 
#include <stdio.h>

const int output[5] = {2, 4, 8, 9, 15};

int main()
{
  int n = 5;
  int i, c, d, sum, swap;
  int main_result = 0;
  int array[5] = {9, 8, 15, 4, 2};

    for (c = 0 ; c < ( n - 1 ); c++)
      {
        for (d = 0 ; d < n - c - 1; d++)
        {
          if (array[d] > array[d+1]) /* For decreasing order use < */
          {
            swap       = array[d];
            array[d]   = array[d+1];
            array[d+1] = swap;
          }
        }
      }

    for (i = 0; i < 5; i++){
        main_result += (output[i] != array[i]);
    }
        //printf ("%d\n", main_result);

  return main_result;
}
