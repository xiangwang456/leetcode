//
// Created by zhangqi on 2017/11/3.
// Time:  O(n)
// Space: O(n)

#include <stack>
#include <unordered_map>
#include <string>

using  namespace std;


class Solution {
public:
    bool isValid(string s) {
        const  unordered_map<char, char> symbolPair = {{')', '('},
                                                        {']', '['},
                                                        {'}', '{'}};
        stack<char> parentheses;
        for(char ch: s) {
            const auto &iter = symbolPair.find(ch);
            if (iter != symbolPair.cend()) {
                if (parentheses.empty() || parentheses.top() != iter->second) {
                    return false;
                }
                parentheses.pop();
            } else {
                parentheses.push(ch);
            }
        }
        return parentheses.empty();

    }
};