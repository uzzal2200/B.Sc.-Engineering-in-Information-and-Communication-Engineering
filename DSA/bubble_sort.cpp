#include <bits/stdc++.h>
using namespace std;

int main()
{
    int n;
    cout << "Enter the size of Array: ";
    cin >> n;
    int a[n];

    cout << "Enter elements of the array: ";
    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
    }

    cout << "\nSorting process:\n";

    // Bubble Sort with iteration printing
    for (int i = 0; i < n - 1; i++)
    {
        cout << "Iteration " << i + 1 << ": ";
        bool swapped = false; // Optimization: Track if swap occurs

        for (int j = 0; j < n - i - 1; j++)
        {
            if (a[j] > a[j + 1])
            {
                swap(a[j], a[j + 1]);
                swapped = true;
            }
        }

        // Print the array after each iteration
        for (int k = 0; k < n; k++)
        {
            cout << a[k] << " ";
        }
        cout << endl;

        // If no swaps were made, the array is already sorted
        if (!swapped)
        {
            cout << "Array is already sorted. Stopping early.\n";
            break;
        }
    }

    cout << "\nSorted Array: ";
    for (int i = 0; i < n; i++)
    {
        cout << a[i] << " ";
    }
    cout << endl;

    return 0;
}
