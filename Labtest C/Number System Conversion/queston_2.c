#include<stdio.h>
int main()
{
    int dec;
    scanf("%d",&dec);
    int temp=dec;
    int i,j=1,binary=0;
    while(temp != 0)
    {
        i=temp%2;
        binary=binary+(i*j);
        temp=temp/2;
        j=j*10;
    } 
    printf("%d",binary);
    return 0;
}