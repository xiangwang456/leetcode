//
// Created by zz on 2017/10/3.
//
//Space : O(1)
//Time : O(1)

#include <string>
#include <vector>

using namespace std;

class Solution {
public:
    vector<string> readBinaryWatch(int num) {
        vector<string> ans;
        for (int i = 0; i < 12; i++) {
            for (int j = 0; j < 60; j++) {
                if (bit_count(i) + bit_count(j) == num) {
                    string hour = to_string(i);
                    string min = j < 10 ? "0" + to_string(j) : to_string(j);
                    ans.push_back(hour + ":" + min);
                }
            }
        }
        return ans;

    }

    int bit_count(int n) {
        int count = 0;
        for (; n; n &= n - 1) {
            count++;
        }
        return count;
    }
};