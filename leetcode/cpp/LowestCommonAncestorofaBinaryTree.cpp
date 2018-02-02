//
// Created by zhangqi on 2018/2/2.
//

//Time : O(n)
//Space : O(h)
#include "TreeNode.h"

class Solution {
public:
    TreeNode* lowestCommonAncestor(TreeNode* root, TreeNode* p, TreeNode* q) {
        if(root == nullptr || root == p || root == q){
            return root;
        }

        TreeNode *left = lowestCommonAncestor(root->left, p, q);
        TreeNode *right = lowestCommonAncestor(root->right, p, q);

        if(left && right){
            return root;
        }

        return left == nullptr ? right : left;
    }
};
