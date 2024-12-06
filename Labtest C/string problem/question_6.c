#include<stdio.h>
#include<string.h>
int main()
{
    char s[100];
    scanf("%s",s);
    int cnt=0;
    for(int i=0;s[i]!='\0';i++)
    {
     cnt++;
    } 
    for(int i=cnt-1;i>=0;i--)
    {
        printf("%c",s[i]);
    }
    return 0;
}