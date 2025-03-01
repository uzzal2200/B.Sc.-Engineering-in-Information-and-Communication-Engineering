#include<bits/stdc++.h>
using namespace std;
int main()
{

    int N, targetSum;

        // Taking user input
        cout << "Enter the number of elements: ";
        cin >> N;

        int S[N];
        cout << "Enter the elements: ";
        for (int i = 0; i < N; i++)
        {
            cin >> S[i]; // Input array elements
        }

        cout << "Enter the target sum: ";
        cin >> targetSum;

        int totalSubsets = 1;
        for (int i = 0; i < N; i++)
        {
            totalSubsets *= 2; // Equivalent to 2^N
        }

        int cnt = 0;
        for(int mask = 0; mask< totalSubsets; mask++)
        {
            int subsetSum = 0;
            for(int j=0;j<N;j++)
            {
                if(mask & (1<<j))
                {
                    subsetSum += S[j];
                }
            }

            if(subsetSum == targetSum)
            {
                cout<<" {";
                for(int j=0;j<N;j++)
                {
                    if(mask & (1<<j))
                    {
                        cout<<S[j]<<" ";
                    }
                }
                cout<<" }"<<endl;
                cnt++;
            }
        }

        cout<<" total subset"<<cnt<<endl;

    return 0;
}