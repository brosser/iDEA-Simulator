// Website origin: http://www.pololu.com/docs/0J44/6.7.6
// CRC calculator: http://ghsi.de/CRC/index.php?Polynom=10010001&Message=01+83
// Conversion algorithms: http://archive.online-convert.com/

#include <stdio.h>
 
int main ()
{
	int CRC7_POLY = 0x91;
    int length = 50;
    int i, j;
    /*
    int message[50] = {
    0x83, 0x01, 0x00, 0x25, 0x23, 0xff, 0x01, 0xa0, 0xca, 0x20,
	0x28, 0x15, 0x97, 0x31, 0xaf, 0x99, 0x1f, 0x42, 0x53, 0x23,
	0x15, 0x00, 0x17, 0x45, 0x2f, 0x65, 0x42, 0x12, 0x93, 0xa4,
	0x52, 0x23, 0x90, 0xa6, 0x1f, 0x66, 0xbc, 0x04, 0x33, 0xd6,
	0xa4, 0x42, 0x15, 0x05, 0x3f, 0xd0, 0x9c, 0x02, 0x43, 0x9c};
	*/
    length = 1;
    int message[1] = {0x05};

    int crc = 0x0;
 
    for (i = 0; i < length; i++)
    {
        crc ^= message[i];
            for (j = 0; j < 32; j++)
            {
                if (crc & 1)
                    crc ^= CRC7_POLY;
                crc >>= 1;
            }
    }
    
	printf("%d %d h\n", i, crc);
    printf("%d \n", sizeof(CRC7_POLY));
	return 0;
}
