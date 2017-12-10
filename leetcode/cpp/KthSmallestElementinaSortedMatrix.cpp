//
// Created by zhangqi on 2017/11/14.
//

#include <vector>
#include <queue>


using  namespace std;

class Solution {
public:
    int kthSmallest(vector<vector<int>>& matrix, int k) {
        int ans = 0;
        priority_queue<int, vector<int>, less<int>> maxHeap;
        for(int i = 0; i < matrix.size(); i++){
            for(int j = 0; j < matrix[0].size(); j++){
                maxHeap.push(matrix[i][j]);
                if(maxHeap.size() > k){
                    maxHeap.pop();
                }
            }
        }
        if(!maxHeap.empty()){
            ans = maxHeap.top();
        }
        return  ans;
    }
};