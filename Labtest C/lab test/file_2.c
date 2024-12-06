#include<stdio.h>
#include<string.h>
int main()
{
     FILE* file;
    char s[30]="uzzal";
    int len=strlen(s);

    file=fopen("test.txt","w");

    if(file == NULL)
    {
        printf("File does not exist\n");
    } 
    else
    { 
        printf("File is open successful");
            for(int i=0;i<len;i++)
            {
             fputc(s[i],file);
            }
            printf("File is writen successfully");
        fclose(file);
    }
    return 0;
}