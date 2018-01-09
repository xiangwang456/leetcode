//
// Created by zhangqi on 2018/1/9.
//

//Time : O(n)
//Space : O(h)

#include "TreeNode.h"

class Solution {
public:
    int sumNumbers(TreeNode* root) {
        return sumNumbersRecv(root, 0);
    }

private:
    int sumNumbersRecv(TreeNode *root, int sum){
        if(!root){
            return 0;
        }
        if(!root->left && !root->right){
            return sum * 10 + root->val;
        }

        return sumNumbersRecv(root->left, sum * 10 + root->val ) + sumNumbersRecv(root->right, sum * 10 + root->val) ;
    }
};