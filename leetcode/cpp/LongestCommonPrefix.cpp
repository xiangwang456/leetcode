//
// Created by zhangqi on 2017/10/19.
//Time : O(n * k) k longest common prefix
//Space : O(1)

#include <vector>
#include <string>
#include <limits>

using namespace std;
class Solution {
public:
    string longestCommonPrefix(vector<string>& strs) {
        if(strs.empty()){
            return  "";
        }
        for(int i = 0; i < strs[0].size(); i++){
            for(auto str : strs){
                if( i >= str.size() || strs[0][i] != str[i]){
                    return strs[0].substr(0,i);
                }
            }
        }
        return strs[0];
    }
};
