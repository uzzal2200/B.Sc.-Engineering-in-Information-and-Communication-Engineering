#include<stdio.h>
int main()
{
    int n=2;
    char str[200];
    FILE* fptr=fopen("simple.text","w");
    if(fptr==NULL)
    {
        printf("could not open file");
        return 0;
    } 
   for(int i=0;i<n;i++)
   {
    // puts("Enter a name");
    gets(str);
    fprintf(fptr,"%d.%s\n",i,str);
   }
   fclose(fptr);
   
    return 0;
}