//
// Created by zhangqi on 2018/1/30.

#include "TreeNode.h"

// Time:  O(h)
// Space: O(1)


class Solution {
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
        int small =  p->val > q->val ? q->val : p->val;
        int large = p->val > q->val ? p->val : q->val;

        while (root ->val < small || root->val > large){
            root = root->val < small ? root->right : root->left; // 如果跟节点比左边的还小则公共祖先在右边，别弄反了
        }
        return root;
    }
};
