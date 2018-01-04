//
// Created by zhangqi on 2018/1/4.


//Time : O(n)
//Space : O(1)

#include <vector>

using namespace std;


class Solution {
public:
    void moveZeroes(vector<int>& nums) {
        int position = 0;
        for(const auto &num : nums){
            if(num){
                swap(nums[position++], num);
            }
        }
    }
};