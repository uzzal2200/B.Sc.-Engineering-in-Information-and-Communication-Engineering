
#include <bits/stdc++.h>
using namespace std;

int main() {
    string text, pattern;
    cout << "Enter the text: ";
    cin >> text;
    cout << "Enter the pattern: ";
    cin >> pattern;
    
    // Length of the pattern
    int patLength = pattern.length();
    
    // Flag to check if a match is found
    int result = 0;

    // Loop through the text and check if the pattern matches at each position
    for (int i = 0; i <= text.length() - patLength; ++i) {
        // Extract the substring from the text starting at index i and of length pattern length
        string substr = text.substr(i, patLength);
        
        // Compare the substring with the pattern
        if (substr == pattern) {
            cout << "Pattern found at index " << i << endl;
            result = 1;
        }
    }

    // If no match is found, print this message
    if ( result == 0) {
        cout << "Pattern not found in the text!" << endl;
    }

    return 0;
}
