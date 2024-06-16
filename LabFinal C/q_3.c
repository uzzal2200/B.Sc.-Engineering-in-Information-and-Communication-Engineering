#include<stdio.h>
#include<string.h>
int main()
{
    int n;
    scanf("%d",&n);
    char str[100][100],s[100];
    for(int i=0;i<n;i++) 
    {
        scanf("%s",str[i]);
    }
    for(int i=0;i<n;i++)
    {
        for(int j=i+1;j<n;j++)
        {
            if(strcmp(str[i],str[j])>0)
            {
             strcpy(s,str[i]);
             strcpy(str[i],str[j]);
             strcpy(str[j],s);
            }
            
        }
    }
    for(int i=0;i<n;i++)
    {
        printf("%s\n",str[i]);
    }
    return 0;
}