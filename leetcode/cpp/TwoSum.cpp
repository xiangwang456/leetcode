//
// Created by zhangqi on 2017/11/22.
//Time  : O(n)
//Space : O(n)

#include <vector>
#include <unordered_map>

using namespace std;

class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        unordered_map<int, int> loopup;
        for(int i = 0; i < nums.size(); i++){
            if(loopup.count(target - nums[i])){
                return {i, loopup[target - nums[i]]};
            }
            loopup[nums[i]] = i;
        }
        return {};
    }
};