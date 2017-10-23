//
// Created by zz on 2017/10/23.
// Time:  O(n)
// Space: O(n)

#include <string>
#include <vector>


using namespace std;

class Solution {
public:
    int countSegments(string s) {

        int ans = static_cast<int>(!s.empty() && s.back() != ' ');
        for (int i = 1; i < s.size(); i++) {
            if (s[i] == ' ' && s[i - 1] != ' ') {
                ans++;
            }
        }
        return ans;
    }
};