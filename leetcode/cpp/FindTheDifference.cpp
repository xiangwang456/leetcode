//
// Created by zz on 2017/10/5.
//
#include <numeric>
#include <string>
#include <functional>

using namespace std;

class Solution {
public:
    char findTheDifference(string s, string t) {
        return accumulate(s.begin(), s.end(), 0, bit_xor<int>()) ^ accumulate(t.begin(), t.end(), 0, bit_xor<int>());
    }
};