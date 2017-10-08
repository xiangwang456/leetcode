//
// Created by zz on 2017/10/8.
// Time : O(n)
// Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    int removeDuplicates(vector<int> &nums) {
        if (nums.empty()) {
            return 0;
        }

        int const k = 2;
        int left = 0, right = 1;

        for (; right < nums.size(); right++) {
            if (nums[left] != nums[right] ||
                (left - k + 1 < 0 || nums[left] != nums[left - k + 1])) {
                nums[++left] = nums[right];

            }

        }
        return left + 1;

    }
};