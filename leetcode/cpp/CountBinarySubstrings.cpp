//
// Created by zhangqi on 2017/10/24.
//Time: O(n)
//Space: O(1)


#include <string>
#include <algorithm>
using  namespace std;

class Solution {
public:
    int countBinarySubstrings(string s) {
        int ans = 0 ,prev = 0, cur = 1;
        for(int i = 1; i < s.length(); i++){
            if(s[i] != s[i - 1]){
                ans += min(prev,cur);
                prev = cur;
                cur = 1;
            } else{
                cur++;
            }
        }

        ans += min(prev,cur);

        return ans;
    }


};
