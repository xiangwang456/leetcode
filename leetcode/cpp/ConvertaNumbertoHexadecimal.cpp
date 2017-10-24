//
// Created by zhangqi on 2017/10/23.

//Time: O(n)
//Space: O(1)


#include <string>
#include <algorithm>
using  namespace std;

class Solution {
public:
    string toHex(int num) {
        if(num == 0){
            return "0";
        }
        string ans;
        while(num && ans.length() != sizeof(int) * 2){
            int hex = num & 15;
            if(hex < 10){
                ans.push_back('0' + hex );
            }else{
                ans.push_back('a' + hex - 10);
            }
            num >>= 4;
        }
        reverse(ans.begin(), ans.end());
        return ans;
    }
};
