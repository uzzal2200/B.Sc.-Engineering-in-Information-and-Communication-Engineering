#include<bits/stdc++.h>
using namespace std;
#define MAX 100

int main() {
    int n; // Number of vertices
    cout << "Enter the number of vertices: ";
    cin >> n;

    int graph[MAX][MAX];
    int degree[MAX] = {0};
    int color[MAX] = {0};

    cout << "Enter the adjacency matrix:" << endl;
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            cin >> graph[i][j];
            if (graph[i][j] == 1) {
                degree[i]++;
            }
        }
    }

    // Order vertices by decreasing degree
    int orderedVertices[MAX];
    for (int i = 0; i < n; i++) {
        orderedVertices[i] = i;
    }

    // Sort vertices based on degree (descending)
    for (int i = 0; i < n - 1; i++) {
        for (int j = i + 1; j < n; j++) {
            if (degree[orderedVertices[i]] < degree[orderedVertices[j]]) {
                swap(orderedVertices[i], orderedVertices[j]);
            }
        }
    }

    // Coloring process
    int currentColor = 1;
    for (int i = 0; i < n; i++) {
        int vertex = orderedVertices[i];

        // Check if we can use the current color
        bool canUseColor = true;
        for (int j = 0; j < n; j++) {
            if (graph[vertex][j] == 1 && color[j] == currentColor) {
                canUseColor = false;
                break;
            }
        }

        if (canUseColor) {
            color[vertex] = currentColor;
        } else {
            // Try next color
            currentColor++;
            color[vertex] = currentColor;
        }
    }

    // Output the colors assigned to each vertex
    cout << "Vertex colors:" << endl;
    for (int i = 0; i < n; i++) {
        cout << "Vertex " << i + 1 << " -> Color " << color[i] << endl;
    }

    return 0;
}
