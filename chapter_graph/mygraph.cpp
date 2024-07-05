#include "../utils/common.hpp"
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

    return 0;


}


