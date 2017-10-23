//
// Created by zhangqi on 2017/10/20.
//Time : O(n * k) k longest common prefix
//Space : O(1)


#include <string>

using namespace std;

class Solution {
public:
    bool isPalindrome(string s) {
        auto left = s.begin();
        auto right = prev(s.end());
        while(left < right){
            if(!isalnum(*left)){
                left++;
            }else if(!isalnum(*right)){
                right--;
            }else if(tolower(*left) != tolower(*right)){
                return false;
            }else{
                left++, right--;

            }
        }
        return  true;
    }
};