//
// Created by zhangqi on 2018/1/29.
// Time:  O(logn)
// Space: O(1)

#include <vector>

using namespace std;

class Solution {
public:
    bool search(vector<int> &nums, int target) {
        int left = 0, right = nums.size() - 1;

        while (left <= right) {
            int mid = left + (right - left) / 2;
            if (nums[mid] == target) {
                return true;
            } else if (nums[mid] == nums[left]) {
                ++left;
            } else if ((nums[mid] > nums[left] && nums[left] <= target && target < nums[mid]) ||  //左边有序
                       (nums[mid] < nums[left] && !(nums[mid] < target && target <= nums[right]))) {  // 同样，如果nums[mid] < nums[left] 说明左边有序，右边乱序
                right = mid - 1;
            } else {
                left = mid + 1;
            }
        }

        return false;
    }
};