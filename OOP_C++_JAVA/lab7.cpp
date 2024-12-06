#include <bits/stdc++.h>
using namespace std;
class students
{
public:
   int roll;
   string name;
   string section;
   void details()
   {
      cout << "Enter name of the students :";
      cin >> name;
      cout << "Enter section of the students :";
      cin >> section;
      cout << "Enter roll of the students :";
      cin >> roll;
   }
   void get_deatils()
   {
      cout << "Information of the students" << endl;
      cout << "Name = " << name << endl;
      cout << "Section = " << section << endl;
      cout << "Roll = " << roll << endl;
   }
};
int main()
{
   students student;
   student.details();
   student.get_deatils();

   return 0;
}
