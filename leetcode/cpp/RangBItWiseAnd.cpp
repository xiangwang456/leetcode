//
// Created by zz on 2017/9/27.
//
//Time : O(1)
//Space : O(1)

class Solution {
public:
    int rangeBitWiseRangeAnd(int m, int n) {
        while (m < n) {
            n &= n - 1;  //将n最右边的1变为0
        }
        return n;
    }

};