//
// Created by zz on 2017/9/30.
//

//将所有的数（除其中的一个重复的数）置为负值
// Time : O(n)
// Space : O(n)

#include <cmath>
#include <vector>

using namespace std;

class Solution {
public:
    vector<int> findErrorNums(vector<int> &nums) {
        vector<int> ans;
        for (const int num : nums) {
            if (nums[abs(num) - 1] < 0)
                ans.push_back(abs(num));    //重复的数
            else
                nums[abs(num) - 1] *= -1;

        }
        for (int i = 0; i < nums.size(); i++) {
            if (nums[i] > 0)
                ans.push_back(i + 1);       //没出现过的数
            else
                nums[i] *= -1;
        }
        return ans;

    }
};