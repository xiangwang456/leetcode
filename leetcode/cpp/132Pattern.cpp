//
// Created by zz on 2017/11/8.
// Time:  O(n)
// Space: O(n)

#include <stack>
#include <vector>

using namespace std;

class Solution {
public:
    bool find132pattern(vector<int> &nums) {
        int ak = numeric_limits<int>::min();
        stack<int> s;
        for (int i = nums.size() - 1; i >= 0; i--) {
            if (nums[i] < ak) {
                return true;
            } else {
                while (!s.empty() && nums[i] > s.top()) {
                    ak = s.top();
                    s.pop();
                }
            }
            s.push(nums[i]);

        }
        return false;
    }
};