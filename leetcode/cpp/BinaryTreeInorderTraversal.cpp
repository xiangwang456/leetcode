//
// Created by zhangqi on 2017/11/15.
// Time:  O(n)
// Space: O(n)

#include <vector>
#include <stack>
#include <c++/tuple>
#include "TreeNode.h"

using namespace std;

class Solution {
public:
    vector<int> inorderTraversal(TreeNode* root) {

        vector<int> ans;
        stack<pair<TreeNode*, bool>> s;
        s.push(make_pair(root,false));
        while (!s.empty()){
            bool visited;
            TreeNode *curr;
            tie(curr, visited) = s.top();
            s.pop();
            if(curr == nullptr){
                continue;
            }
            if(visited){
                ans.push_back(curr->val);
            } else{
                s.push(make_pair(curr->right,false));
                s.push(make_pair(curr, true));
                s.push(make_pair(curr->left, false));
            }
        }
        return  ans;
    }
};