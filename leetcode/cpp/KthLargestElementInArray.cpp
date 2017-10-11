//
// Created by zz on 2017/10/11.
// Time:  O(n) ~ O(n^2)
// Space: O(1)

#include <vector>

using namespace std;

class Solution {
public:
    int findKthLargest(vector<int> &nums, int k) {
        nth_element(nums.begin(), next(nums.begin(), k - 1), nums.end(), greater<int>());
        return *next(nums.begin(), k - 1);

    }
};