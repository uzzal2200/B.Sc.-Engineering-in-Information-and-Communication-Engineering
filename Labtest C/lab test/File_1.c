#include<stdio.h>
int main()
{
    FILE *f;
    f=fopen("test.txt","w");
    if(f==NULL)
    {
        printf("file does not exist");
    }
    else
    {
        printf("file is opend");
    }

    return 0;
}