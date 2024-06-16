// Write a C program to compute the sum of all elements stored in an array using pointer
#include<stdio.h>
int main()
{
     int n;
     scanf("%d",&n);
     int a[n];
     for(int i=0;i<n;i++)
     {
        scanf("%d",&a[i]);
     } 
     int *p;
     p=&a[0];
     int sum=0;
     for(int i=0;i<n;i++)
     {
        sum=sum+ *p;
        p++;
     }
     printf("%d",sum);

    return 0;
}