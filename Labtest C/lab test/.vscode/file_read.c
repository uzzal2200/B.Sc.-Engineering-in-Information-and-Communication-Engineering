#include<stdio.h>
int main()
{
    FILE *f;
    char ch;
    f=fopen("test.txt","r");
    if(f==NULL)
    {
        printf("file does not exist");
    }
    else
    {
        printf("file is opend");
        while(!feof(f))
        {
            ch=fgetc(f);
            printf("%c",ch);
        }

        fclose(f);

    }

    return 0;
}