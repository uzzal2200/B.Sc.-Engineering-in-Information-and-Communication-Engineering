#include<stdio.h>
int main()
{
    char s[20];
    scanf("%s",s);
    int len=0;
    for(int i=0;s[i]!='\0';i++)
    {
        len++;
    } 
    printf("%d",len);
    return 0;
}