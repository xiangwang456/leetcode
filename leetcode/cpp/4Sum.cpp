//
// Created by zz on 2017/10/6.
//

//Time : O(n^2)
//Space: O(1)
#include <vector>

using namespace std;

class Solution {
public:
    vector<vector<int>> fourSum(vector<int> &nums) {
        vector<vector<int>> ans;
        sort(nums.begin(), nums.end());

        int const target = 0;
        for (int m = 0; m < static_cast<int>(nums.size()) - 3; m++) {
            if (m == 0 || nums[m] != nums[m - 1]) { //skip duplicated
                for (int n = m + 1; n < static_cast<int>(nums.size() - 2); n++) {
                    if (nums[n] != nums[n - 1]) {
                        for (int j = n + 1, k = static_cast<int>(nums.size()) - 1; j < k;) {
                            if (j > n + 1 && nums[j] == nums[j - 1]) { //skip duplicated
                                j++;
                            } else if (k != nums.size() - 1 && nums[k] == nums[k + 1]) { //skip duplicated
                                k--;
                            } else {
                                int sum = nums[m] + nums[n] + nums[j] + nums[k];
                                if (sum < target) {
                                    j++;
                                } else if (sum > target) {
                                    k--;
                                } else {
                                    ans.push_back({nums[m], nums[n], nums[j], nums[k]});
                                    j++;
                                    k--;
                                }

                            }
                        }
                    }
                }
            }

        }
        return ans;
    }
};