#include<stdio.h>
int add(int n,int p)
{
int result;
result=n*p;
return result;
}
int main()
{
    int n,p;
    scanf("%d%d",&n,&p);
   add(n,p);
   int u=add(n,p);
    printf("%d",u);
     
    return 0;
}