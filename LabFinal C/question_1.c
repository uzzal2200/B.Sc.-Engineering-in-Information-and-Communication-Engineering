#include<stdio.h>
#include<math.h>
int main()
{
    int binary;
    scanf("%d",&binary);
    int i,dec=0,inc=0;
   int temp=binary;
   while (temp != 0)
   {
    i=temp%10;
    dec=dec+(i*pow(2,inc));
    temp=temp/10;
    inc++;
   }
     printf("%d",dec);
    return 0;
}