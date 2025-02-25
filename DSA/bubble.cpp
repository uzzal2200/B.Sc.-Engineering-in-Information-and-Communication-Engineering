#include <bits/stdc++.h>
using namespace std;
int main()
{
  int n;
  cout << "Enter the size of array : ";
  cin >> n;
  int a[n];
  cout << " Enter the elements of array : ";
  for (int i = 0; i < n; i++)
  {
    cin >> a[i];
  }
  int cnt1 = 0;
  int cnt2 = 0;
  for (int i = 0; i < n - 1; i++)
  {
    bool flag = false;
    cout << "pass = " << i + 1 << endl;
    for (int j = 0; j < n - i - 1; j++)
    {
      cout << "Compare " << a[j] << " and " << a[j + 1] << endl;
      cnt1++;
      if (a[j] >= a[j + 1])
      {
        int temp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = temp;
        cnt2++;
        cout << "swap " << a[j + 1] << " and " << a[j] << " : ";
      }

      for (int i = 0; i < n; i++)
      {
        cout << a[i] << " ";
      }
      cout << endl;
      flag = true;
    }
    cout << endl;
  }
  cout << " Sorted array " << endl;
  for (int i = 0; i < n; i++)
  {
    cout << a[i] << " ";
  }
  cout << endl;
  cout << "Total comparision " << cnt1 << endl;
  cout << "Total Interchange " << cnt2 << endl;

  return 0;
}