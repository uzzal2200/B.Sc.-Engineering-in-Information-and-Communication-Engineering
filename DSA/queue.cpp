#include <bits/stdc++.h>
using namespace std;
class myqueue
{
public:
    queue<int> v;
    void enqueue(int val)
    {
        v.push(val);
        cout << "Enqueued: " << endl;
    }
    void dequeue()
    {
        if (!v.empty())
        {
            cout << "Dequeued: " << v.front() << endl;
            v.pop();
        }
        else
        {
            cout << "Dequeued is empty. can not dequeue" << endl;
        }
    }
    void peek()
    {
        if (!v.empty())
        {
            cout << "Front item: " << v.front() << endl;
        }
        else
        {
            cout << "Queue is empty. No front item to peek" << endl;
        }
    }
    void deleteElement()
    {
        if (!v.empty())
        {
            cout << "Dequeued: " << v.front() << endl;
            v.pop();
        }
        else
        {
            cout << "Dequeued is empty. can not dequeue" << endl;
        }
    }
    void display()
    {
        if (v.empty())
        {
            cout << " Queue is empty" << endl;
        }
        else
        {
            queue<int> temp = v;
            cout << "Queue elements: ";
            while (!temp.empty())
            {
                cout << temp.front() << " ";
                temp.pop();
            }
            cout << endl;
        }
    }
    void Size()
    {
        cout << "size : " << v.size() << endl;
    }
};
int main()
{

    myqueue q;
    int n;
    cin >> n;
    for (int i = 0; i < n; i++)
    {
        int x;
        cin >> x;
        q.enqueue(x);

        q.display();
    }
    q.Size();
    q.dequeue();
    q.peek();
    q.deleteElement();
    q.display();

    return 0;
}