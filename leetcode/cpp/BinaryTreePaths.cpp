//
// Created by zhangqi on 2018/2/5.
//Time : O(n*h)
//Space : O(n)

#include <string>
#include "TreeNode.h"
#include <vector>

using namespace std;

class Solution {
public:
    vector<string> binaryTreePaths(TreeNode* root) {
        vector<string> result;
        vector<int> curr;
        dfs(root, curr, result);
        return result;

    }

    void dfs(TreeNode *node, vector<int> &curr, vector<string> &result){
        if(!node){
            return ;
        }

        if(!node->left && !node->right){
            string ans = "";
            for(const auto num : curr){
                ans.append(to_string(num).append("->"));
            }
            ans.append(to_string(node->val));
            result.push_back(ans);
        }

        if(node->left){
            curr.push_back(node->val);
            dfs(node->left, curr, result);
            curr.pop_back();
        }

        if(node->right){
            curr.push_back(node->val);
            dfs(node->right,curr,result);
            curr.pop_back();
        }
    }
};