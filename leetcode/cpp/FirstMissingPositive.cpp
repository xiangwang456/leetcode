//
// Created by zz on 2017/10/7.
// Time : O
// Space :

#include <vector>


using namespace std;

class Solution {
public:
    int firstMissingPositive(vector<int> &nums) {

        for (int i = 0; i < nums.size();) {
            if (nums[i] > 0 && nums[i] <= nums.size() && nums[i] != nums[nums[i] - 1]) {
                swap(nums[i], nums[nums[i] - 1]);
            } else {
                i++;
            }
        }

        int ans = 0;
        for (; ans < nums.size() && nums[ans] == ans + 1; ans++);
        return ans + 1;
    }

    /*void swap(int *a, int *b){
        *a = *a + *b;
        *b = *a - *b;
        *a = *a - *b;
    }*/
};