#include <stdio.h>
// iteration 8

const unsigned int number = 8; // number of iterations
const unsigned int output = 40320;

int main()
{
    unsigned int main_result = 0;
    unsigned int c = 1;
	unsigned int i;

	for (i=1; i <= number; ++i){
        c = c * i;
    }
	
    main_result += (output != c);

    return main_result;
}
