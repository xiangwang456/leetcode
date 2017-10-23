//
// Created by zhangqi on 2017/10/23.
// Time:  O(n)
// Space: O(1)

#include <string>
#include <vector>


using namespace std;
class Solution {
public:
    bool canConstruct(string ransomNote, string magazine) {
        vector<int> counts(26);
        int letters = 0;
        for(char ch : ransomNote){
            if(counts[ch - 'a']++ == 0 ){
                letters++;
            }
        }

        for(char ch : magazine){
            if(--counts[ch - 'a'] == 0 && --letters == 0 ){
                return  true;
            }
        }
        return  letters == 0;
    }
};