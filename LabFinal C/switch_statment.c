#include <stdio.h>

int main() {
    char grade;

    printf("Enter your grade: ");
    scanf(" %c", &grade);

    switch(grade) {
        case 'A':
        case 'a':
            printf("Excellent!\n");
            break;
        case 'B':
        case 'b':
            printf("Good job!\n");
            break;
        case 'C':
        case 'c':
            printf("Passing.\n");
            break;
        case 'D':
        case 'd':
            printf("Barely passing.\n");
            break;
        case 'F':
        case 'f':
            printf("Sorry, you failed.\n");
            break;
        default:
            printf("Invalid grade.\n");
    }

    return 0;
}
