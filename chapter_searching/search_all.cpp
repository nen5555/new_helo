#include "../utils/common.hpp"

class Search{
    vector<int> &num;
    //int target;
public:
    Search(vector<int> &n):num(n){}
    int size() const{
        return num.size();
    }

    void swap(int &i,int &j){
        int temp=0;
        temp=i;
        i=j;
        j=temp;

    }
    void select_Sort(){
        for(int i=0;i<num.size()-1;i++){
            for(int j=i+1;j<num.size();j++){
                if(num[i]>num[j]){
                    swap(num[i],num[j]);
                }
            }
        }
    }
    
};

int main(){
    vector<int> num={1,4,6,2,8};
    Search search(num);
    cout<<"num 初始化为 :";
    printArray(num.data(),num.size());
    cout<<"num 经过select_sort为 :";
    search.select_Sort();
    printArray(num.data(),num.size());
    

}