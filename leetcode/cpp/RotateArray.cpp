//
// Created by zz on 2017/10/9.
//

// Time : O(n)
// Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    void rotate(vector<int> &nums, int k) {
        if (nums.empty()) {
            return;
        }
        k %= nums.size();
        reverse(nums.begin(), nums.begin() + nums.size() - k);
        reverse(nums.begin() + nums.size() - k, nums.end());
        reverse(nums.begin(), nums.end());

    }
};