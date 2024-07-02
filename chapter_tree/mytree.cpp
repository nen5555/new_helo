#include "../utils/common.hpp"

struct MyTreeNode{
    int val;
    MyTreeNode *parent;
    MyTreeNode *left;
    MyTreeNode *right;
    MyTreeNode(int x):val(x),left(nullptr),right(nullptr){}   
};

class mytree{
    public:

    MyTreeNode *n;
    mytree():n(nullptr){};
    MyTreeNode *createnode(int num){
        MyTreeNode *newnode = new MyTreeNode(num);
        return newnode;
    }
    void printree(MyTreeNode *n,int space=0,int height=10){
        if(n==nullptr) return;

        space +=height;
        printree(n->right,space);
        std::cout <<std::endl;
        for(int i=0;i<height;i++)
            std::cout<<" ";
        std::cout<<n->val<<endl;
        printree(n->left,space);
    }
    void displaytree(){
        printree(n);
    }   
};
int main(){
    mytree tree;
    MyTreeNode *n0 = new MyTreeNode(1);
    MyTreeNode *n1 = new MyTreeNode(4);
    MyTreeNode *n2 = new MyTreeNode(5);
    MyTreeNode *n3 = new MyTreeNode(3);
    MyTreeNode *n4 = new MyTreeNode(2);
    
    n0->left=n1;
    n0->right=n2;
    n1->left=n3;
    n1->right=n4;
    tree.n=n0;

    tree.displaytree();


}