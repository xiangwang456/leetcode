//
// Created by zz on 2017/10/23.
//Time : O(n )
//Space : O(1)

#include <string>

using namespace std;

class Solution {
public:
    bool judgeCircle(string moves) {
        int h = 0, v = 0;
        for (const auto move : moves) {
            switch (move) {
                case 'U' :
                    v++;
                    break;
                case 'D' :
                    v--;
                    break;
                case 'L' :
                    h++;
                    break;
                case 'R' :
                    h--;
                    break;
            }
        }
        return h == 0 && v == 0;
    }
};