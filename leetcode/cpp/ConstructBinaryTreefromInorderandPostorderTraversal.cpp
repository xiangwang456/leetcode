//
// Created by zhangqi on 2018/1/11.
//

#include <vector>
#include <unordered_map>
#include "TreeNode.h"
using namespace std;


class Solution {
public:
    TreeNode* buildTree(vector<int>& inorder, vector<int>& postorder) {
        unordered_map<int, int> inorderMap ;
        for(int i = 0; i < inorder.size(); i++){
            inorderMap.emplace(inorder[i], i);
        }
        return buildTreeHelper(postorder, 0, postorder.size(), inorder, 0, inorder.size(), inorderMap);
    }

private:
    TreeNode *buildTreeHelper(vector<int>& postorder, int postStart, int postEnd,
                              vector<int> &inorder, int inStart, int inEnd,
                              unordered_map<int, int> &inorderMap){
        if(postStart == postEnd || inStart == inEnd){
            return nullptr;
        }

        TreeNode *node = new TreeNode(postorder[postEnd - 1]);
        int leftTreeSize = inorderMap.at(postorder[postEnd - 1]) - inStart;

        node->left = buildTreeHelper(postorder, postStart ,
                                     postStart + leftTreeSize ,
                                     inorder, inStart,
                                     inStart + leftTreeSize,
                                     inorderMap );
        node->right = buildTreeHelper(postorder,postStart + leftTreeSize ,
                                      postEnd - 1, inorder, inStart + leftTreeSize + 1, inEnd, inorderMap);

        return node ;
    }
};