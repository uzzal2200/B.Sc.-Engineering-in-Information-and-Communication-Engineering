#include <stdio.h>

int main() {
    FILE *inputFile, *outputFile;
    int numbers[100];
    int evenNumbers[100]; // Assuming worst case: all numbers are even
    int count = 0;

    // Open the input file
    inputFile = fopen("input.txt", "r");
    if (inputFile == NULL) {
        printf("Error opening the file.\n");
        return 1;
    }

    // Read 100 integers from the file
    for (int i = 0; i < 100; ++i) {
        if (fscanf(inputFile, "%d", &numbers[i]) != 1) {
            printf("Error reading the file.\n");
            return 1;
        }
    }

    // Close the input file
    fclose(inputFile);

    // Open the output file to write even numbers
    outputFile = fopen("output.txt", "w");
    if (outputFile == NULL) {
        printf("Error opening the output file.\n");
        return 1;
    }

    // Write even numbers to the output file
    for (int i = 0; i < 100; ++i) {
        if (numbers[i] % 2 == 0) {
            fprintf(outputFile, "%d\n", numbers[i]);
            evenNumbers[count++] = numbers[i];
        }
    }

    // Close the output file
    fclose(outputFile);

    // Optional: Display the even numbers written to the output file
    printf("Even numbers written to output.txt:\n");
    for (int i = 0; i < count; ++i) {
        printf("%d\n", evenNumbers[i]);
    }

    return 0;
}
