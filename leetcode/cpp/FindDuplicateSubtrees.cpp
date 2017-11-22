//
// Created by zhangqi on 2017/11/20.
//　Time : O(n)
//  Space : O(n)

#include "TreeNode.h"
#include <vector>
#include <unordered_map>

using  namespace std;


class Solution {
public:
    vector<TreeNode*> findDuplicateSubtrees(TreeNode* root) {
        unordered_map<tuple<int, int , int>, int > loopup;
        unordered_map<int, vector<TreeNode*>> trees;
        vector<TreeNode*> ans;
        getId(root, loopup, trees);
        for(auto kvp : trees){
            if(kvp.second.size() > 1){
                ans.push_back(kvp.second[0]);
            }
        }
        return ans;
    }

private:
    int getId(TreeNode *node, unordered_map<tuple<int, int , int>, int > &loopup,unordered_map<int, vector<TreeNode*>> &trees ){
        int nodeId = 0;
        if(node){
            auto data = make_tuple(node->val, getId(node->left, loopup, trees), getId(node->right, loopup, trees));
            if(!loopup[data]){
                loopup[data] = loopup.size() + 1;
            }
            nodeId = loopup[data];
            trees[nodeId].push_back(node);
        }
        return nodeId;
    }
};