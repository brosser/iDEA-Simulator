/* Bubble sort code */
// iteration 50
 
#include <stdio.h>

const unsigned int output[50] = { 0, 0, 1, 1, 2, 2, 3, 4, 5, 6, 
                        8, 8, 8, 9, 9, 11, 11, 12, 15, 15, 
                        15, 17, 17, 18, 19, 20, 21, 21, 21, 21, 
                        22, 22, 22, 24, 24, 25, 25, 31, 32, 35, 
                        36, 38, 41, 45, 47, 50, 51, 54, 55, 65}; 
int main()
{
  unsigned int n = 50;
  unsigned int i, c, d, sum, swap;
  unsigned int main_result = 0;
  unsigned int array[50] = {36, 38, 41, 24, 47, 50, 51, 32, 15, 65,
                    15, 21, 17, 18, 19, 20, 17, 21, 21, 21,
                    22, 54, 22, 45, 24, 25, 25, 31, 22, 35,
                    2, 0, 1, 1, 0, 2, 3, 4, 5, 6,
                    8, 8, 8, 9, 9, 11, 55, 12, 15, 11};

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

    for (i = 0; i < 50; i++){
        main_result += (output[i] != array[i]);
    }
        //printf ("%d\n", main_result);

  return main_result;
}
