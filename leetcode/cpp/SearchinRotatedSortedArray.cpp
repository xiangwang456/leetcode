//
// Created by zhangqi on 2018/1/29.
//

// Time:  O(logn)
// Space: O(1)

#include <vector>

using namespace std;

class Solution {
public:
    int search(vector<int>& nums, int target) {
        int left = 0;
        int right = nums.size() - 1;
        while (left <= right){
            int mid = left + (right - left) / 2;
            if(nums[mid] == target){
                return mid;
            }
            if((nums[mid] >= nums[left] && nums[left] <= target && target < nums[mid] ) ||
            nums[mid] < nums[left] && !(nums[mid] < target && target <= nums[right])){
                right = mid - 1;
            } else{
                left = mid + 1;
            }
        }
        return  -1;
    }
};