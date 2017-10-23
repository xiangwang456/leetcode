//
// Created by zhangqi on 2017/10/23.
//Time : O(n )
//Space : O(1)

#include <string>
#include <algorithm>
#include <sstream>

using namespace std;

class Solution1 {
public:
    void reverseWords(string &s) {
        // Reverse the whole string first.
        reverse(s.begin(), s.end());

        int storeIndex = 0;
        for(int i = 0; i < s.size(); i++){
           if(s[i] != ' '){
               if( storeIndex != 0){
                   s[storeIndex++] = ' ';
               }
               int j = i;
               while(j < s.size() && s[j] != ' '){
                   s[storeIndex++] = s[j++];
               }
               reverse(s.begin() + storeIndex - (j - i), s.begin() + storeIndex );
               i = j;
           }
        }
        s.resize(storeIndex);
    }
};


class Solution2 {
public:
    void reverseWords(string &s) {
        istringstream is(s);
        string temp;
        is >> s;
        while(is >> temp){
            s = temp + " " + s;
        }
        if(!s.empty() && s[0] == ' '){
            s = "";
        }
    }
};


class Solution3 {
public:
    void reverseWords(string &s) {
        istringstream is(s);
        string temp = "";
        s = "";
        while(getline(is,temp,' ')){
            if(temp.empty()) continue;
            s = s.empty() ? temp :  temp + ' ' + s;
        }
    }
};