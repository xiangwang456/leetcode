//
// Created by zhangqi on 2017/10/20.
//Time : O(n )
//Space : O(1)

#include <string>
#include <algorithm>

using namespace std;
class Solution {
public:
    int lengthOfLastWord(string s) {
        const auto is_space = [](char c){return isspace(c);};
        const auto begin = find_if_not(s.rbegin(), s.rend(), is_space);
        const auto end = find_if(begin, s.rend(), is_space);
        return distance(begin, end);
    }
};