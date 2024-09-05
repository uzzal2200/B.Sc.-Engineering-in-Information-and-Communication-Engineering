#include <bits/stdc++.h>
using namespace std;

int main() {
    unordered_map<char, list<char>> graph;
    int v;
    cout << "Enter the number of vertices: ";
    cin >> v;
    // Input vertices and edges
    for (int i = 0; i < v; i++) {
        char vertex;
        cout << "Enter vertex " << i + 1 << ": ";
        cin >> vertex;

        int e;
        cout << "Enter the number of edges for vertex " << vertex << ": ";
        cin >> e;

        for (int j = 0; j < e; j++) {
            char edge;
            cout << "Enter edge " << j + 1 << " for vertex " << vertex << ": ";
            cin >> edge;
            graph[vertex].push_back(edge);
        }
    }
    // Sort vertices by degree in descending order
    vector<char> vertices;
    for ( auto pair : graph)
        vertices.push_back(pair.first);

    sort(vertices.begin(), vertices.end(), [&](char a, char b) {
        return graph[a].size() > graph[b].size();
    });

    // Color the nodes using Welsh-Powell algorithm
    unordered_map<char, int> colorMap;
    for (char node : vertices) {
        set<int> usedColors;
        for (char neighbor : graph[node])
        {
            if (colorMap.find(neighbor) != colorMap.end())
                usedColors.insert(colorMap[neighbor]);
        }

        int color = 0;
        while (usedColors.find(color) != usedColors.end())
        {
               color++;
        }
         

        colorMap[node] = color;
        cout << node << ": color " << color << endl;
    }

    return 0;
}
