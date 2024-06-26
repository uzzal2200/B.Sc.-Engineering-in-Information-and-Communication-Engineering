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
    double area()
    {
        return 0.5 * width * height;
    }
};
int main()
{
    double h, w, a;
    cout << "Enter the Height and Width  :" << endl;
    cin >> h >> w;
    Triangle object = Triangle(h, w);
    a = object.area();
    cout << "Triangle area is : " << a << endl;
    return 0;
}
