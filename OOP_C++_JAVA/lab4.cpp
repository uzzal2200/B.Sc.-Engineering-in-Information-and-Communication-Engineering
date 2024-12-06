#include <bits/stdc++.h>
using namespace std;
class Sorting
{
public:
  void Acending_order(int n, int a[])
  {
    sort(a, a + n);
  }
  void Descending_order(int n, int a[])
  {
    sort(a, a + n, greater<int>());
  }
  void print(int n, int a[])
  {
    for (int i = 0; i < n; i++)
    {
      cout << a[i] << " ";
    }
    cout << endl;
  }
};
int main()
{
  int n;
  cin >> n;
  int a[n];
  for (int i = 0; i < n; i++)
  {
    cin >> a[i];
  }
  Sorting Sort;
  Sort.Acending_order(n, a);
  Sort.print(n, a);
  Sort.Descending_order(n, a);
  Sort.print(n, a);
   cout << "sorting done"<<endl;
  return 0;
}
