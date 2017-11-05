//
// Created by zz on 2017/11/5.
// Time:  O(n)
// Space: O(1)

#include <stack>
#include <string>

using namespace std;


class Solution {
public:
    string decodeString(string s) {
        string curr;
        int n = 0;
        stack<int> nums;
        stack<string> strs;
        for (char ch : s) {
            if (isdigit(ch)) {
                n = 10 * n + ch - '0';

            } else if (ch == '[') {
                nums.push(n);
                n = 0;
                strs.push(curr);
                curr.clear();

            } else if (ch == ']') {
                for (int i = 0; i < nums.top(); i++) {
                    strs.top() += curr;
                }
                nums.pop();
                curr = strs.top();
                strs.pop();

            } else {
                curr += ch;
            }
        }
        return strs.empty() ? curr : strs.top();
    }
};