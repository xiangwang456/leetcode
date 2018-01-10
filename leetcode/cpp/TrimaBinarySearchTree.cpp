//
// Created by zhangqi on 2018/1/10.
//Time : O(n)
//Space : O(h)


#include "TreeNode.h"

class Solution {
public:
    TreeNode* trimBST(TreeNode* root, int L, int R) {
        if(!root){
            return nullptr;
        }
        if(root->val < L){
            return trimBST(root->right, L, R);
        }

        if(root->val > R){
            return trimBST(root->left, L, R);
        }

        root->left = trimBST(root->left, L, R);
        root->right = trimBST(root->right, L, R);
        return root;
    }
};