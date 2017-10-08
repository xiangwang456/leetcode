//
// Created by zz on 2017/10/8.
// Time : O(n^2)
// Space : O(1)
// 很多细节： 1、矩阵为空 2、行列遍历时小心重复 3、只有一行或者只有一列的情况注意判断重复 4、最后从下向上时记得第一个数已经遍历过了

#include <vector>

using namespace std;


class Solution {
public:
    vector<int> spiralOrder(vector<vector<int>> &matrix) {

        vector<int> ans;
        if (matrix.empty()) {
            return ans;
        }
        for (int left = 0, right = matrix[0].size() - 1, top = 0, bottom = matrix.size() - 1;
             left <= right && top <= bottom;
             left++, right--, top++, bottom--
                ) {

            //从左到右
            for (int i = left; i <= right; i++) {
                ans.push_back(matrix[top][i]);
            }

            //从上到下
            for (int i = top + 1; i <= bottom; i++) {
                ans.push_back(matrix[i][right]);
            }

            //从右到左
            for (int i = right - 1; top < bottom && i >= left; i--) {
                ans.push_back(matrix[bottom][i]);
            }


            //从下到上
            for (int i = bottom - 1; left < right && i >= top + 1; i--) {
                ans.push_back(matrix[i][left]);
            }


        }

        return ans;
    }
};