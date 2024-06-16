// Write a program to print whether a given number is even or odd.
#include<stdio.h>
int main()
{
    int a,b;
    scanf("%d%d",&a,&b);
    if(a%2 == 0)
    {
        printf(" The number is even\n");
    } 
    else
   { 
    printf("The number is odd\n");
   }
   if(b%2 == 0)
   {
    printf("The number is even\n");

   }
   else
   {
      printf("The number is odd\n");
   }
    
    return 0;
}