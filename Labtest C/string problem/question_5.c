#include<stdio.h>
#include<string.h>
int main()
{
    char s[100],a[34],c[35];
    scanf("%s%s%s",s,a,c);
    int k=strlen(s);
    for(int i=0;i<=strlen(a);i++)
    {
        s[k]=a[i];
        k++;
    }
    int k2=strlen(s);
    for(int i=0;i<=strlen(c);i++)
    {
        s[k2]=c[i];
        k2++;
    }
    printf("%s",s);
    return 0;
}