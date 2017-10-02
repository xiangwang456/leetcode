//
// Created by zz on 2017/10/3.
//Space : O(1)
//Time : O(1)

class Solution {
public:
    int getSum(int x, int y) {
        while (y) {
            int carry = x & y;
            x = x ^ y;
            y = carry << 1;
        }
        return x;
    }
};