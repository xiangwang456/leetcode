//
// Created by zhangqi on 2017/11/15.

#include <vector>
#include <stack>
#include <c++/tuple>
#include "TreeNode.h"

using namespace std;
class Solution {
public:
    vector<int> postorderTraversal(TreeNode* root) {
        stack<pair<TreeNode*, bool>> s;
        s.push(make_pair(root,false));
        vector<int> ans;
        while(!s.empty()){
            bool visit;
            TreeNode *curr;
            tie(curr, visit) = s.top();
            s.pop();
            if(curr == nullptr){
                continue;
            }
            if(visit){
                ans.push_back(curr->val);
            }else{
                s.push(make_pair(curr, true));
                s.push(make_pair(curr->right, false));
                s.push(make_pair(curr->left, false)) ;
            }
        }
        return ans;
    }
};