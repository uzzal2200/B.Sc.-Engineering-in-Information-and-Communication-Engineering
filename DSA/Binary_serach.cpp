#include <bits/stdc++.h>
using namespace std;
int main()
{

    int n;
    cout << "Enter the size of Array : ";
    cin >> n;
    int a[n];
    cout << "Enter elements of the array: ";
    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
    }
    sort(a, a + n);
    int target;

    cout << "Enter the element you want to find: ";
    cin >> target;
    int l = 0;
    int r = n - 1;
    bool result = false;

    while (l <= r)
    {
        int mid = (l + r) / 2;
        if (a[mid] == target)
        {
            cout << "Find the position " << mid << endl;
            result = true;
            break;
        }
        else if (a[mid] < target)
        {
            l = mid + 1;
        }
        else
        {
            r = mid - 1;
        }
    }
    if (result == 0)
    {
        cout << "target value not found" << endl;
    }
    return 0;
}