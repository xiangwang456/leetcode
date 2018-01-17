//
// Created by zz on 2018/1/17.
//Time : O(n)
//Space : O(h)


#include "TreeNode.h"

class Solution {
public:
    int sumOfLeftLeaves(TreeNode *root) {
        return sumOfLeftLeavesHelper(root, false);
    }

private:
    int sumOfLeftLeavesHelper(TreeNode *root, bool isLeft) {
        if (!root) {
            return 0;
        }
        if (!root->left && !root->right) {
            return isLeft ? root->val : 0;
        }
        return sumOfLeftLeavesHelper(root->left, true) + sumOfLeftLeavesHelper(root->right, false);

    }
};