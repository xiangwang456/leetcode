//
// Created by zhangqi on 2017/11/24.
//Time : O(n)
//Space : O(n)


#include <vector>
#include <string>
#include <array>


using namespace std;


class Solution {
public:
    int lengthOfLongestSubstringTwoDistinct(string s) {
        const int k = 2;
        int longest = 0;
        int start = 0, distinct = 0;
        //unordered_map<char, int> visited;
        array<int, 256> visited = {0};
        for(int i = 0; i < s.size(); i++){
            if(visited[s[i]] == 0){
                distinct++;
            }
            ++visited[s[i]];
            while(distinct > k){
                --visited[s[i]];
                if(visited[s[i]] == 0){
                    distinct--;
                }
                ++start;
            }
            longest = max(longest, i - start + 1);
        }
        return longest;
    }
};