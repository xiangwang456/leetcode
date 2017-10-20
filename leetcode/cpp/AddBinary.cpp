//
// Created by zhangqi on 2017/10/20.
//Time : O(n )
//Space : O(1)

#include <string>
#include <algorithm>

using  namespace std;
class Solution {
public:
    string addBinary(string a, string b) {
        int carry = 0;
        string res;
        for(auto a_it = a.rbegin(),b_it = b.rbegin(); a_it != a.rend() || b_it != b.rend(); ){
            auto a_val = a_it != a.rend() ? *a_it - '0' : 0;
            auto b_val = b_it != b.rend() ? *b_it - '0' : 0;
            auto sum = (a_val + b_val + carry ) % 2;
            carry = (a_val + b_val + carry ) / 2;
            res.push_back(sum + '0');
            if(a_it != a.rend()){
                a_it++;
            }
            if(b_it != b.rend()){
                b_it++;
            }

        }
        if(carry){
            res.push_back(carry + '0');
        }
        reverse(res.begin(),res.end());
        return res;
    }
};
