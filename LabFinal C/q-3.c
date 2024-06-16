#include<stdio.h>
int reverseNumber(int num,int rev)
{
    if(num==0)
    {
     return rev;
    }
    else{
        rev=rev*10+(num%10);
        return reverseNumber(num/10,rev);
    }

}
int main()
{
    int num,reverseNum;
    scanf("%d",&num);
     reverseNum=reverseNumber(num,0);
     printf("%d",reverseNum);
    return 0;
}