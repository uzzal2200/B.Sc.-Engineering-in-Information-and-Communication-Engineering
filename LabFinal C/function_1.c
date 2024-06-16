
#include<stdio.h>
int factorial(int n)
{
    if(n==1)
    {
        return 1;
    }
    else
    {
        int fact=n*factorial(n-1);
        return (fact) ;
    }
}
int main()
{
     int n;
     scanf("%d",&n);
    factorial(n);
    int result=factorial(n);
    printf("%d",result);
    return 0;
}