//
// Created by zz on 2017/10/17.
// Time : O(n)
// Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    double findMaxAverage(vector<int> &nums, int k) {
        double sum = 0;
        for (int i = 0; i < k; i++) {
            sum += nums[i];
        }

        double total = sum;
        for (int i = k; i < nums.size(); i++) {
            sum += nums[i] - nums[i - k];
            total = max(sum, total);
        }
        return total / k;
    }
};