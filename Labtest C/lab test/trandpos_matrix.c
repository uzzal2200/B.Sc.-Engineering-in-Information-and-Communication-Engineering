// Write a C program to find the transpose of a Matrix.
#include<stdio.h>
int main()
{
    int row,col;
    scanf("%d%d",&row,&col);
    int a[row][col];
    for(int i=0;i<row;i++)
    {
        for(int j=0;j<col;j++)
        {
            scanf("%d",&a[i][j]);
        }
    } 
    printf("Given matrix\n");
    for(int i=0;i<row;i++)
    {
        for(int j=0;j<col;j++)
        {
            printf("%d ",a[i][j]);
        }
        printf("\n");
    } 
   printf("traspose matrix\n");
    //  int temp=row;
    //  row=col;
    //  col=temp;
     int t[row][col];
      for(int i=0;i<row;i++)
    {
        for(int j=0;j<col;j++)
        {
           t[j][i]=a[i][j];
        }
    } 
    for(int i=0;i<row;i++)
    {
        for(int j=0;j<col;j++)
        {
            printf("%d ",t[i][j]);
        }
        printf("\n");
    } 
    return 0;
}