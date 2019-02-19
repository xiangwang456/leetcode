//
// Created by zhangqi on 2019/2/19.
//

//Time : O(lgn)
//Space : O(1)


#include <c++/climits>
#include "SegmentTreeNode.h"



class Solution{
public:
    SegmentTreeNode* modify(SegmentTreeNode* root, int index, int value){
        if ( root == nullptr || index > root->end || index < root->start){
            return nullptr;
        }

        if (index == root->start && index == root->end){
            root->value = value;
            return root;
        }

        modify(root->left , index , value );
        modify(root->right, index, value);

        int leftMax = root->left != nullptr ? root->left->value : INT_MIN;
        int rightMax = root->right != nullptr ? root->right->value : INT_MIN;

        root->value = leftMax > rightMax ? leftMax : rightMax;

        return root;

    }
};