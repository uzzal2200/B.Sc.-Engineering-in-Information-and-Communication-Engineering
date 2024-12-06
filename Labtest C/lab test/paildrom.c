// //Write a C program to check if given number is palindrome or not.
// #include<stdio.h>
// #include<string.h>
// int main()
// {
//      char s[100];
//      scanf("%s",s);
//      int i=0,j=strlen(s)-1;
//      int flag=1;
//      while(i<j)
//      {
//         if(s[i] != s[j])
//         {
//             flag = 0;
//            break;
//         }
//         i++;
//         j--;
//      }
//      if(flag == 1)
//      {
//         printf("Palidrom\n");
//      }
//      else
//      {
//         printf(" Not Palidrom\n");
//      }
//      printf("\n");
//     return 0;
// }
//Write a C program to check if given number is palindrome or not.
#include<stdio.h>
#include<string.h>

int main()
{
    char s[100],a[100];
    scanf("%s",s);
   strcpy(a,s);
   int i=0,j=strlen(a)-1;
   while(i<j)
   {
    int temp=a[i];
    a[i]=a[j];
    a[j]=temp;
    i++;
    j--;
   }
   if(strcmp(s,a) == 0)
   {
    printf("Palidrom\n");

   }
   else
   {
    printf("Not paildrom\n");
   }

    return 0;
}
