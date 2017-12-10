//
// Created by zhangqi on 2017/11/24.
//Time : O(n)
//Space : O(n)

#include <vector>
#include <string>
#include <c++/unordered_map>
#include <c++/set>
#include <c++/map>

using namespace std;

class Solution {
public:
    bool areSentencesSimilar(vector<string>& words1, vector<string>& words2, vector<pair<string, string>> pairs) {
        if (words1.size() != words2.size()) return false;
        map<string, set<string>> map;
        for (pair<string, string> p : pairs)
            map[p.first].insert(p.second);

        for (int i = 0; i < words1.size(); i++)
            if (words1[i] != words2[i] && !map[words1[i]].count(words2[i]) && !map[words2[i]].count(words1[i]))
                return false;
        return true;
    }
};
