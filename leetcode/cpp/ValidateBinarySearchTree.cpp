//
// Created by zhangqi on 2018/1/10.
//

//Time : O(n)
//Space : O(h)

#include <limits>
#include "TreeNode.h"
using namespace std;

class Solution {
public:
    bool isValidBST(TreeNode* root) {
        return isValidBSTHelper(root,numeric_limits<long>::min(), numeric_limits<long>::max());
    }

private:
    bool isValidBSTHelper(TreeNode *root, long low, long up){
        if(!root){
            return true;
        }

        if(root->val <= low || root->val >= up){
            return false;
        }

        return isValidBSTHelper(root->left, low, root->val) && isValidBSTHelper(root->right, root->val, up);
    }
};