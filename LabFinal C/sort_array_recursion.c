#include<stdio.h>
void sort(int a[],int n,int i)
{
    if(n==i) return ;
    for(int i=0;i<n;i++)
    {
        for(int j=i+1;j<n;j++)
        {
            if(a[i]>a[j])
         {
            int temp=a[i];
            a[i]=a[j];
            a[j]=temp;
         }
        }
    }
    printf("%d ",a[i]);
    sort(a,n,i+1);
}
int main()
{
    int n;
    scanf("%d",&n);
    int a[n];
    for(int i=0;i<n;i++)
    {
        scanf("%d",&a[i]);
    } 
    sort(a,n,0);
    return 0;
}