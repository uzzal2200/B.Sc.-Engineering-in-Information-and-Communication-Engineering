#include<stdio.h>
int main()
{
     int n;
     scanf("%d",&n);
     int temp=n;
     int sum=0;
     while(n>0)
     {
     int r=n%10;
      sum=(sum*10)+r;
      n=n/10;
     }
    if(sum==temp)
    {
        printf("paildrom\n");
    }
    else
    {
        printf("Not paildrom");
    }
    return 0;
}