#include<bits/stdc++.h>
using namespace std;
int main()
{
     unordered_map<char, list<char>> graph;
   
    int v;
    cout<<"Enter the number of vertices : ";
    cin>>v;
     for(int i=0;i<v;i++)
     {
        char vertex;
        cout<<"Enter the vertex " << i + 1 << ": ";
        cin>>vertex;
        int e;
        cout<<"Enter the number of edges for vertex "<<vertex<<": ";
        cin>>e;
        for(int j=0;j<e;j++)
        {
            char edge;
            cout<<"Enter edge "<<j+1<<" for vertex "<<vertex<<": ";
            cin>>edge;
            graph[vertex].push_back(edge);
        }

     }

     vector<char> vertices;
     for(auto pair : graph)
     {
        vertices.push_back(pair.first);
        
     }
    sort(vertices.begin(),vertices.end(),[&](char a, char b) {
            return graph[a].size() > graph[b].size();
    });

    unordered_map<char, char> ColorMap;
    for(auto node : vertices)
    {
        set<int> UsedColor;
        for(auto neighbor : graph[node])
        {
            if(ColorMap.find(neighbor) != ColorMap.end())
            {
                UsedColor.insert(ColorMap[neighbor]);
            }
        }
        int color = 0;
        while(UsedColor.find(color) != UsedColor.end())
        {
            color++;
        }

        ColorMap[node] = color;
        cout<<node<<" : "<<" color "<<color<<endl;
    }

    return 0;
}


