//
// Created by zz on 2017/10/8.
// Time : O(n^2)
// Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    vector<vector<int>> generateMatrix(int n) {
        vector<vector<int>> ans(n, vector<int>(n));
        int num = 0;
        for (int left = 0, right = n - 1, top = 0, bottom = n - 1;
             left <= right && top <= bottom;
             left++, right--, top++, bottom--) {

            // 从左到右
            for (int i = left; i <= right; i++) {
                ans[top][i] = ++num;
            }

            // 从上到下
            for (int i = top + 1; i <= bottom; i++) {
                ans[i][right] = ++num;
            }

            // 从右到左
            for (int i = right - 1; top < bottom && i >= left; i--) {
                ans[bottom][i] = ++num;
            }

            // 从下到上
            for (int i = bottom - 1; left < right && i >= top + 1; i--) {
                ans[i][left] = ++num;
            }
        }
        return ans;


    }
};