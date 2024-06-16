#include<stdio.h>
int  main()
{
char c[4][15]={"PUST","Progrmaing","Data","Structure"};
for(int i=0;i<4;i++)
{
    printf("%s ",c[i]);
}
printf("\n");
c[1][2]=c[0][3];
for(int i=0;i<1;i++)
{
    printf("%s ",c[i]);
}
return 0;
}