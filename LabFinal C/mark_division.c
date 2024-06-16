#include<stdio.h>
int main()
{
    int mark;
    scanf("%d",&mark);
   if(mark >= 60)
   {
    printf("First Division\n");
   }
    else if(mark >= 40)
   {
    printf("Second Division\n");
   }
   else if(mark >= 33)
   {
    printf("Third Division\n");
   }
   else
   {
    printf("Fail\n");
   }
    return 0;
}