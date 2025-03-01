
#include <iostream>
using namespace std;

int main() {
    int n, target, totalIterations = 0;

    cout << "Enter size of the array: ";
    cin >> n;

    int arr[n];
    cout << "Enter elements of the array: ";
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    cout << "Enter the element to search: ";
    cin >> target;

    cout << "\nSearching process:\n";

    int result = 0;
    for (int i = 0; i < n; i++) {
        totalIterations++;
        cout << "Iteration " << totalIterations << ": Checking index " << i << " (Element: " << arr[i] << ")" << endl;

        if (arr[i] == target) {
            cout << "Element found at index " << i << endl;
            result = 1;
            break; // Stop searching after finding the first occurrence
        }
    }

    if (result == 0) {
        cout << "Element not found in the array." << endl;
    }

    cout << "Total iterations: " << totalIterations << endl;

    return 0;
}
