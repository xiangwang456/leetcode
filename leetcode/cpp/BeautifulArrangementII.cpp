//
// Created by zz on 2017/10/17.
// Time : O(n)
// Space : O(1)

#include <vector>

using namespace std;


class Solution {
public:
    vector<int> constructArray(int n, int k) {
        int left = 1, right = n;
        vector<int> ans;
        while (left <= right) {
            ans.emplace_back(k % 2 == 0 ? right-- : left++);
            if (k > 1) {
                k--;
            }
        }
        return ans;
    }
};