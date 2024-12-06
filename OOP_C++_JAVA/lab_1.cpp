#include <bits/stdc++.h>
using namespace std;
class Triangle
{
public:
    double width, height;
    Triangle(double width, double height)
    {
        this->width = width;
        this->height = height;
    }
    void area()
    {
        int result = 0.5*height*width;
        cout<<"Area of the Triangle " << result<<endl;
    }
};
int main()
{
    double h, w, a;
    cout << "Enter the Height and Width  :" << endl;
    cin >> h >> w;
    Triangle object = Triangle(h, w);
    object.area();
    return 0;
}
