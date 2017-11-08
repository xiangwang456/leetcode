//
// Created by zz on 2017/11/8.
// Time:  O(n)
// Space: O(n)

#include <stack>
#include <string>
#include <vector>

using namespace std;

class Solution {
public:
    int calPoints(vector<string> &ops) {
        stack<int> s;
        for (auto &str : ops) {
            if (str == "+") {
                int v1 = s.top();
                s.pop();
                int v2 = s.top() + v1;
                s.push(v1);
                s.push(v2);
            } else if (str == "C") {
                s.pop();
            } else if (str == "D") {
                s.push(s.top() * 2);
            } else {

                s.push(atoi(str.c_str()));
            }
        }
        int sum = 0;
        while (!s.empty()) {
            sum += s.top();
            s.pop();
        }
        return sum;
    }
};