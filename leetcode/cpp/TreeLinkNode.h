//
// Created by zhangqi on 2018/1/16.
//

#ifndef LEETCODE_TREELINKNODE_H
#define LEETCODE_TREELINKNODE_H


struct TreeLinkNode {
    int val;
    TreeLinkNode *left;
    TreeLinkNode *right;
    TreeLinkNode *next;
    TreeLinkNode(int x) : val(x), left(nullptr), right(nullptr), next(nullptr) {}
};

#endif //LEETCODE_TREELINKNODE_H
