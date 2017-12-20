//
// Created by zhangqi on 2017/12/20.
//Time : O(nlogn)
//Space: O(1)
#include <vector>
#include <unordered_map>

using namespace std;


class Solution {
public:
    vector<int> topKFrequent(vector<int>& nums, int k) {
        unordered_map<int, int> count;
        for(const auto &num : nums){
            ++count[num];
        }

        // 每个桶放数目相同的元素，桶的编号就是相同元素的数据，所以有所有元素个数+ 1 个桶 （如果只有一种数的话编号就是数目的个数，所以要有n+1）
        vector<vector<int>> buckets(nums.size() + 1);
        for(const auto &kv : count){
            buckets[kv.second].push_back(kv.first);
        }

        vector<int> ans;
        for(int i = buckets.size() - 1; i >= 0; i--){
            for(int j = 0; j < buckets[i].size(); j++){
                if(ans.size() < k){
                    ans.push_back(buckets[i][j]);
                }else{
                    break;
                }
            }
        }
        return ans;
    }
};