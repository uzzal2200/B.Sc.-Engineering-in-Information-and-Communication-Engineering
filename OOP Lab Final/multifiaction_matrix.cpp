
#include <bits/stdc++.h>
using namespace std;
class matrix
{
public:
    int r;
    int c;
    int m1[100][100];
    int m2[100][100];
    int mul[100][100];

    void set_matrix()
    {
        cout << "Enter row and column: ";
        cin >> r >> c;

        cout << "Enter matrix m1:" << endl;
        for (int i = 0; i < r; i++)
        {
            for (int j = 0; j < c; j++)
            {
                cin >> m1[i][j];
            }
        }

        cout << "Enter matrix m2:" << endl;
        for (int i = 0; i < r; i++)
        {
            for (int j = 0; j < c; j++)
            {
                cin >> m2[i][j];
            }
        }

        for (int i = 0; i < r; i++)
        {
            for (int j = 0; j < c; j++)
            {
                mul[i][j] = 0;
            }
        }
           // Perform matrix multiplication
    for (int i = 0; i < r; ++i) {
        for (int j = 0; j < c; ++j) {
            for (int k = 0; k < c; ++k) {
                mul[i][j] += m1[i][k] * m2[k][j];
            }
        }
    }

        cout << "Addition of two matrices:" << endl;
        for (int i = 0; i < r; i++)
        {
            for (int j = 0; j < c; j++)
            {
                cout << mul[i][j] << " ";
            }
            cout << endl;
        }
    }
};

int main()
{
    matrix obj;
    obj.set_matrix();

    return 0;
}
