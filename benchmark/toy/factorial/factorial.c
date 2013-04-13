#include <stdio.h>
// iteration 8

const unsigned int number = 8; // number of iterations
const unsigned int output = 40320;

unsigned int calc_factorial (unsigned int n)
{

    unsigned int i;
    unsigned int factorial_number = 1;

    for (i=1; i <= n; ++i){
        factorial_number = factorial_number * i;
    }
    //printf("%d\n", factorial_number);

    return(factorial_number);
}

int main()
{
    unsigned int main_result = 0;
    unsigned int c;

    c = calc_factorial (number);

    main_result += (output != c);
    
    //printf ("%d\n", main_result);

    return main_result;
}
