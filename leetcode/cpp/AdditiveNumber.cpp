//
// Created by zhangqi on 2017/10/23.
// Time:  O(n^3)
// Space: O(n)

#include <string>
#include <algorithm>

using namespace std;

class Solution {
public:
    bool isAdditiveNumber(string num) {
        for(int i = 1; i < num.size(); i++){
            for(int j = i + 1; j < num.size(); j++){
                string s1 = num.substr(0, i), s2 = num.substr(i, j - i);
                if((s1.size() > 1 && s1[0] == '0') || (s2.size() > 1 && s2[0] == '0')){
                    continue;
                }
                string next = add(s1, s2);
                string cur = s1 + s2 + next;

                while(cur.size() < num.size()){
                    s1 = s2;
                    s2 = next;
                    next = add(s2, s1);
                    cur +=  next;
                }
                if(cur == num){
                    return  true;
                }
            }
        }
        return  false;
    }

private:
    string add(string s1, string s2){
        string ans;
        int carry = 0;
        reverse(s1.begin(), s1.end());
        reverse(s2.begin(), s2.end());
        for(auto iter1 = s1.begin(), iter2 = s2.begin(); iter1 != s1.end() || iter2 != s2.end(); ){
            if(iter1 != s1.end() || iter2 != s2.end()){
                int val1 = iter1 == s1.end() ? 0 : *iter1 - '0';
                int val2 = iter2 == s2.end() ? 0 : *iter2 - '0';
                int sum = (val1 + val2 + carry) % 10;
                carry = (val1 + val2 + carry) / 10;
                ans.push_back(sum + '0');
            }
            if(iter1 != s1.end()){
                iter1++;
            }
            if(iter2 != s2.end()){
                iter2++;
            }
        }
        if(carry > 0){
            ans.push_back(carry + '0');
        }
        reverse(ans.begin(), ans.end());
        return  ans;
    }
};