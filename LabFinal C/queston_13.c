#include<stdio.h>
int main()
{
    int a=9;
    printf("%d\n",sizeof(a));
    char s='b';
    printf("%d\n",sizeof(s));
    int b=4.5;
    printf("%d\n",sizeof(b)); 
    double c=1235465;
    printf("%d\n",sizeof(c));
    return 0;
}