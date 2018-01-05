//
// Created by zhangqi on 2018/1/5.
//Time : O(n)
//Space : O(n)

#include <vector>

using namespace std;

class Solution {
public:
    bool checkInclusion(string s1, string s2) {
        vector<int > count(256);
        for(const auto &ch : s1){
            count[ch]++;
        }
        for(int i = 0 , l = s1.length(); i < s2.length(); i++){
            if(count[s2[i]]-- > 0){
                l--;
            }
            if(l == 0){
                return true;
            }

            int start = i + 1 - s1.length();
            if(start > 0 && ++count[s2[start]] > 0){
                l++;
            }
        }
        return false;
    }
};