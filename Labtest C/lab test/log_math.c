#include<stdio.h>
#include<math.H>
int main()
{
    double  num;
    scanf("%lf",&num);
    double result = log10(num); 
    printf("%0.2lf",result);
    return 0;
}