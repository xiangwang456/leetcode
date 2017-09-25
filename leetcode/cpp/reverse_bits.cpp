//
// Created by zz on 2017/9/26.
//

#include <cstdint>

class Solution{
public:
    uint32_t reverse_bits(uint32_t n){
        uint32_t  res = 0;
        int count = 32;
        while(count--){
            res <<= 1;
            res |= n & 1;
            n >>= 1;
        }
        return res;
    }
};