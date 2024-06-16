#include<stdio.h>
int main()
{
     FILE *f;
     char s[40];
     int age;

    f=fopen("test.txt","w");
    if(f==NULL)
    {
        printf("file does not exist");
    }
    else
    {
        printf("file is opend\n");
        printf("Enter your name: \n");
        gets(s);
        printf("Your age: \n");
       scanf("%d",&age);
       fprintf(f,"Name = %s,age = %d",s,age);
       
       printf("file is writen sucessfully\n");
        fclose(f);
    } 
    return 0;
}