//Write a C program to find maximum and minimum between two numbers using function

#include<stdio.h>
void max_min(int n,int a)
{
 if(n>a)
 {
    printf("maximum");
 }
 else
 {
    printf("minmum");
 }
   

    
}
int main()
{
     int n,a;
    scanf("%d%d",&n,&a);
    max_min(n,a);
    return 0;
}