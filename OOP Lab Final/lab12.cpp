#include <bits/stdc++.h>
using namespace std;
class Person
{
public:
    string name;
    int age;
    void display1()
    {
        cout << " Name : " << name << endl;
        cout << " Age ; " << age << endl;
    }
};
class Student : public Person
{
public:
    double salary;
    void display2()
    {
        cout << " salary : " << salary << endl;
        display1();
    }
};
int main()
{
    string name;
    cout << "Enter name : ";
    cin >> name;
    int age;
    cout << "Enter age : ";
    cin >> age;
    double salary;
    cout << "Enter salary : ";
    cin >> salary;
    Student s1;
    s1.name = name;
    s1.age = age;
    s1.salary = salary;
    s1.display2();

    return 0;
}
