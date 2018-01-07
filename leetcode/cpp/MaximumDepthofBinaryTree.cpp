//
// Created by zz on 2018/1/7.
//

#include "TreeNode.h"

class Solution {
public:
    int maxDepth(TreeNode *root) {
        if (!root) {
            return 0;
        }

        int left = maxDepth(root->left);
        int right = maxDepth(root->right);

        return left > right ? left + 1 : right + 1;
    }
};