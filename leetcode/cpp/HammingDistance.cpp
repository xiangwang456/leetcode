//
// Created by zz on 2017/10/2.
//Space :O(1)
//Time : O(1)

class Solution {
public:
    int hammingDistance(int x, int y) {
        int distance = 0;
        for (int z = x ^y; z; z &= z - 1) {
            distance++;
        }
        return distance;
    }
};