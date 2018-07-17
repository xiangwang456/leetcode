//
// Created by zhangqi on 2017/12/21.
//Time : O(nlog(n))
//Space : O(n)


#include <vector>
#include <string>
#include <unordered_map>

using namespace std;

class Solution {
public:
    vector<string> topKFrequent(vector<string>& words, int k) {
        unordered_map<string, int> counts;
        for(const auto &word : words){
            counts[word]++;
        }

        vector<vector<string>> buckets(words.size() + 1);
        for(const auto &kvp : counts){
            buckets[kvp.second].push_back(kvp.first);
        }

        vector<string> ans;
        int index = 0;
        for(int i = buckets.size() - 1; i >= 0; i--){
            for(int j = 0 ; j < buckets[i].size(); j++){
                sort(buckets[i].begin(), buckets[i].end());
                if(index < k){
                    ans.push_back(buckets[i][j]);
                }
            }
        }
        return ans;

    }
};