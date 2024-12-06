//Write a program to calculate factorial of a number using recursion.
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
#include<stdio.h>
int main()
{
    int n;
    scanf("%d",&n);
    int fact=1;
    for(int i=1;i<=n;i++)
    {
        fact=fact*i;

    }
    printf("%d",fact);
    return 0;
}