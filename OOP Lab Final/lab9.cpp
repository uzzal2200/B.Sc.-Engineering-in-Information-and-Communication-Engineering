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

// #include <iostream>
// #include <iomanip>

// using namespace std;

// // Function to calculate factorial of a number
// int factorial(int n) {
//     if(n == 0 || n == 1) return 1;
//     return n * factorial(n - 1);
// }

// // Function to calculate binomial coefficient (nCr)
// int binomialCoefficient(int n, int r) {
//     return factorial(n) / (factorial(r) * factorial(n - r));
// }

// int main() {
//     int rows = 5;

//     for(int i = 0; i < rows; i++) {
//         // Print leading spaces for proper formatting
//         for(int k = 0; k < rows - i - 1; k++) {
//             cout << "  ";
//         }

//         // Print the values in Pascal's Triangle
//         for(int j = 0; j <= i; j++) {
//             cout << setw(4) << binomialCoefficient(i, j) << " "; //The setw(4) ensures that each number is printed with a width of 4 characters, aligning the numbers properly.
//         }

//         cout << endl;
//     }

//     return 0;
// }
