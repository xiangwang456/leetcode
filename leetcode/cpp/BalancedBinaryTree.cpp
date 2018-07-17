//
// Created by zhangqi on 2018/1/8.
//Time : O(n)
//Space : O(h)


#include <cstdlib>
#include "TreeNode.h"


class Solution {
public:
    bool isBalanced(TreeNode* root) {
        if(!root){
            return  true;
        }

        int left = getHeight(root->left);
        int right = getHeight(root->right);

        return abs(left - right) <= 1 && isBalanced(root->left) && isBalanced(root->right);
    }

private:
    int getHeight(TreeNode *root){
        if(!root){
            return 0;
        }

        int left = getHeight(root->left);
        int right = getHeight(root->right);

        return left > right ? left + 1 : right + 1;
    }
};