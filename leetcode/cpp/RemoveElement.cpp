//
// Created by zz on 2017/10/7.
//

//Space: O(1)
//Time: O(n)

#include <vector>

using namespace std;

class Solution {
public:
    int removeElement(vector<int> &nums, int val) {
        int last = -1;
        for (int i = 0; i < nums.size(); i++) {
            if (nums[i] != val) {
                nums[++last] = nums[i];
            }
        }
        return last + 1;
    }
};