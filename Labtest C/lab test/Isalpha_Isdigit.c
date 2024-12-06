#include<stdio.h>
#include<ctype.h>
int main()
{
     char character;
     printf("Press any key\n");
     character=getchar();
     if(isalpha(character) > 0)
     {
      printf("The character is a letter\n");

     }
     else if(isdigit(character) > 0)
     {
        printf("The character is a digit\n");
     }
     else
     {
        printf("The character is not alphabet\n");
     }
    return 0;
}