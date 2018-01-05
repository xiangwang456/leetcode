//
// Created by zhangqi on 2018/1/5.
//Time : O(m + n)
//Space : O(min (m, n))

#include <vector>
#include <unordered_set>

using namespace std;

class Solution {
public:
    vector<int> intersection(vector<int>& nums1, vector<int>& nums2) {
        if(nums1.size() > nums2.size()){
            return intersection(nums2, nums1);
        }

        unordered_set<int> loopup {nums1.begin(), nums1.end()};
        vector<int> ans;
        for(const auto &num : nums2){
            if(loopup.count(num)){
                ans.push_back(num);
                loopup.erase(num);
            }
        }
        return ans;
    }
};