#include<stdio.h>
#include<string.h>
int main()
{
    char s[100],c[100]={0};
     scanf("%s",s);
    for(int i=0;i<strlen(s);i++)
    {
       if(s[i]>='A' && s[i]<='Z')
       {
        c[i]=s[i]+32;
       }
       else 
       {
        c[i]=s[i];
       }

    }
    printf("%s",c);
 
    return 0;
}