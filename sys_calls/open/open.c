#include<stdio.h>
#include<unistd.h>
#include<sys/types.h>
#include<sys/stat.h>
#include<fcntl.h>

int main()
{
    int n, fd;
    char buff[50];

    fd = open("test.txt", O_RDONLY);  //opens file in read mode and the file descriptor saved in fd
    printf("the file desctriptor of the file is: %d\n", fd);  //the value of the file descriptor is printed
    n = read(fd, buff, 10);  //read 10 characters from the file pointed to by file descriptor fd and save them in buffer (buff)
    write(1, buff, n);  //write on the screen from the buffer
    write(1, "\n", 1);  //write a newline character
}
