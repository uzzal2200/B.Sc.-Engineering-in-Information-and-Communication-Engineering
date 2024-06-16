#include<stdio.h>
int main()
{
    int i=0;
    start:
    printf("%d ",i);
    i++;

    if(i<5)
    goto start; 
    return 0;
}