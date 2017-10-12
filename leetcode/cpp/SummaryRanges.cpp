//
// Created by zz on 2017/10/12.
// Time:  O(n)
// Space: O(1)

#include <vector>
#include <string>

using namespace std;


class Solution {
public:
    vector<string> summaryRanges(vector<int> &nums) {
        vector<string> ranges;
        if (nums.size() == 0) {
            return ranges;
        }
        int start = nums[0], end = nums[0];
        for (int i = 1; i < nums.size(); i++) {
            if (i < nums.size() && nums[i] == end + 1) {
                end++;
            } else {
                auto range = to_string(start);
                if (start != end) {
                    range.append("->" + to_string(end));
                }
                ranges.push_back(range);
                if (i < nums.size()) {
                    start = end = nums[i];
                }
            }
        }

        return ranges;
    }
};
