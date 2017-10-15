//
// Created by zz on 2017/10/15.
// Time : O(n)
// Space : O(1)

#include <vector>

using namespace std;


class Solution {
public:
    bool searchMatrix(vector<vector<int>> &matrix, int target) {
        int m = matrix.size();
        if (m == 0) {
            return false;
        }

        int n = matrix[0].size();
        if (n == 0) {
            return false;
        }

        int i = 0, j = n - 1;
        while (i < m && j >= 0) {
            if (matrix[i][j] == target) {
                return true;
            } else if (matrix[i][j] > target) {
                j--;
            } else {
                i++;
            }
        }

        return false;
    }
};