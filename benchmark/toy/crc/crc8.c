//http://www.pololu.com/docs/0J44/6.7.6
//http://ghsi.de/CRC/index.php?Polynom=10010001&Message=01+83

#include <stdio.h>

const unsigned int CRC7_POLY = 0x91;
 
int main ()
{
    unsigned int length = 2;
    unsigned int i, j;
    unsigned int message[3] = {0x83, 0x01, 0x00};
    unsigned int crc = 0x0;
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 8; j++)
            {
                if (crc & 1)
                    crc ^= CRC7_POLY;
                crc >>= 1;
            }
    }
    printf("%d %x h\n", i, crc);

return 0;
}

