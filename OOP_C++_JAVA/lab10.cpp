#include <bits/stdc++.h>
using namespace std;

class GPA
{
public:
    void GPA_calculate()
    {
        int eng, che, com, phy, math;
        float total, average, percentage;

        cout << "Enter marks for English, Chemistry, Computer, Physics, Math:" << endl;
        cin >> eng >> che >> com >> phy >> math;

        total = eng + com + phy + math + che;
        average = total / 5;
        percentage = (total / 500.0) * 100;

        cout << "Total marks = " << total << endl;
        cout << "Average marks = " << average << endl;
        cout << "Percentage = " << percentage << "%" << endl;

        if (average >= 80 && average <= 100)
            cout << "GPA = 5.00" << endl;
        else if (average < 80 && average >= 70)
            cout << "GPA = 4.00" << endl;
        else if (average < 70 && average >= 60)
            cout << "GPA = 3.50" << endl;
        else if (average < 60 && average >= 50)
            cout << "GPA = 3.00" << endl;
        else if (average < 50 && average >= 40)
            cout << "GPA = 2.50" << endl;
        else if (average < 40 && average >= 33)
            cout << "GPA = 2.00" << endl;
        else
            cout << "GPA = 0.00" << endl;
    }
};

int main()
{
    GPA obj;
    obj.GPA_calculate();
    return 0;
}
