//
// Created by zz on 2017/10/17.
// Time : O(n)
// Space: O(1)
#include <string>
#include <vector>

using namespace std;


class Solution {
public:
    int maximumSwap(int num) {
        string digits = to_string(num);
        int max_idx = digits.size() - 1;
        int left = 0, right = 0;
        for (int i = digits.size() - 1; i >= 0; i--) {
            if (digits[i] > digits[max_idx]) {
                max_idx = i;
            } else if (digits[i] < digits[max_idx]) {
                left = i;
                right = max_idx;

            }
        }
        swap(digits[left], digits[right]);
        return stoi(digits);
    }
};