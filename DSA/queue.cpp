#include <bits/stdc++.h>
using namespace std;

class myqueue
{
    queue<int> q;

public:
    void enqueue(int val) {
        q.push(val);
        cout << "Enqueued: " << val << endl;
    }

    void dequeue() {
        if (!q.empty()) {
            cout << "Dequeued: " << q.front() << endl;
            q.pop();
        } else {
            cout << "Queue is empty. Cannot dequeue" << endl;
        }
    }

    void peek() {
        if (!q.empty()) {
            cout << "Front item: " << q.front() << endl;
        } else {
            cout << "Queue is empty. No front item to peek" << endl;
        }
    }

    void display() {
        if (q.empty()) {
            cout << "Queue is empty" << endl;
            return;
        }
        cout << "Queue elements: ";
        queue<int> temp = q;
        while (!temp.empty()) {
            cout << temp.front() << " ";
            temp.pop();
        }
        cout << endl;
    }

    void Size() {
        cout << "Size: " << q.size() << endl;
    }
};

int main()
{
    myqueue q;
    int n, x;

    cout << "Enter number of elements to enqueue: ";
    cin >> n;

    for (int i = 0; i < n; i++) {
        // cout << "Enter element " << i + 1 << ": ";
        cin >> x;
        q.enqueue(x);
    }

    q.display();
    q.Size();
    q.peek();
    q.dequeue();
    q.peek();
    q.display();
    q.Size();

    return 0;
}
