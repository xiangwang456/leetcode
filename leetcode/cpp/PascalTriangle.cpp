//
// Created by zz on 2017/10/10.
// Time:  O(n^2)
// Space: O(1)

#include <vector>

using namespace std;

class Solution {
public:
    vector<vector<int>> generate(int numRows) {
        vector<vector<int>> ans;
        for (int i = 0; i < numRows; i++) {
            ans.push_back(vector<int>({}));
            for (int j = 0; j <= i; j++) {
                if (j == 0 || j == i) {
                    ans[i].push_back(1);
                } else {
                    ans[i].push_back(ans[i - 1][j - 1] + ans[i - 1][j]);
                }
            }
        }
        return ans;

    }
};