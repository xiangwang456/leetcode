//
// Created by zhangqi on 2017/11/17.
//time : O(n)
// space : O(h)

#include "TreeNode.h"
#include <functional>
#include <algorithm>

using namespace std;

class Solution {
public:
    int longestUnivaluePath(TreeNode* root) {
        int ans = 0;
        dfs(root, ans);
        return  ans;
    }

private:

    int dfs(TreeNode *node, int &result){
        if(node == nullptr){
            return 0;
        }

        int left = dfs(node->left, result);
        int right = dfs(node->right, result);
        left = node->left != nullptr && node->left->val == node->val ? left + 1 : 0;
        right = node->right != nullptr && node->right->val == node->val ? right + 1 : 0;
        result = max( result, left + right);
        return max(left, right);
    }
};