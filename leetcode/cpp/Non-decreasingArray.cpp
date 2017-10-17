//
// Created by zz on 2017/10/17.
// Time : O(n)
// Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    bool checkPossibility(vector<int> &nums) {
        if (nums.empty()) {
            return false;
        }
        int cnt = 0;
        int prev = nums[0];
        for (int i = 1; i < nums.size(); i++) {
            if (nums[i] < prev) {
                if (++cnt > 1) {
                    return false;
                } else {
                    if (i == 1 || nums[i - 2] <= nums[i]) {
                        prev = nums[i];
                    }
                }

            } else {
                prev = nums[i];
            }

        }
        return true;
    }
};