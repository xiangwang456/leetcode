//
// Created by zz on 2017/10/17.
// Time : O(n)
// Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    vector<int> findDisappearedNumbers(vector<int> &nums) {
        vector<int> ans;
        for (int i = 0; i < nums.size();) {
            if (nums[i] != nums[nums[i] - 1]) {
                swap(nums[i], nums[nums[i] - 1]);
            } else {
                i++;
            }
        }

        for (int i = 0; i < nums.size(); i++) {
            if (nums[i] != i + 1) {
                ans.push_back(i + 1);
            }
        }
        return ans;
    }
};