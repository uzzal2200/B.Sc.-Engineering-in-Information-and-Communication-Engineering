#include<stdio.h>
//#include<string.h>
int main()
{
    // char s[39]="loveyou";
    // int len=strlen(s);
    FILE *fp;
    fp=fopen("pun.txt","r");
    if(fp == 0)
    {
        printf("file is not opend\n");
    } 
    // else
    // {
    //     printf("file is opened\n");
    //   for(int i=0;i<len;i++)
    //   {
    //     fputc(s[i],fp);
    //   }
    //    fclose(fp);

    // }
      char c;
     c=fgetc(fp);
     printf("The character is: %c\n",c);
     fclose(fp);
    return 0;
}