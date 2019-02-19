//
// Created by zhangqi on 2019/2/19.
//

//Time : O(n)
//Space : O(n)

#include "SegmentTreeNode.h"

class  Solution{
public:
    SegmentTreeNode * build(int start,int end){
        if( start > end){
            return nullptr;
        }
        SegmentTreeNode* root = new SegmentTreeNode(start,end , 0);
        if(start == end){
            return root;
        }

        root->left = build(start, (start + end ) / 2);
        root->right = build((start + end ) / 2 + 1 , end);
        return  root;
    }
};