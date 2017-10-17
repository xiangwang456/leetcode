//
// Created by zz on 2017/10/17.
// Time : O(n)
// Space: O(1)
#include <string>
#include <vector>

using namespace std;

class Solution {
public:
    int findLengthOfLCIS(vector<int> &nums) {

        if (nums.empty()) {
            return 0;
        }

        if (nums.size() == 1) {
            return 1;
        }

        int ans = 1, cnt = 1;

        for (int i = 1; i < nums.size(); i++) {
            if (nums[i] > nums[i - 1]) {
                cnt++;
            } else {

                ans = max(cnt, ans);
                cnt = 1;
            }
        }
        return max(ans, cnt);

    }
};