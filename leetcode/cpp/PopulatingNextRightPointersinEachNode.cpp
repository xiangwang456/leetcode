//
// Created by zhangqi on 2018/1/16.
//Time : O(n)
//Space : O(long n)
#include "TreeLinkNode.h"


class Solution {
public:
    void connect(TreeLinkNode *root) {
        if(root == nullptr){
            return;
        }
        if(root->left){
            root->left->next = root->right;
        }
        if(root->right && root->next){
            root->right->next = root->next->left;
        }

        connect(root->left);
        connect(root->right);
    }
};