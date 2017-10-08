//
// Created by zz on 2017/10/8.
// Time : O(n2)
// Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    vector<int> plusOne(vector<int> &digits) {
        vector<int> ans(digits);
        int carry = 1;
        for (auto iter = ans.rbegin(); iter != ans.rend(); iter++) {
            *iter += carry;
            carry = *iter / 10;
            *iter = *iter % 10;
        }
        if (carry != 0) {
            ans.emplace(ans.begin(), carry);
        }
        return ans;

    }
};