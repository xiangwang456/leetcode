//
// Created by zhangqi on 2018/2/2.
//Time : O(n)
//Space : O(h)

#include "TreeNode.h"
#include <vector>

using namespace std;

class Solution {
public:
    vector<int> rightSideView(TreeNode* root) {
        vector<int> result;
        rightSideViewHelper(root, result, 1);
        return result;
    }

private:
    void rightSideViewHelper(TreeNode *root, vector<int> &result , int depth){
        if(!root){
            return;
        }
        if(depth > result.size()){
            result.push_back(root->val);
        }
        rightSideViewHelper(root->right, result, depth + 1);
        rightSideViewHelper(root->left, result, depth + 1);
    }
};