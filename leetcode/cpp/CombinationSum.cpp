//
// Created by zhangqi on 2018/2/8.
//Time : O(k * n^k)
//Space : O(k)


#include <vector>

using namespace std;


class Solution {
public:
    vector<vector<int>> combinationSum(vector<int>& candidates, int target) {
        sort(candidates.begin(), candidates.end());

        vector<vector<int>> result;

        vector<vector<int>> curr;
        dfs(candidates, result, curr, target, 0);
        return result;
    }

private :

    void dfs(vector<int>& candidates, vector<vector<int>> &result, vector<vector<int>>curr,int gap, int start){
        /*
        if(gap == 0){
            result.push_back(curr);
            return;
        }

        for(int i = start; i < candidates.size(); i++){
            if(gap < candidates[i]){
                return;
            }
            curr.push_back(candidates[i]);
            dfs(candidates,result,curr,target - candidate, i);
            curr.pop_back();
        }
        */
    }
};