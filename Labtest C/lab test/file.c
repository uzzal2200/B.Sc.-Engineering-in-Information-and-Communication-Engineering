#include <stdio.h>
int main() 
{
    FILE *f1;
    char name[50];
    int roll;

    printf("Enter your name: ");
    scanf("%s", name);
    printf("Enter your roll number: ");
    scanf("%d", &roll);

    // Open file in write mode
    f1 = fopen("life.txt", "w");

    // Check if file opened successfully
    if (f1 == NULL) {
        printf("File could not be opened.");
        return 1;
    }

    // Write data to the file
    fprintf(f1, "Name: %s\nRoll: %d\n", name, roll);

    // Close the file
    fclose(f1);

    // Open file in read mode
    f1 = fopen("life.txt", "r");

    // Check if file opened successfully
    if (f1 == NULL) 
    {
        printf("File could not be opened.");
        return 1;
    }

    // Display content of the file
    printf("\nContents of life.txt:\n");
    char ch;
    while ((ch = fgetc(f1)) != EOF) {
        printf("%c", ch);
    }

    // Close the file
    fclose(f1);

    return 0;
}
