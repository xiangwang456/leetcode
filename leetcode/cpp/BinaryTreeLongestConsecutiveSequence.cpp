//
// Created by zhangqi on 2018/1/9.
//Time : O(n)
//Space : O(h)

#include "TreeNode.h"

class Solution {
public:
    int longestConsecutive(TreeNode* root) {
        int ans = 0;
        longestConsecutiveHelper(root, ans);
        return ans;
    }

private:
    int longestConsecutiveHelper(TreeNode *root, int &maxLen) {
        if (!root) {
            return 0;
        }

        const int leftLen = longestConsecutiveHelper(root->left, maxLen);
        const int rightLen = longestConsecutiveHelper(root->right, maxLen);

        int curLen = 1;
        if (root->left && root->left->val == root->val + 1) {
            curLen = max(curLen , leftLen + 1);
        }
        if (root->right && root->right->val == root->val + 1) {
            curLen = max(curLen, rightLen + 1);
        }
        maxLen = max(maxLen, max(curLen, max(leftLen, rightLen)));
        return curLen;
    }

    int max(int x, int y){
        return  x > y ? x : y;
    }
};


