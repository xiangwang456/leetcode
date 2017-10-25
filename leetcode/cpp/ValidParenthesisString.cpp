//
// Created by zz on 2017/10/25.

// Time:  O(n)
// Space: O(1)

#include <string>

using namespace std;

class Solution {
public:
    bool checkValidString(string s) {
        int lower = 0, upper = 0;
        for (char ch : s) {
            lower += ch == '(' ? 1 : -1;
            upper -= ch == ')' ? 1 : -1;
            if (upper < 0) {
                return false;
            }
            lower = max(lower, 0);
        }
        return lower == 0;
    }
};