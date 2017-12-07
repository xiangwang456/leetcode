//
// Created by zhangqi on 2017/12/7.


//Time : O(n^2)
//Space : O(n^2)

#include <string>
#include <unordered_map>
#include <vector>

using namespace std;

class Solution {
public:
    int fourSumCount(vector<int>& A, vector<int>& B, vector<int>& C, vector<int>& D) {
        unordered_map<int, int> ABSum;
        for(const auto &a : A){
            for(const auto &b: B){
                ABSum[a + b]++;
            }
        }

        int ans = 0;
        for(const auto &c : C){
            for(const auto &d : D){
                if(ABSum.find(-c -d ) != ABSum.end()){
                    ans += ABSum[-c - d];
                }
            }
        }
        return ans;
    }
};