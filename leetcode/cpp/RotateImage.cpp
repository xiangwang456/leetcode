//
// Created by zz on 2017/10/8.
// Time : O(n^2)
// Space : O(1)

#include <vector>

using namespace std;

class Solution {
public:
    void rotate(vector<vector<int>> &matrix) {
        int n = matrix.size();
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n - j; j++) {
                // matrix[i][j] = matrix[n - 1 - i ][ n - 1 - j];
                swap(matrix[i][j], matrix[n - 1 - j][n - 1 - i]);
            }
        }

        for (int i = 0; i < n / 2; i++) {
            for (int j = 0; j < n; j++) {
                swap(matrix[i][j], matrix[n - 1 - i][j]);
            }

        }
    }
};