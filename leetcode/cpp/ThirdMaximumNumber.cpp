//
// Created by zz on 2017/10/17.
// Time : O(n)
// Space : O(1)

#include <vector>
#include <set>
#include <limits>

using namespace std;

class Solution1 {
public:
    int thirdMax(vector<int> &nums) {
        set<int> top;
        for (const auto &num : nums) {
            top.insert(num);
            if (top.size() > 3) {
                top.erase(top.begin());
            }
        }
        return top.size() == 3 ? *top.begin() : *top.rbegin();
    }
};

class Solution2 {
public:
    int thirdMax(vector<int> &nums) {
        int count = 0;
        vector<int> top(3, numeric_limits<int>::min());

        for (const auto &num : nums) {
            if (num > top[0]) {
                top[2] = top[1];
                top[1] = top[0];
                top[0] = num;
                ++count;
            } else if (num != top[0] && num > top[1]) {
                top[2] = top[1];
                top[1] = num;
                ++count;
            } else if (num != top[0] && num != top[1] && num >= top[2]) {
                top[2] = num;
                ++count;
            }
        }

        if (count < 3) {
            return top[0];
        }
        return top[2];
    }
};