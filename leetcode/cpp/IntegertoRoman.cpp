//
// Created by zhangqi on 2017/12/8.
//

#include <string>
#include <vector>

using namespace std;
class Solution {
public:
    string intToRoman(int num) {
        const vector<string> romans = {"M", "CM", "D", "CD", "C", "XC", "L",
                                     "XL", "X", "IX", "V", "IV", "I"};
        const vector<int> nums = {1000, 900, 500, 400, 100, 90,
                                  50, 40, 10, 9, 5, 4, 1};

        string ans;
        int i = 0;
        while(num > 0){
            int times = num / nums[i];
            while(times--){
                num -= nums[i];
                ans.append(romans[i]);
            }
            i++;
        }
        return ans;
    }
};