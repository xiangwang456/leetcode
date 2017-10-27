//
// Created by zz on 2017/10/25.
// Time:  O(n)
// Space: O(1)

#include <string>
#include <algorithm>

using namespace std;

class Solution {
public:
    string reverseWords(string s) {
        for (int i = 0, j = 0; j <= s.size(); j++) {
            if (j == s.size() || s[j] == ' ') {
                reverse(s.begin() + i, s.begin() + j);
                i = j + 1;
            }
        }
        return s;
    }
};