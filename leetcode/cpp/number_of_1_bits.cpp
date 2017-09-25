//
// Created by zz on 2017/9/26.
//

#include <cstdint>

class Solution {
public:
    int hammingWeight(uint32_t n) {
        int count = 32;
        int res = 0;
        while (count--) {
            if (n & 1 == 1)
                res++;
            n >>= 1;
        }
        return res;
    }

};