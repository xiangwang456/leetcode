//
// Created by zhangqi on 2019/2/19.
//
//Time : O(n)
//Space : O(n)

#include <c++/climits>
#include "SegmentTreeNode.h"

/*class Solution {
public:
    int query(SegmentTreeNode * root, int start, int end){
        if (root->start == start && root->end == end){
            return root->value;
        }
        int mid = (root->start  + root->end) / 2;
        int leftMax = INT_MIN,rightMax = INT_MIN;
        if (start <= end){ // left zone
            if( mid < end){
                leftMax = query(root->left,start,mid);
            }else{
                leftMax = query(root->left,start,end);
            }
        }

        if (mid < end){
            if(start <= mid){
                rightMax = query(root->right,mid+1,end);
            } else{
                rightMax = query(root->right,start,end);
            }
        }

        return leftMax > rightMax ? leftMax :rightMax;
    }
};*/




class Solution {
public:
    int query(SegmentTreeNode * root, int start, int end){

        if(start > root->end || end < root->start){
            return INT_MIN;
        }

        if (root->start >= start && root->end <= end){
            return root->value;
        }

        int left = query(root->left,start,end);
        int right = query(root->right,start,end);

        return left > right ? left : right;

    }
};




