#include<stdio.h>
int main()
{
    int row,col;
    scanf("%d%d",&row,&col);
    int a[row][col];
    printf("First matrix\n");
    for(int i=0;i<row;i++)
    {
        for(int j=0;j<col;j++)
        {
            scanf("%d",&a[i][j]);
        }
    }
    int t[row][col];
    printf("Second matrix\n");
      for(int i=0;i<row;i++)
    {
        for(int j=0;j<col;j++)
        {
            scanf("%d",&t[i][j]);
        }
    }
       int add[row][col];
          for(int i=0;i<row;i++)
    {
        for(int j=0;j<col;j++)
        {
         add[i][j]=a[i][j]+t[i][j];
        }
    }
          for(int i=0;i<row;i++)
    {
        for(int j=0;j<col;j++)
        {
           printf("%d ",add[i][j]);
        }
        printf("\n");
    }
    
   
    return 0;
}