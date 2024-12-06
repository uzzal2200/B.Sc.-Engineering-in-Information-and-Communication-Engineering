#include <bits/stdc++.h>
using namespace std;
class Volume
{
public:
    double volumeSphere(double radius)
    {
        return (4.0 / 3.0) * M_PI * pow(radius, 3);
    }
    double volumeCube(double side)
    {
        return pow(side, 3);
    }
    double VolumeCylinder(double radius, double height)
    {
        return M_PI * pow(radius, 2) * height;
    }
};
int main()
{
    Volume cal;
    double radius, side, height;
    cout << "Enter the radius of the sphere :  ";
    cin >> radius;
    cout << "Volume of the sphere " << cal.volumeSphere(radius) << endl;
    cout << "Enter the side lenght of the cube : ";
    cin >> side;
    cout << "Volume of the cube " << cal.volumeCube(side) << endl;
    cout << "Enter the height of the Cylinder : ";
    cin >> height;
    cout << "Volume of the cylinder " << cal.VolumeCylinder(radius, height) << endl;
    return 0;
}
