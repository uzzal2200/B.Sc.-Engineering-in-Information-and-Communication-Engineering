#include <iostream>
using namespace std;

int main() {
    int rows;

    // Asking for user input to determine the number of rows
    cout << "Enter the number of rows for the triangle: ";
    cin >> rows;

    // Outer loop for the number of rows
    for (int i = 0; i < rows; i++) {
        // Inner loop to print '*' for each column in the current row
        for (int j = 0; j <= i; j++) {
            cout << "* ";
        }
        // Moving to the next line after each row
        cout << endl;
    }

    return 0;
}
