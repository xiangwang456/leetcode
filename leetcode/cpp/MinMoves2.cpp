//
// Created by zz on 2017/10/3.
// Time : O(n)
// Space: O(n)

#include <iostream>
#include <vector>

using namespace std;

class Solution {

public:
    int minMoves2(vector<int> &nums) {

        auto it = nums.begin() + nums.size() / 2;
        nth_element(nums.begin(), it, nums.end());
        int ans = 0;
        for (const auto &num : nums) {
            ans += abs(num - *it);
        }
        return ans;
    }
};

