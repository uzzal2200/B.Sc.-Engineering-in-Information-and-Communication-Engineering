#include<bits/stdc++.h>
using namespace std;
int main()
{
    ios::sync_with_stdio(false);
    cin.tie(nullptr);
    int n;
    cin>>n;
    int a[n];
    for(int i=0;i<n;i++)
    {
        cin>>a[i];
    }
    sort(a,a+n);
    int target;
    cin>>target;
    int l = 0;
    int r = n-1;
    while(l <= r)
    {
        int mid = (l+r) / 2;
        if(a[mid] == target )
        {
            cout<<mid<<endl;
            return 0;
        }
        else if(a[mid] < target)
        {
            l = mid + 1;
        }
        else
        {
            r = mid - 1;
        }
    }
    cout<<"target value not found"<<endl;
    return 0;
}