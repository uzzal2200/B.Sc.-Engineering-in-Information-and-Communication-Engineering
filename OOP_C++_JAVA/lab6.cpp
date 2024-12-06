#include <bits/stdc++.h>
using namespace std;
class string_add
{
public:
    string s1, s2;
    void set_string()
    {
        cout << "Enter string s1" << endl;
        cin >> s1;
        cout << "Enter string s2" << endl;
        cin >> s2;
        string s3 = s1 + s2;
        cout << "Add two strings = " << s3 << endl;
    }
};
int main()
{
    string_add obj;
    obj.set_string();
    return 0;
}
