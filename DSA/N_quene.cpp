// #include <iostream>
// using namespace std;

// int solutionCount = 0; // To count the number of solutions

// // Function to print the chessboard with queens placed
// void printSolution(int placed[], int N) {
//     cout << "\nSolution " << ++solutionCount << ":\n";
//     for (int i = 0; i < N; i++) {
//         for (int j = 0; j < N; j++) {
//             if (placed[i] == j)
//                 cout << "Q "; // Queen placed
//             else
//                 cout << ". "; // Empty space
//         }
//         cout << endl;
//     }
// }

// // Function to check if it's safe to place a queen at (row, col)
// bool isSafe(int placed[], int row, int col) {
//     for (int prev = 0; prev < row; prev++) {
//         if (placed[prev] == col ||  // Same column
//             placed[prev] - prev == col - row || // Same diagonal (\)
//             placed[prev] + prev == col + row) { // Same diagonal (/)
//             return false;
//         }
//     }
//     return true;
// }

// // Function to solve N-Queens using recursion and backtracking
// void solveNQueens(int placed[], int row, int N) {
//     if (row == N) { // If all queens are placed, print solution
//         printSolution(placed, N);
//         return;
//     }

//     for (int col = 0; col < N; col++) {
//         if (isSafe(placed, row, col)) { // Check if placing is safe
//             placed[row] = col; // Place queen at (row, col)
//             solveNQueens(placed, row + 1, N); // Move to next row
//         }
//     }
// }

// int main() {
//     int N;

//     // Taking user input for board size
//     cout << "Enter the number of queens (N): ";
//     cin >> N;

//     int placed[N]; // Array to store queen positions
//     fill_n(placed, N, -1); // Initialize all positions as -1 (not placed)

//     solveNQueens(placed, 0, N); // Solve the problem

//     if (solutionCount == 0)
//         cout << "No solution exists for N = " << N << endl; // No solution case

//     return 0;
// }

#include<bits/stdc++.h>
using namespace std;
int total_solution = 0;
void print(int q_position[], int n)
{
    cout<<"\nsolution"<<++total_solution<<":\n";
    for(int row=0;row<n;row++)
    {
        for(int col=0;col<n;col++)
        {
            if(q_position[row] == col)
            {
                cout<<"Q ";
            }
            else
            {
                cout<<". ";
            }
        }
        cout<<endl;
    }

}
bool is_safe(int q_position[], int c_row, int c_col)
{
    for(int p_row = 0; p_row<c_row; p_row++)
    {
        if(q_position[p_row] == c_col ||
        abs(q_position[p_row] - c_col) == abs(p_row - c_row) )
       {
        return false;
       }

    }
    return true;

}
void place_q(int q_position[], int c_row, int n )
{
    if(c_row == n)
    {
        print(q_position, n);
        return;
    }

    for(int c_col = 0; c_col < n; c_col++)
    {
        if(is_safe(q_position, c_row, c_col))
        {
          q_position[c_row] = c_col;
          place_q(q_position, c_row+1, n);
        }
    }

}
int main()
{
    int n;
    cout<<"Enter the queen: ";

   cin>>n;
   int q_position[n];
   place_q(q_position, 0, n);
   if (total_solution == 0)
   cout << "No solution exists for N = " << n << endl;
    return 0;
}