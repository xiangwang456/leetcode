//
// Created by zz on 2017/10/9.
//

// Time : O(n)
// Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    int majorityElement(vector<int> &nums) {
        int cnt = 0;
        int ans = nums[0];
        for (int num : nums) {
            if (num == ans) {
                cnt++;
            } else {
                cnt--;
                if (cnt == 0) {
                    ans = num;
                    cnt = 1;
                }
            }
        }
        return ans;

    }
};