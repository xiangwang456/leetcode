//
// Created by zhangqi on 2018/1/30.
// Time:  O(max(h, k))
// Space: O(h)

#include "TreeNode.h"
#include <stack>
#include <limits>

using namespace std;

class Solution {
public:
    int kthSmallest(TreeNode* root, int k) {
        stack<TreeNode*> s;
        int rank = 0;
        TreeNode *cur = root;
        while (!s.empty() || cur){
            if(cur){
                s.emplace(cur);
                cur = cur->left;
            } else{
                cur = s.top();
                s.pop();
                if(++rank == k){
                    return cur->val;
                }
                cur = cur->right;
            }
        }
        return numeric_limits<int>::min();
    }
};