//
// Created by zhangqi on 2018/2/2.
//Time : O(n)
//Space : O(h)

#include "TreeNode.h"
#include <vector>

using namespace std;

class Solution {
public:
    vector<vector<int>> pathSum(TreeNode* root, int sum) {
        vector<vector<int>> result;
        vector<int> curr;
        pathSumRecv(root, sum, result, curr);
        return result;
    }

    void pathSumRecv(TreeNode *root, int sum, vector<vector<int>> &result, vector<int> &curr){
        if(root == nullptr){
            return ;
        }

        curr.push_back(root->val);
        if(root->left == nullptr && root->right == nullptr && root->val == sum){
            result.push_back(curr);
        }
        pathSumRecv(root->left, sum - root->val, result, curr);
        pathSumRecv(root->right, sum - root->val, result, curr);
        curr.pop_back();

    }
};