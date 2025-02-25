#include <bits/stdc++.h>
using namespace std;

// Class definition for custom queue
class myqueue
{
public:
    queue<int> v;

    // Function to add an element to the queue
    void enqueue(int val)
    {
        v.push(val);
        cout << "Enqueued: " << val << endl;
    }

    // Function to remove the front element from the queue
    void dequeue()
    {
        if (!v.empty())
        {
            cout << "Dequeued: " << v.front() << endl;
            v.pop();
        }
        else
        {
            cout << "Queue is empty. Cannot dequeue" << endl;
        }
    }

    // Function to get the front element without removing it
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

    // Function to delete the front element (Similar to dequeue)
    void deleteElement()
    {
        if (!v.empty())
        {
            cout << "Deleted: " << v.front() << endl;
            v.pop();
        }
        else
        {
            cout << "Queue is empty. Cannot delete" << endl;
        }
    }

    // Function to display all elements in the queue
    void display()
    {
        if (v.empty())
        {
            cout << "Queue is empty" << endl;
        }
        else // If queue has elements
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

    // Function to display the size of the queue
    void Size()
    {
        cout << "Size: " << v.size() << endl;
    }
};

// Main function
int main()
{
    myqueue q;
    int n;


    cout << "Enter number of elements to enqueue: ";
    cin >> n;

    // Loop to enqueue elements
    for (int i = 0; i < n; i++)
    {
        int x;
        cout << "Enter element " << i + 1 << ": ";
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
