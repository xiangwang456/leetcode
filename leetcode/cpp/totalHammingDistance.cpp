//
// Created by zz on 2017/10/1.
//Time: O(n)
//Space: O(1)
//每个数从第一位开始算起，找出其中的距离，再累加

#include <vector>

class Solution {

public:
    int totalHammingDistance(std::vector<int> &nums) {
        int ans = 0;
        for (int i = 0; i < 8 * sizeof(int); i++) {
            std::vector<int> distiance(2);
            for (const int num : nums) {
                ++distiance[num >> i & 1];
            }
            ans += distiance[0] * distiance[1];
        }
        return ans;
    }
};