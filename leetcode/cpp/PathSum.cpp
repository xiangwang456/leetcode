//
// Created by zhangqi on 2018/2/2.

//Time : O(n)
//Space : O(h)

#include "TreeNode.h"

class Solution {
public:
    bool hasPathSum(TreeNode* root, int sum) {
        if(root == nullptr){
            return false;
        }

        if(root->left == nullptr && root->right == nullptr && root->val == sum){
            return true;
        }

        return hasPathSum(root->left, sum - root->val) || hasPathSum(root->right, sum - root->val);

    }
};