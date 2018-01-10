//
// Created by zhangqi on 2018/1/10.
//Time : O(n)
//Space : O(h)

#include <vector>
#include "TreeNode.h"

using namespace std;
class Solution {
public:
    TreeNode* sortedArrayToBST(vector<int>& nums) {
        return sortedArrayToBSTHelper(nums, 0, nums.size() - 1);
    }

private:
    TreeNode* sortedArrayToBSTHelper(vector<int> &nums,int start, int end){
        TreeNode *node = nullptr;
        if(start <= end){
            node = new TreeNode(nums[start + (end - start) / 2]);
            node->left = sortedArrayToBSTHelper(nums, start, start + (end - start) / 2 - 1 );
            node->right = sortedArrayToBSTHelper(nums,start + (end - start) / 2 + 1, end );
        }
        return node;
    }
};