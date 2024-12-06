#include <iostream>
#include <cmath>
using namespace std;

int main() {
    int n;
    cout << "Enter the number of elements: ";
    cin >> n;

    double numbers[n], sum = 0.0, mean, variance = 0.0, stdDev;

    cout << "Enter the numbers: ";
    for(int i = 0; i < n; ++i) {
        cin >> numbers[i];
        sum += numbers[i];
    }

    mean = sum / n;

    for(int i = 0; i < n; ++i) {
        variance += pow(numbers[i] - mean, 2);
    }

    variance /= n;
    stdDev = sqrt(variance);

    cout << "Mean: " << mean << endl;
    cout << "Variance: " << variance << endl;
    cout << "Standard Deviation: " << stdDev << endl;

    return 0;
}

