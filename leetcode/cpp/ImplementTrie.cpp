//
// Created by zhangqi on 2017/11/16.
// Time:  O(n), per operation
// Space: O(1)

#include <string>
#include <unordered_map>
#include "TrieNode.h"

using namespace std;

class Trie {
public:
    /** Initialize your data structure here. */
    Trie() {
        root_ = new TrieNode();
    }

    /** Inserts a word into the trie. */
    void insert(string word) {
        auto *curr = root_;
        for(const auto &ch : word){
            if(!curr->leaves.count(ch)){
                curr->leaves[ch] = new TrieNode;
            }
            curr = curr->leaves[ch];
        }
        curr->isString = true;
    }

    /** Returns if the word is in the trie. */
    bool search(string word) {
        TrieNode *curr = childSearch(word);
        return curr == nullptr ? false : curr->isString;
    }

    /** Returns if there is any word in the trie that starts with the given prefix. */
    bool startsWith(string prefix) {

        return childSearch(prefix) == nullptr ? false : true;
    }

private:
    TrieNode *root_;

    TrieNode *childSearch(const string &word){
        auto *curr = root_;
        for(const auto &ch : word){
            if(curr->leaves.count(ch)){
                curr = curr->leaves[ch];
            } else{
                return  false;
            }
        }
        return curr;
    }
};

