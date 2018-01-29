//
// Created by zhangqi on 2018/1/29.
// Time:  O(logn)
// Space: O(1)

#include <vector>

using namespace std;

class Solution {
public:
    int findMin(vector<int>& nums) {
        int left = 0;
        int right = nums.size() - 1;
        while (left < right && nums[left] >= nums[right]){  // 记得要有等于 3 1 3
            int mid = left + (right - left) / 2;
            if(nums[left] == nums[mid]){
                left++;
            } else if(nums[left] > nums[mid]){
                right = mid;
            } else{
                left = mid + 1;
            }
        }
        return nums[left];
    }
};
