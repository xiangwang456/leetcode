//
// Created by zhangqi on 2017/11/24.
//Time : O(n)
//Space : O(n)

#include <vector>
#include <string>
#include <c++/unordered_map>

using namespace std;

class Solution {
public:
    int lengthOfLongestSubstring(string s) {
        unordered_map<char, int> currence;
        size_t startIndex = 0, ans = 0;
        for(int i = 0; i < s.size(); i++){
            const auto it = currence.find(s[i]);
            if( it == currence.cend()){
                currence.emplace(s[i], i);
            } else{
                if(it->second >= startIndex){
                    ans = max(ans, i - startIndex);
                    startIndex = it->second + 1;
                }
                it->second = i;
            }
        }
        return max(ans, s.size() - startIndex);

    }
};

