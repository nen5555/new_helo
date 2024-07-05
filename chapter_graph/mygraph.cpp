#include "../utils/common.hpp"
#include "./graph_adjacency_list.cpp"
vector<Vertex *> graphbfs(GraphAdjList &graph,Vertex *startVex){

vector<Vertex *> res;
unordered_set<Vertex *> visited = {startVex};
queue<Vertex *> que;
que.push(startVex);

while(!que.empty()){
    Vertex *vet = que.front();
    que.pop();
    res.push_back(vet);
    for(auto adjvet : graph.adjList[vet]){
        if(visited.count(adjvet))
            continue;
        que.push(adjvet);
        visited.emplace(adjvet);
    }

}
    return res;
}

void dfs(GraphAdjList &graph,unordered_set<Vertex *> &visited,vector<Vertex *> &res,Vertex *vex){
    res.push_back(vex);
    visited.emplace(vex);

    for(Vertex *adjvex:graph.adjList[vex]){
        if(visited.count(adjvex))
        continue;
        dfs(graph,visited,res,adjvex);
    }
}
vector<Vertex *>graphdfs(GraphAdjList &graph,Vertex *startVex){
    vector<Vertex*> res;
    unordered_set<Vertex *> visited;
    dfs(graph,visited,res,startVex);

    return res; 
}
class graphmat{
    vector<int> vertices;
    vector<vector<int>> adjmat;
public:
    int size() const{
        return vertices.size();
    }
    graphmat(const vector<int> &vertics,const vector<vector<int>> &edges){
        for(int val:vertics){
            addVertex(val);
        }
        for(const vector<int> &edge:edges){
            addEdge(edge[0],edge[1]);
        }
    }
    void addVertex(int val){
        int n=size();
        vertices.push_back(val);
        adjmat.emplace_back(vector<int>(n,0));
        for(vector<int> &row:adjmat){
            row.push_back(0);
        }
    }
    void addEdge(int i,int j){
        if(i<0||i>=size()||j<0||j==i||j>=size()){
            throw out_of_range("can not find vertics");
        }
            
        adjmat[i][j]=1;
        adjmat[j][i]=1;
    }
    void eraseEdge(int i,int j){
        if(i<0||i>=size()||j<0||j==i||j>=size())
            throw out_of_range("can not find vertics");
        adjmat[i][j]=0;
        adjmat[j][i]=0;

    }
    void removeVertices(int index){
        if(index>=size())
            throw("can not find vertices");
        vertices.erase(vertices.begin()+index);
        adjmat.erase(adjmat.begin()+index);
        for(vector<int> &row:adjmat){
            row.erase(row.begin()+index);
        }
    }
    void print(){
        cout<<"顶点列表=";
        printVector(vertices);
        cout<<"邻接矩阵="<<endl;
        printVectorMatrix(adjmat);

    }

};
int main(){
    vector<int> ver = {1,3,6,5,4};
    vector<vector<int>> edges ={{0, 1}, {0, 3}, {1, 2}, {2, 3}, {2, 4}, {3, 4}};
    graphmat graph(ver,edges);

    cout << "\n初始化后，图为" << endl;
    graph.print();

    vector<Vertex *> v =valsToVets({1,2,3,4,5,6,7,8,9});
    vector<vector<Vertex *>> edges_v =  {{v[0], v[1]}, {v[0], v[3]}, {v[1], v[2]}, {v[1], v[4]},
                                      {v[2], v[5]}, {v[3], v[4]}, {v[3], v[6]}, {v[4], v[5]},
                                      {v[4], v[7]}, {v[5], v[8]}, {v[6], v[7]}, {v[7], v[8]}};

    GraphAdjList graph_v(edges_v);
    cout << "\n初始化后，图为\\n";
    graph_v.print();

    /* 广度优先遍历 */
    vector<Vertex *> res = graphbfs(graph_v, v[0]);
    cout << "\n广度优先遍历（BFS）顶点序列为" << endl;
    printVector(vetsToVals(res));
    /*深度优先遍历*/
    vector<Vertex *> resdfs = graphdfs(graph_v, v[0]);
    cout << "\n深度优先遍历（DFS）顶点序列为" << endl;
    printVector(vetsToVals(resdfs));

    // 释放内存
    for (Vertex *vet : v) {
        delete vet;
    }



}


