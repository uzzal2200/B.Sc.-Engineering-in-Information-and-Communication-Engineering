#include <bits/stdc++.h>
using namespace std;
class Max_Min
{
public:
    int n1, n2;
    Max_Min(int n1, int n2)
    {
        this->n1 = n1;
        this->n2 = n2;
    }
    void print()
    {
        int result = max(n1, n2);
        cout << "Maximum = " << result << endl;
        int result_2 = min(n1, n2);
        cout << "Minimum = " << result_2 << endl;
    }
};
int main()
{
    int n1, n2;
    cout << "Enter the two numbers :";
    cin >> n1 >> n2;
    Max_Min obj = Max_Min(n1, n2);
    obj.print();

    return 0;
}
