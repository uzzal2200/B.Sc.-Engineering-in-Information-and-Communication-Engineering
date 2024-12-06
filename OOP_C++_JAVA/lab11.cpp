#include <bits/stdc++.h>
using namespace std;
class BankAccount
{
public:
    string name;
    double primary_balance;
    BankAccount(string name, double primary_balance)
    {
        this->name = name;
        this->primary_balance = primary_balance;
    }
    void account_information()
    {
        cout << "......Account Information......" << endl;
        cout << "Owners Name : " << name << endl;
        cout << "Primary Balance $ : " << primary_balance << endl;
    }
    void withdraw(double ammount)
    {
        if (ammount > primary_balance)
        {
            cout << "Insufficient funds!" << endl;
        }
        else
        {
            primary_balance -= ammount;
            cout << "Withdrawal of " << ammount << "$ successful." << endl;
        }
    }
    void update_information()
    {
        cout << "......Updated Account Information...... " << endl;
        cout << "Owners Name : " << name << endl;
        cout << "Extra Balance: $" << primary_balance << endl;
    }
};
int main()
{
    string name;
    cout << "Enter account owner's name: ";
    cin >> name;
    double primary_balance;
    cout << "Enter primary balance : ";
    cin >> primary_balance;
    BankAccount obj = BankAccount(name, primary_balance);
    obj.account_information();
    double ammount;
    cout << "Enter ammount to withdraw: ";
    cin >> ammount;
    obj.withdraw(ammount);
    obj.update_information();
    return 0;
}
