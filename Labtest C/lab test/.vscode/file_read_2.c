#include<stdio.h>
int main()
{
    FILE *f;
    char s[48];
    f=fopen("test.txt","r");
    if(f==NULL)
    {
        printf("file does not exist");
    }
    else
    {
        printf("file is opend");
        
           fscanf(f,"s",&s);
           printf("%s",s);
        
        fclose(f);

    }

    return 0;
}