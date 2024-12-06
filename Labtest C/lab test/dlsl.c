#include <stdio.h>

#define N 3 // Change this value to set the size of the matrices

int main() {
    int A[N][N], B[N][N], result[N][N];

    printf("Enter elements of matrix A(%d x %d):\n", N, N);
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("Enter element A[%d][%d]: ", i, j);
            scanf("%d", &A[i][j]);
        }
    }

    printf("Enter elements of matrix B(%d x %d):\n", N, N);
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("Enter element B[%d][%d]: ", i, j);
            scanf("%d", &B[i][j]);
        }
    }

    // Multiplication logic
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            result[i][j] = 0;
            for (int k = 0; k < N; k++) {
                result[i][j] += A[i][k] * B[k][j];
            }
        }
    }

    // Displaying the result
    printf("Result of multiplication:\n");
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            printf("%d ", result[i][j]);
        }
        printf("\n");
    }

    return 0;
}
