#include <bits/stdc++.h>
using namespace std;
int main()
{
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    int n;
    cout << "Enter size of the linear array :";
    cin >> n;
    int arr[n];
   cout << "Enter elements of the array : ";
    for (int i = 0; i < n; i++)
    {
        cin >> arr[i];
    }

    int target;
    cout << "Enter the elemnt you want to find: ";
    cin >> target;
    for (int i = 0; i < n; i++)
    {
        if (arr[i] == target)
        {
            cout << "Found at position " << i;
            return 0;
        }
    }
    cout << "ELement not found. ";
    return 0;
}
