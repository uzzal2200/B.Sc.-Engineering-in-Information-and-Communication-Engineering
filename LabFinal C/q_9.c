#include<stdio.h>
#include<string.h>
int main()
{
     char a[1000],b[1000];
     scanf("%s",&a);
     strcpy(b,a);
    int i=0,j=strlen(b)-1;
    while(i<j)
    {
        int tmp=b[i];
        b[i]=b[j];
        tmp=b[j];
        i++;
        j--; 
    }
    if(strcmp(a,b)==0)
    {
        printf("Pailndrome\n");
    }
    else
    {
        printf("Not pailndrome\n");
    }
    return 0;
}