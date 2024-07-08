#include "../utils/common.hpp"

void backtrack(vector<int> &state,const vector<int> &choice,vector<bool> &selected,vector<vector<int>> *res){
    if(state.size()==choice.size())
    res.push_back(state);
    return ;
}
for()