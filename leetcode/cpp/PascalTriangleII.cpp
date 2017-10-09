//
// Created by zz on 2017/10/10.
// Time:  O(n^2)
// Space: O(1)

#include <vector>

using namespace std;

class Solution {
public:
    vector<int> getRow(int rowIndex) {
        vector<int> ans(rowIndex + 1);
        for (int i = 0; i < ans.size(); i++) {
            int prev_res = ans[0] = 1;
            for (int j = 1; j <= i; j++) {
                int temp = ans[j];
                ans[j] += prev_res;
                prev_res = temp;

            }
        }
        return ans;
    }
};