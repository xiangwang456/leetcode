//
// Created by zhangqi on 2017/11/16.
//

#ifndef LEETCODE_TRIENODE_H
#define LEETCODE_TRIENODE_H

#include <unordered_map>

using namespace std;

class TrieNode{
public:
    TrieNode() :isString(false){

    }

    bool isString;
    unordered_map<char, TrieNode*> leaves;
};


#endif //LEETCODE_TRIENODE_H
