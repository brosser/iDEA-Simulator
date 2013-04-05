#include <stdio.h>

const int number = 3;
const int output = 6;

int calc_factorial (int n)
{

    int i;
    short factorial_number = 1;

    for (i=1; i <= n; ++i){
        factorial_number = factorial_number * i;
    }

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
