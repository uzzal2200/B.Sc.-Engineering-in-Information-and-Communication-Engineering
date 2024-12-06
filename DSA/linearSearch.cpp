#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n;
    cout << "Enter size of the linear array: ";
    cin >> n;

    int arr[n];
    cout << "Enter elements of the array: ";
    for (int i = 0; i < n; i++)
    {
        cin >> arr[i];
    }

    int target;
    cout << "Enter the element you want to find: ";
    cin >> target;

    int result = 0; // Flag variable to indicate if the element is found
    for (int i = 0; i < n; i++)
    {
        if (arr[i] == target)
        {
            cout << "Found at position " << i << endl;
            result = 1; // Update the flag if the element is found
            break;
        }
    }

    if (result == 0) // Check if the flag was updated
    {
        cout << "Element not found." << endl;
    }

    return 0;
}
