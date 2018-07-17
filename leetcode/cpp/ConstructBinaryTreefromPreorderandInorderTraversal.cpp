//
// Created by zhangqi on 2018/1/11.
//Time : O(n)
//Space : O(n)

#include <vector>
#include <unordered_map>
#include "TreeNode.h"
using namespace std;


class Solution {
public:
    TreeNode* buildTree(vector<int>& preorder, vector<int>& inorder) {
        unordered_map<int, int> inorderMap ;
        for(int i = 0; i < inorder.size(); i++){
           inorderMap.emplace(inorder[i], i);
        }
        return buildTreeHelper(preorder, 0, preorder.size(), inorder, 0, inorder.size(), inorderMap);
    }

private:
    TreeNode *buildTreeHelper(vector<int>& preorder, int preStart, int preEnd,
                              vector<int> &inorder, int inStart, int inEnd,
                              unordered_map<int, int> &inorderMap){
        if(preStart == preEnd || inStart == inEnd){
            return nullptr;
        }

        TreeNode *node = new TreeNode(preorder[preStart]);
        int leftTreeSize = inorderMap.at(preorder[preStart]) - inStart;

        node->left = buildTreeHelper(preorder, preStart + 1,
                                     preStart + leftTreeSize + 1,
                                     inorder, inStart,
                                     inStart + leftTreeSize,
                                     inorderMap );
        node->right = buildTreeHelper(preorder,preStart + leftTreeSize + 1,
                                      preEnd, inorder, inStart + leftTreeSize + 1, inEnd, inorderMap);

        return node ;
    }
};