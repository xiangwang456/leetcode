//
// Created by zz on 2017/10/6.
//

//Time : O(n^2)
//Space: O(1)
#include <vector>
#include <algorithm>

using namespace std;

class Solution {
public:
    vector<vector<int>> threeSum(vector<int> &nums) {
        vector<vector<int>> ans;
        sort(nums.begin(), nums.end());

        int const target = 0;
        for (int i = 0; i < static_cast<int>(nums.size()) - 2; i++) {
            if (i == 0 || nums[i] != nums[i - 1]) { //skip duplicated
                for (int j = i + 1, k = static_cast<int>(nums.size()) - 1; j < k;) {
                    if (j > i + 1 && nums[j] == nums[j - 1]) { //skip duplicated
                        j++;
                    } else if (k != nums.size() - 1 && nums[k] == nums[k + 1]) { //skip duplicated
                        k--;
                    } else {
                        if (nums[i] + nums[j] + nums[k] < target) {
                            j++;
                        } else if (nums[i] + nums[j] + nums[k] > target) {
                            k--;
                        } else {
                            ans.push_back({nums[i], nums[j], nums[k]});
                            j++;
                            k--;
                        }

                    }
                }
            }

        }
        return ans;
    }
};