//
// Created by zhangqi on 2017/10/19.
//Time : O(n)
//Space : O(1)

#include <vector>
#include <string>
#include <limits>

using namespace std;

class Solution {
public:
    int myAtoi(string str) {
        if(str.empty()){
            return  0;
        }
        int i = 0;
        while(str[i]== ' ' || str[i] ==  '\t'){
            i++;
        }

        int sign = 1;
        if(str[i] == '+'){
            sign = 1;
            i++;
        } else if(str[i] == '-'){
            sign = -1;
            i++;
        }

        int ans = 0;
        for( ;i < str.size() && isdigit(str[i]); i++){
            if(ans > (numeric_limits<int>::max() - (str[i] - '0')) / 10){
                return  sign > 0 ? numeric_limits<int>::max() : numeric_limits<int>::min();
            }
            ans *= 10;
            ans += str[i] - '0';
        }
        return  sign * ans;
    }
};