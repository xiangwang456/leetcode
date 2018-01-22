//
// Created by zz on 2018/1/22.
//
//Time : O(logn)
//Space : O(1)

#include <vector>

using namespace std;


class Solution {
public:
    vector<int> searchRange(vector<int> &nums, int target) {
        const auto begin = lower_bound(nums, target);
        const auto end = upper_bound(nums, target);
        if (begin < nums.size() && nums[begin] == target) {
            return {begin, end - 1};
        }
        return {-1, -1};
    }

private:
    int lower_bound(vector<int> &nums, int target) {
        int left = 0;
        int right = nums.size();
        while (left < right) {
            const auto mid = left + (right - left) / 2;
            if (nums[mid] >= target) {
                right = mid;
            } else {
                left = mid + 1;
            }
        }
        return left;
    }

    int upper_bound(vector<int> &nums, int target) {
        int left = 0;
        int right = nums.size();
        while (left < right) {
            const auto mid = left + (right - left) / 2;
            if (nums[mid] > target) {
                right = mid;
            } else {
                left = mid + 1;
            }
        }
        return left;
    }
};