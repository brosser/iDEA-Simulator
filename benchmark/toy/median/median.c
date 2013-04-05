#include <stdio.h>
#define IMAGE_XSIZE 15//24
#define IMAGE_YSIZE 15//24
#define FILTERSIZE 3

const int output[IMAGE_XSIZE][IMAGE_YSIZE] = {      {189, 213, 29, 97, 16, 2, 1, 32, 16, 2, 1, 32, 248, 0, 0}, 
                                                    {32, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 53, 0},
                                                    {54, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 0, 0}, 
                                                    {0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 0, 0},
                                        /*4*/       {0, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 171, 40},
                                        /*5*/       {0, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 224, 221},
                                                    {35, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 0, 200},
                                        /*7*/       {171, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 31, 97},
                                        /*8*/       {224, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 172, 40},
                                                    {0, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 0, 0},
                                        /*10*/      {0, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 97, 224},
                                                    {215, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 40, 0},
                                        /*12*/      {85, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 102, 19},
                                                    {97, 224, 215, 35, 97, 2, 0, 0, 0, 1, 0, 0, 0, 224, 110},
                                                    {19, 97, 0, 208, 40, 0, 224, 114, 24, 97, 0, 0, 0, 0, 240}}; 

const int image_i[IMAGE_XSIZE][IMAGE_YSIZE] = {         {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14}, // 1
                                                        {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14},
                                                        {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14},
                                                        {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14},
                                                        {21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35}, // 5
                                                        {21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35},
                                                        {21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35},
                                                        {21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35},
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45},
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45}, // 10
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45},
                                                        {31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 43, 44, 45},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55},
                                                        {41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55}}; // 24

int main () {
   
    int main_result = 0; 

    int i, j, x, y, i_med, j_med, n;
    int min, temp;
    int temparray[FILTERSIZE];
    int image_o[IMAGE_XSIZE][IMAGE_YSIZE];
    

    for (i = 0; i < IMAGE_XSIZE-FILTERSIZE; i++){       // traverse image from origin till end of image minus the filter width 
        for (j = 0; j < IMAGE_YSIZE-FILTERSIZE; j++) {
            n = 0;
            for (x = 0; x < FILTERSIZE; x++) {          // at each point of the pixel, store a row of x values into an array
                for (y = 0; y < FILTERSIZE; y++) {
                    temparray[n] = image_i[i+x][j+y]; 
                    n++;
                }
            }

            /*find median -- kernel to process the array*/
            for (i_med = 0; i_med < 4; i_med++) {
                min = temparray[i_med];
                for (j_med = i_med + 1; j_med <= 8; j_med ++) {
                    if (temparray[j_med] < min)
                    {
                        temp = min;
                        min = temparray[j_med];
                        temparray[j_med] = temp;
                    }
                }
                temparray[i_med] = min;
            };
            min = temparray[4];
            for (j_med = 5; j_med <= 8; j_med ++) {
                if (temparray[j_med] < min) {
                    min = temparray[j_med];
                }
            }
            
            /*kernel to return the median filter to the output image*/
            image_o[i+1][j+1] = min;
        }
    }

    for ( x = 0; x < IMAGE_YSIZE; x++ ) {
        for ( y = 0; y < IMAGE_XSIZE; y++) {
            main_result += (output[x][y] != image_o[x][y]);

            //if (output[x][y] != image_o[x][y]) {
                //printf("image_o[%d][%d]: %d \n", x, y, image_o[x][y]);
            //}
            

            //printf("image_o[%d][%d]: %d \n", x, y, image_o[x][y]);
        }
    }

    //printf ("%d\n", main_result);

    return main_result;
}
