//
// Created by zhangqi on 2019/2/19.
//

#ifndef LEETCODE_SEGMENTTREENODE_H
#define LEETCODE_SEGMENTTREENODE_H

class SegmentTreeNode{
public:
    int start, end , value;
    SegmentTreeNode *left, *right;
    SegmentTreeNode(int start, int end ,int value){
        this->start = start;
        this->end = end;
        this->value = value;
        this->left = this->right = nullptr;
    }
};

#endif //LEETCODE_SEGMENTTREENODE_H
