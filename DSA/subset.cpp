// #include <iostream>
// using namespace std;

// int main()
// {
//     int N, targetSum;

//     // Taking user input
//     cout << "Enter the number of elements: ";
//     cin >> N;

//     int S[N];
//     cout << "Enter the elements: ";
//     for (int i = 0; i < N; i++)
//     {
//         cin >> S[i]; // Input array elements
//     }

//     cout << "Enter the target sum: ";
//     cin >> targetSum;

//     int totalSubsets = 1;
//     for (int i = 0; i < N; i++)
//     {
//         totalSubsets *= 2; // Equivalent to 2^N
//     }

//     int count = 0; // To count the number of valid subsets

//     // Iterate through all possible subsets
//     for (int mask = 0; mask < totalSubsets; mask++)
//     {
//         int subsetSum = 0;

//         // Calculate subset sum
//         for (int j = 0; j < N; j++)
//         {
//             if (mask & (1 << j))
//             { // If j-th bit is set, include S[j]
//                 subsetSum += S[j];
//             }
//         }

//         // If subset sum matches target, print the subset
//         if (subsetSum == targetSum)
//         {
//             cout << "{ ";
//             for (int j = 0; j < N; j++)
//             {
//                 if (mask & (1 << j))
//                 {
//                     cout << S[j] << " ";
//                 }
//             }
//             cout << "}" << endl;
//             count++; // Increase count of valid subsets
//         }
//     }

//     cout << "Total subsets found: " << count << endl;

//     return 0;
// }

#include <iostream>
using namespace std;

void findSubsets(int arr[], int n, int index, int sum, int target, string current) {
    // If subset sum equals target, print the subset
    if (sum == target) {
        cout << "{ " << current << "}" << endl;
        return;
    }

    // If index reaches end or sum exceeds target, return
    if (index == n || sum > target) {
        return;
    }

    // Include the current element and recur
    findSubsets(arr, n, index + 1, sum + arr[index], target, current + to_string(arr[index]) + " ");

    // Exclude the current element and recur
    findSubsets(arr, n, index + 1, sum, target, current);
}

int main() {
    int n, target;

    // Input the number of elements and target sum
    cout << "Enter number of elements: ";
    cin >> n;

    int arr[n];
    cout << "Enter elements: ";
    for (int i = 0; i < n; i++) {
        cin >> arr[i];
    }

    cout << "Enter target sum: ";
    cin >> target;

    cout << "Subsets with sum " << target << " are:" << endl;
    findSubsets(arr, n, 0, 0, target, "");

    return 0;
}
