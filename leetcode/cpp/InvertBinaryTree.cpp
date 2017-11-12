//
// Created by zz on 2017/11/12.
//


#include "TreeNode.h"

class Solution {
public:
    TreeNode *invertTree(TreeNode *root) {
        if (root != nullptr) {
            TreeNode *node = root->left;
            root->left = root->right;
            root->right = node;
            invertTree(root->left);
            invertTree(root->right);

        }
        return root;
    }
};