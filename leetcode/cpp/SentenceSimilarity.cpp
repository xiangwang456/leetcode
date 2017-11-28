//
// Created by zhangqi on 2017/11/28.
//Time : O(n)
//Space : O(n)

#include <string>
#include <unordered_map>
#include <vector>
#include <c++/numeric>
#include <c++/bits/unordered_set.h>

using namespace std;
class Solution {
public:
    bool areSentencesSimilar(vector<string>& words1, vector<string>& words2, vector<pair<string, string>> pairs) {
        if(words1.size() != words2.size()){
            return false;
        }

        unordered_map<string, unordered_set<string>> loopup;
        for(const auto pair : pairs){
            //loopup[pair.first] = pair.second;
            if(loopup.count(pair.first)){
                loopup[pair.first].emplace(pair.second);
            } else{
                unordered_set<string> set;
                set.emplace(pair.second);
                loopup.insert(make_pair(pair.first, set));
            }

        }
        for(int i = 0; i < words1.size(); i++){
            if(words1[i] != words2[i] && (!loopup[words1[i]].count(words2[i])) || !loopup[words2[i]].count(words1[i])){
                return false;
            }
        }

        return true;
    }
};