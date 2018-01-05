//
// Created by zhangqi on 2018/1/5.
//Time : O(n)
//Space : O(1)

#include <string>

using namespace std;

class Solution {
public:
    string reverseVowels(string s) {
        for(int i = 0, j = s.size() - 1; i < j;){
            if(!isVowel(s[i])){
                i++;
            }else if(!isVowel(s[j])){
                j--;
            }else{
                swap(s[i++], s[j--]);
            }

        }
        return s;
    }


private:
    const string vowel = "aeiou";
    bool isVowel(char ch){
        return vowel.find(tolower(ch)) != string::npos;

    }

};