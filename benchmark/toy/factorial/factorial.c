#include <stdio.h>
// iteration 8

const unsigned int number = 8; // number of iterations
const unsigned int output[] = {1,1,2,6,24,120,720,5040,40320};

int main()
{
    unsigned int main_result = 0;
    unsigned int c[] = {1,1,1,1,1,1,1,1};
	unsigned int i, j;

	for (j=0; j < number; j++) {
		for (i=0; i < j; i++){
			c[j] = c[j] * (i+1);
		}
	}
	
	for (j=0; j < number; j++) {
		main_result += (output[j] != c[j]);
	}
	
    return main_result;
}
