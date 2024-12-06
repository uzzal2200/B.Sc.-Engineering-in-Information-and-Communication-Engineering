#include<bits/stdc++.h>
using namespace std;
int main()
{
    int n;
    cin >> n;
    int a[n];
    for(int i = 0; i < n; i++)
    {
        cin >> a[i];
    }

    // Find R = { (a[i], a[j]) }
    cout << "Find R = { ";
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < n; j++)
        {
            if(i != 0 || j != 0) // To avoid leading comma
                cout << ", ";
            cout << "(" << a[i] << "," << a[j] << ")";
        }
    }
    cout << " }" << endl;

    // Find Relation R1
    cout << "Find Relation R1:" << endl;
    cout << "R1 = {";
     // Flag to handle the first element
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < n; j++)
        {
            if(a[j] % a[i] == 0)
            {
                   if(i != 0 || j != 0) 
                    cout << ", "; // Add comma before element if not the first
                cout << "(" << a[i] << "," << a[j] << ")";
                
            }
        }
    }
    cout << "}" << endl;

    // Find Relation R2
    cout << "Find Relation R2:" << endl;
    cout << "R2 = {";
     // Reset flag for R2
    for(int i = 0; i < n; i++)
    {
        for(int j = 0; j < n; j++)
        {
            if(a[i] <= a[j])
            {
                 if(i != 0 || j != 0) 
                    cout << ", "; // Add comma before element if not the first
                cout << "(" << a[i] << "," << a[j] << ")";
                
            }
        }
    }
    cout << "}" << endl;

    return 0;
}
