//
// Created by zhangqi on 2017/11/16.


// Time:  O(n),
// Space: O(1)

#include <string>
#include "TrieNode.h"

using namespace std;

class WordDictionary {
public:
    /** Initialize your data structure here. */
    WordDictionary() {
        root_ = new TrieNode();
    }

    /** Adds a word into the data structure. */
    void addWord(string word) {
        TrieNode *curr = root_;
        for(const auto &ch : word){
            if(curr->leaves.find(ch) == curr->leaves.end()){
                curr->leaves[ch] = new TrieNode();
            }
            curr = curr->leaves[ch];
        }
        curr->isString = true;
    }

    /** Returns if the word is in the data structure. A word could contain the dot character '.' to represent any one letter. */
    bool search(string word) {
        return searchWord(word, root_, 0);
    }

private:

    TrieNode *root_;
    bool searchWord(string word, TrieNode *node, int index){
        if(index == word.length()){
            return node->isString;
        }

        TrieNode *curr = node;
        if(  node->leaves.find(word[index]) != node->leaves.end()){
            curr = node->leaves[word[index]];
            return searchWord(word,curr, index + 1);
        } else if(word[index] == '.'){
            for(const auto &p : curr->leaves){
                //寻找所有的叶子，找节点是该字符串的节点 ，不能直接return ，直接return可能会导致找到其他字符串的字串，不能完全匹配
                if (searchWord(word, p.second, index + 1)){
                    return true;
                }
            }
        }

        return  false;
    }

};