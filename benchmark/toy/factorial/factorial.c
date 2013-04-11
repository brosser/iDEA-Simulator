#include <stdio.h>

const int number = 8; // number of iterations
const int output = 40320;

int calc_factorial (int n)
{

    int i;
    int factorial_number = 1;

    for (i=1; i <= n; ++i){
        factorial_number = factorial_number * i;
    }
    //printf("%d\n", factorial_number);

    return(factorial_number);
}

int main()
{
    int main_result = 0;
    int c;

    c = calc_factorial (number);

    main_result += (output != c);
    
    //printf ("%d\n", main_result);

    return main_result;
}
