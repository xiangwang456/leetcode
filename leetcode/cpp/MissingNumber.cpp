//
// Created by zz on 2017/9/27.
//

//Time : O(n)
//Space : O(1)

#include <vector>

class Solution {
public:
    int missingNumber(std::vector<int> &nums) {
        int n = nums.size();
        int res = 0;
        for (int i = 0; i < n; i++) {
            res ^= nums[i] ^ (i + 1);
        }
        return res;
    }
};