
#include <bits/stdc++.h>
using namespace std;
class matrix
{
public:
    int r;
    int c;
    int m1[100][100];
    int m2[100][100];
    int add[100][100];

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
                add[i][j] = m1[i][j] + m2[i][j];
            }
        }

        cout << "Addition of two matrices:" << endl;
        for (int i = 0; i < r; i++)
        {
            for (int j = 0; j < c; j++)
            {
                cout << add[i][j] << " ";
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
