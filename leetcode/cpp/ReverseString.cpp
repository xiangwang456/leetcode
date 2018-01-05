//
// Created by zhangqi on 2018/1/5.
//


//Time : O(n)
//Space : O(1)

#include <string>

using namespace std;

class Solution {
public:
    string reverseString(string s) {
        for(int i = 0, j = s.size() - 1; i <j ; i++, j--){
            swap(s[i], s[j]);
        }
        return s;
    }
};