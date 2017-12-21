//
// Created by zhangqi on 2017/12/21.
//Time : O(n)
//Space : O(n)


#include <vector>
#include <c++/unordered_map>



using namespace std;
class Solution {
public:
    string frequencySort(string s) {
        unordered_map<char, int> counts;
        for(const auto & ch : s){
            counts[ch]++;
        }
        vector<string > freq(s.size() + 1);
        for(const auto &kv : counts){
            freq[kv.second].push_back(kv.first);
        }

        string ans;
        for(int i = freq.size() - 1; i >= 0; i--){
            for(const auto &str : freq[i]){
                ans += string( i, str);
            }

        }
        return ans;

    }
};