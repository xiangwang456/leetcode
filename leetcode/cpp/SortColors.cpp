//
// Created by zhangqi on 2017/12/12.
//
//Time : O(n)
//Space: O(1)
#include <vector>
#include <algorithm>

using namespace std;

class Solution {
public:
    void sortColors(vector<int>& nums) {
        int target = 1;
        int i = 0, j = 0, n = nums.size() - 1;
        for(; j <= n ;){
            if(nums[j] < target){
                swap(nums[i++], nums[j++]);
            } else if(nums[j] > target){
                swap(nums[j], nums[n--]);
            } else{
                j++;
            }
        }
    }
};