//
// Created by zz on 2017/12/10.
//



#include <cstdlib>

class Solution {
public:
    double myPow(double x, int n) {
        double ans = 1;
        long long absN = abs(static_cast<long long>(n));
        while (absN > 0) {
            if (absN & 1) {
                ans *= x;
            }
            absN >>= 1;
            x *= x;
        }
        return n < 0 ? 1 / ans : ans;
    }
};