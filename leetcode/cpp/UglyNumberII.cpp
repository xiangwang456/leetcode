//
// Created by zz on 2017/11/11.
// Time:  O(n)
// Space: O(n)

#include <vector>

using namespace std;


class Solution {
public:
    int nthUglyNumber(int n) {
        vector<int> uglyNumbers(n);
        int f2 = 2, f3 = 3, f5 = 5;
        int idx2 = 0, idx3 = 0, idx5 = 0;
        uglyNumbers[0] = 1;
        for (int i = 1; i < n; i++) {
            int minValue = min(f5, min(f2, f3));
            uglyNumbers[i] = minValue;
            if (minValue == f2) {
                f2 = 2 * uglyNumbers[++idx2];
            }
            if (minValue == f3) {
                f3 = 3 * uglyNumbers[++idx3];
            }
            if (minValue == f5) {
                f5 = 5 * uglyNumbers[++idx5];
            }

        }
        return uglyNumbers[n - 1];
    }
};