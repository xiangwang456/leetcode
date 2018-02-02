//
// Created by zhangqi on 2018/2/1.
//Time : O(n)
//Space : O(n)

#include <string>
#include <vector>
#include <queue>
#include <c++/unordered_set>

using namespace std;


class Solution {
public:
    int ladderLength(string beginWord, string endWord, vector<string>& wordList) {

        if(beginWord == endWord){
            return 1;
        }

        int wordSize = beginWord.size();
        if(wordSize != endWord.size()){
            return 0;
        }

        queue<string> visited;
        int result = 2;
        visited.push(beginWord);
        unordered_set<string> dict;
        for (int i = 0; i < wordList.size(); i++) {
            dict.insert(wordList[i]);
        }
        while (!visited.empty()){
            int queueSize = visited.size();
            for(int i = 0; i < queueSize; i++){
                string  word = visited.front();
                visited.pop();
                for(int j = 0; j < word.size(); j++){
                    char originChar = word[j];
                    for(char c = 'a'; c <= 'z'; c++){
                        if(c == originChar){
                            continue;
                        }
                        word[j] = c;

                        if(dict.find(word) != dict.end()){
                            if(word == endWord) {
                                return result;
                            }
                            visited.push(word);
                            dict.erase(word);
                        }
                    }
                    word[j] = originChar;
                }
            }
            result++;
        }
        return  0;
    }
};