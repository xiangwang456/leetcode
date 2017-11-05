//
// Created by zhangqi on 2017/11/3.
//

#ifndef LEETCODE_TREENODE_H
#define LEETCODE_TREENODE_H

 struct TreeNode {
         int val;
         TreeNode *left;
         TreeNode *right;
         TreeNode(int x) : val(x), left(nullptr), right(nullptr) {}
     };

#endif //LEETCODE_TREENODE_H
