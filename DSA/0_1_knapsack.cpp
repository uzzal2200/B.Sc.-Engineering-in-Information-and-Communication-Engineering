#include <bits/stdc++.h>
using namespace std;
int dp[100][10000];            // DP table
int weight[100], profits[100]; // Arrays for weight and profits
int main()
{
    // Taking the number of items
    cout << "Enter number of items: ";
    int n;
    cin >> n;

    // Taking the profits of the items
    cout << "Enter the profits of the items: " << endl;
    for (int i = 0; i < n; i++)
    {
        cin >> profits[i];
    }

    // Taking the weights of the items
    cout << "Enter the weights of the items: " << endl;
    for (int i = 0; i < n; i++)
    {
        cin >> weight[i];
    }

    // Taking the knapsack capacity
    int cap;
    cout << "Enter capacity: ";
    cin >> cap;

    // Initialize the dp table with 0
    for (int i = 0; i <= n; i++)
    {
        for (int j = 0; j <= cap; j++)
        {
            dp[i][j] = 0;
        }
    }

    // Fill the dp table (Tabulation approach)
    for (int i = 1; i <= n; i++)
    {
        for (int j = 1; j <= cap; j++)
        {
            if (weight[i - 1] <= j)
            {
                dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - weight[i - 1]] + profits[i - 1]);
            }
            else
            {
                dp[i][j] = dp[i - 1][j];
            }
        }
    }

    // The maximum profit is stored in dp[n][cap]
    cout << "Maximum profit in the knapsack: " << dp[n][cap] << endl;



    cout<<"DP Table "<<endl;
    for (int i = 0; i <= n; i++)
    {
        for (int j = 0; j <= cap; j++)
        {
            cout<< setw(4)<<dp[i][j]<<" ";
        }
        cout<<endl;
    }


    // Now, we need to find the items that were included
    cout << "Items included to achieve maximum profit:" << endl;
    int j = cap;
    for (int i = n; i > 0; i--)
    {
        // If the item was included
        if (dp[i][j] != dp[i - 1][j])
        {
            cout << "Item " << i << " (Profit: " << profits[i - 1] << ", Weight: " << weight[i - 1] << ")" << endl;
            j = j - weight[i - 1]; // Reduce the remaining capacity
        }
    }

    return 0;
}
