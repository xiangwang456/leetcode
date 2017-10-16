//
// Created by zz on 2017/10/16.
//


#include <vector>
#include <random>

using namespace std;


class Solution {

public:

    Solution(vector<int> nums) : nums_(nums) {

    }

    vector<int> reset() {
        return nums_;
    }

    vector<int> shuffle() {
        vector<int> nums{nums_};
        default_random_engine engine((random_device()()));

        for (int i = 0; i < nums.size(); i++) {
            uniform_int_distribution<int> dis(i, static_cast<int>(nums.size()) - 1);
            swap(nums[i], nums[dis(engine)]);
        }

    }

private:
    vector<int> nums_;
};