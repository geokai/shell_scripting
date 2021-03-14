#include<unistd.h>
#include<stdio.h>

int main()
{
    int count;
    count = write(3, "hello\n", 6);
    printf("Total bytes written: %d\n", count);
}
