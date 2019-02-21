//
// Created by zhangqi on 2019/2/19.
//

//Time : O(lgn)
//Space : O(lgn)

#include "SegmentTreeNode.h"
#include <vector>
#include <c++/climits>

using  namespace std;

class Solution{
public:
    SegmentTreeNode *build(vector<int> & nums){
        return  buildHelper(nums,0 ,nums.size() - 1);
    }

    SegmentTreeNode* buildHelper(vector<int>& nums,int start, int end){
        if (start > end) {
            return nullptr;
        }

        SegmentTreeNode *root = new SegmentTreeNode(start, end , INT_MAX);
        if(start == end){
            root->value = nums[start];
            return root;
        }

        root->left = buildHelper(nums,start , (start + end) / 2) ;
        root->right = buildHelper(nums, (start + end ) / 2 + 1 ,end );

        int leftMax = root->left != nullptr ? root->left->value : INT_MAX;
        int rightMax = root->right != nullptr ? root->right->value : INT_MAX;

        root->value = leftMax > rightMax ? leftMax : rightMax;
        return  root;

    }
};