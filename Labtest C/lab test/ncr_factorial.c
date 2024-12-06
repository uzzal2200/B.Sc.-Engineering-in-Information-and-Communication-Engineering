// Write a C program to find the value of nCr using function for the given value of n & r.
#include<stdio.h>
int factorial(int n)
{
     int fact=1;
    for(int i=1;i<=n;i++)
    {
        fact=fact*i;
    } 
    return fact;
}
int main()
{
    int n,r;
    scanf("%d%d",&n,&r);
     factorial(n);
    int ans=factorial(n)/(factorial(n-r)*factorial(r));
    printf("%dc%d:%d",n,r,ans);
    return 0;
}