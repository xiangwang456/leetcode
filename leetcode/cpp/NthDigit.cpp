//
// Created by zz on 2017/12/18.

//Time : O(log n)
//Space : O(1)

#include <string>

using namespace std;

class Solution {
public:
    int findNthDigit(int n) {
        long long len = 1, cnt = 9, start = 1;
        while (n > len * cnt) {
            n -= len * cnt;
            len++;
            cnt *= 10;
            start *= 10;
        }
        start += (n - 1) / len;
        string num = to_string(start);
        return num[(n - 1) % len] - '0';
    }
};