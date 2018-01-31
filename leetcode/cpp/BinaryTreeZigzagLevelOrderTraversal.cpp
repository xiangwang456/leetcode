//
// Created by zhangqi on 2018/1/31.

// Time:  O(n)
// Space: O(n)

#include <vector>
#include <queue>
#include <algorithm>
#include "TreeNode.h"

using namespace std;


class Solution {
public:
    vector<vector<int>> zigzagLevelOrder(TreeNode* root) {
        vector<vector<int>> result;
        queue<TreeNode*> que;
        int leftToRight = 0;
        if(root){
            que.emplace(root);
        }
        while (!que.empty()){
            vector<int> level;
            int size = que.size();
            for(int i = 0 ; i < size; i++){
                TreeNode *front = que.front();
                que.pop();
                level.push_back(front->val);
                if(front->left){
                    que.emplace(front->left);
                }
                if(front->right){
                    que.emplace(front->right);
                }
            }
            if(leftToRight++ % 2 == 1){
                reverse(level.begin(), level.end());
            }
            result.push_back(level);
        }
        return result;
    }
};