//
// Created by zhangqi on 2018/1/24.
//Time : O(logn)
//Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    int searchInsert(vector<int>& nums, int target) {
        int left = 0;
        int right = nums.size() ;
        while (left < right){
            const auto mid = left + (right - left) / 2;
            if(nums[mid] >= target){
                right = mid;
            } else{
                left = mid + 1;
            }
        }
        return left;
    }
};
