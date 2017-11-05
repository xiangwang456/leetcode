//
// Created by zhangqi on 2017/11/3.
// Time:  O(n)
// Space: O(n)

#include <stack>
#include <unordered_map>
#include "TreeNode.h"

using  namespace std;

class Solution1 {
public:
    bool isSymmetric(TreeNode* root) {
        if(!root){
            return  true;
        } else{
            return isSymmetric(root->left, root->right);
        }
    }

private:
    bool isSymmetric(TreeNode* left, TreeNode *right){
        if(!left && !right){
            return true;
        }

        if(!left || !right || left->val != right->val){
            return  false;
        }

        return isSymmetric(left->right,right->left) && isSymmetric(right->right,left->left);
    }
};


class Solution2 {
public:
    bool isSymmetric(TreeNode* root) {
        if(!root){
            return  true;
        }
        stack<TreeNode*> nodes;
        nodes.push(root->left);
        nodes.push(root->right);

        while(!nodes.empty()){
            TreeNode *left = nodes.top();
            nodes.pop();
            TreeNode *right = nodes.top();
            nodes.pop();

            if(!left && !right){
                continue;
            }

            if(!left || !right || left->val != right->val){
                return false;
            }

            nodes.push(left->left);
            nodes.push(right->right);

            nodes.push(left->right);
            nodes.push(right->left);
        }
        return true;



    }


};