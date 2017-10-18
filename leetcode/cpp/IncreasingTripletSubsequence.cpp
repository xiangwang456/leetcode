//
// Created by zz on 2017/10/16.

// Time:  O(n)
// Space: O(1)

#include <vector>
#include <string>
#include <limits>


using namespace std;

class Solution {
public:
    bool increasingTriplet(vector<int> &nums) {
        int min = numeric_limits<int>::max(), second_min = numeric_limits<int>::max();
        for (auto &num : nums) {
            if (num <= min) {
                min = num;
            } else if (num <= second_min) {
                second_min = num;
            } else {
                return true;
            }
        }
        return false;
    }
};

