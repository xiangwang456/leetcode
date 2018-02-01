//
// Created by zhangqi on 2018/2/1.
//Time : O(n)
//Space : O(n)

#include <string>
#include <vector>
#include <c++/queue>
#include <c++/unordered_set>

using namespace std;

class Solution {
public:
    int ladderLength(string beginWord, string endWord, vector<string>& wordList) {
        queue<string> visited;
        int result = 1;
        visited.push(beginWord);
        unordered_set<string> dict;
        for (int i = 0; i < wordList.size(); i++) {
            dict.insert(wordList[i]);
        }
        while (!visited.empty()){
            const string & word = visited.front();
            visited.pop();
            for(int i = 0; i < word.size(); i++){
                char originChar = word[i];
                for(char c = 'a'; c <= 'z'; c++){
                    if(c == originChar){
                        continue;
                    }
                    word[i] = c;

                    if(dict.find(word) != dict.end()){
                        if(word == endWord) {
                            return result;
                        }
                        visited.push(word);
                        dict.erase(word);
                    }
                }
                word[i] = originChar;
            }
            result++;
        }
        return  0;
    }
};