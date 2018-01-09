//
// Created by zhangqi on 2018/1/9.
//Time : O(n)
//Space : O(h)

#include "TreeNode.h"

class Solution {
public:
    int minDepth(TreeNode* root) {
        if(!root){
            return 0;
        }

        int left = minDepth(root->left);
        int right = minDepth(root->right);

        if(root->left && root->right){
            return left > right ? right + 1 : left + 1;
        }else{
            return left > right ? left + 1 : right + 1;
        }


    }
};