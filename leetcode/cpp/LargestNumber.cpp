//
// Created by zhangqi on 2017/12/19.
//Time : O(nlogn)
//Space: O(1)

#include <vector>
#include <string>
#include <algorithm>

using  namespace std;
class Solution {
public:
    string largestNumber(vector<int>& nums) {
        sort(nums.begin(), nums.end(), [](const int i, const int j){
            return to_string(i) + to_string(j) > to_string(j) + to_string(i);
        });

        string ans;
        for(const auto &num : nums){
            ans.append(to_string(num));
        }

        if(!nums.empty() && ans[0] == '0'){
            return "0";
        }

        return ans;
    }
};