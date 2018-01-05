//
// Created by zhangqi on 2018/1/5.
//Time : O(n)
//Space : O(h)

#include "TreeNode.h"

class Solution {
public:
    bool isSameTree(TreeNode* p, TreeNode* q) {
        if(!p && !q){
            return true;
        }
        return p && q && p->val == q->val && isSameTree(p->left, q->left) && isSameTree(p->right, q->right);
    }
};