//
// Created by zhangqi on 2018/1/31.
// Time:  O(n)
// Space: O(n)

#include <vector>
#include <queue>
#include "TreeNode.h"

using namespace std;

class Solution {
public:
    vector<vector<int>> levelOrder(TreeNode* root) {

        vector<vector<int>> result;
        queue<TreeNode *> que;
        if(root != nullptr){
            que.emplace(root);
        }
        while (!que.empty()){
            vector<int> level;
            int size = que.size();
            for(int i = 0; i < size; i++){
                TreeNode *front = que.front();
                level.push_back(front->val);
                que.pop();

                if(front->left){
                    que.emplace(front->left);
                }

                if(front->right){
                    que.emplace(front->right);
                }
            }
            result.push_back(level);
        }
        return result;
    }
};