//
// Created by zhangqi on 2017/10/23.
//Time: O(n)
//Space: O(1)

#include <string>
#include <unordered_map>
#include <algorithm>

using namespace std;
class Solution1 {
public:
    bool isAnagram(string s, string t) {
        if(s.size() != t.size()){
            return  false;
        }
        unordered_map<char,int> count;
        for(char c : s){
            count[c]++;
        }
        for(char c : t){
            count[c]--;
            if(count[c] < 0){
                return  false;
            }
        }
        return  true;

    }
};


//Time: O(log n)
//Space: O(1)
class Solution2 {
public:
    bool isAnagram(string s, string t) {
        if(s.size() != t.size()){
            return  false;
        }
        sort(s.begin(),s.end());
        sort(t.begin(),s.end());
        return  s == t;
    }
};