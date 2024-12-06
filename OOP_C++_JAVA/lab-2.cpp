#include <bits/stdc++.h>
using namespace std;
class SumCalculator
{
public:
    int sum;
    int Sum(int a, int b, int c)
    {
        sum = a + b + c;
        cout << "The sum of " << sum << endl;
    }
    
};
int main()
{
    int n1, n2, n3;
    cout << "Enter the three number" << endl;
    cin >> n1 >> n2 >> n3;
    SumCalculator obj;
    obj.Sum(n1, n2, n3);
    

    return 0;
}
