//
// Created by zhangqi on 2018/1/30.
// Time:  O(h)
// Space: O(1)

#include "TreeNode.h"

class Solution {
public:
    TreeNode* inorderSuccessor(TreeNode* root, TreeNode* p) {
        // If it has right subtree.
        if (p && p->right) {
            p = p->right;
            while (p->left) {
                p = p->left;
            }
            return p;
        }

        // Search from root.
        TreeNode *successor = nullptr;
        while (root && root != p) {
            if (root->val > p->val) {
                successor = root;
                root = root->left;
            } else {
                root = root->right;
            }
        }

        return successor;
    }
};


