//
// Created by zhangqi on 2018/1/30.
// Time:  O(h)
// Space: O(h)

#include "TreeNode.h"

class Solution {
public:
    TreeNode* deleteNode(TreeNode* root, int key) {
    if(!root){
        return nullptr;
    }

    if(root->val > key){
        root->left =  deleteNode(root->left, key);
    } else if(root->val < key){
        root->right =  deleteNode(root->right, key);
    } else{
        if(!root->left){
            auto right = root->right;
            delete root;
            return right;
        }else if(!root->right){
            auto  left = root->left;
            delete root;
            return left;
        } else{
            auto successor = root->right;
            while (successor->left){
                successor = successor->left;
            }
            root->val = successor->val;
            root->right =  deleteNode(root->right,successor->val);
        }
    }
    return root;
}
};