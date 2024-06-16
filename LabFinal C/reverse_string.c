// Write a C program to Reverse a string using recursion.
#include<stdio.h>
#include<string.h>
int main()
{
    char s[100],a[100];
    scanf("%s",s);
    strrev(s);
    strcpy(a,s);
    int n=strcmp(a,s);
    if(n == 0)
    {
        printf("Paildrom");
    }
    else 
    {
        printf("NOt");
    }
   
    return 0;
}