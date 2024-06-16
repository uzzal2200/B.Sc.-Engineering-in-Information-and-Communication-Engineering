//Write a program to print positive integers from 1 to N.
#include<stdio.h>
int main()
{
    int n;
    printf("Enter the number\n");
    scanf("%d",&n); 
    for(int i=1;i<=n;i++)
    {
        printf("%d ",i);
    }
    return 0;
}