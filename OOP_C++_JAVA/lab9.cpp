#include <bits/stdc++.h>
using namespace std;
int factorial(int n)
{
    if (n == 0 || n == 1)
        return 1;
    else
        return n * factorial(n - 1);
}
int binomialCoeeficient(int n, int r)
{
    return factorial(n) / (factorial(r) * factorial(n - r));
}
int main()
{
    int n;
    cout << "Enter Number : ";
    cin >> n;
    for (int i = 0; i < n; i++)
    {
        for (int k = 0; k < n - i - 1; k++)
        {
            cout << "  ";
        }
        for (int j = 0; j <= i; j++)
        {
            cout << setw(4) << binomialCoeeficient(i, j) << " ";
        }
        cout << endl;
    }
    return 0;
}
