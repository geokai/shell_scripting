#include<unistd.h>

int main()
{
    int nread;
    char buff[20];
    nread = read(0, buff, 10);  //read 10 bytes from standard input device (kb), store in buffer (buff)
    write(1, buff, nread); // print 10 bytes from the buffer on to the screen
}
