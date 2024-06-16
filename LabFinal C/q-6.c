#include<stdio.h>
int main()
{
    int n;
    scanf("%d",&n);
    long long factorial=1;
    if(n<0)
    {
        printf("negative er kono factorial hoy na");
    } 
    else
    {
     for(int i=1;i<=n;i++)
     {
        factorial=factorial*i;
     }
     printf("%d",factorial);
    }
    return 0;
}