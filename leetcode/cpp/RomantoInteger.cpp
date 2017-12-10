//
// Created by zhangqi on 2017/12/8.
// Time:  O(n)
// Space: O(1)

#include <string>
#include <unordered_map>

using namespace std;


class Solution {
public:
    int romanToInt(string s) {
        unordered_map<char, int> numRoman = {{'I',    1}, {'V',   5}, {'X',  10},
                                              {'L',   50}, {'C', 100}, {'D', 500},
                                              {'M', 1000}};
        int roman = 0;
        for(int i = 0; i < s.length(); i++){
            if(i > 0 && numRoman[s[i]] > numRoman[s[i - 1]]){
                roman += numRoman[s[i]] - 2 * numRoman[s[i - 1]];
            } else{
                roman += numRoman[s[i]];
            }

        }
        return roman;
    }
};