//
// Created by zhangqi on 2017/11/17.
//time : ctor :O(n)  ,update : O(logn) , sum : O(logn)
// space : O(n)

#include <vector>

using namespace std;


class NumArray {
public:
    NumArray(vector<int> nums) : nums_(nums){
        root_ = buildHelper(nums_, 0, nums.size() - 1);
    }

    void update(int i, int val) {
        if (nums_[i] != val){
            nums_[i] = val;
            updateHelper(root_, i, val);
        }
    }


    int sumRange(int i, int j) {
        return sumRangeHelper(root_, i, j);
    }

private:
    vector<int> nums_;
    class SegmentTreeNode{
    public:
        int start, end, sum;
        SegmentTreeNode *left, *right;
        SegmentTreeNode(int i, int j, int s) : start(i), end(j), sum(s), left(nullptr) ,right(nullptr) {

        }
    };

    SegmentTreeNode *root_;

    SegmentTreeNode *buildHelper(vector<int>  &nums, int start, int end){
        if(start > end){
            return nullptr;
        }


        SegmentTreeNode *node = new SegmentTreeNode(start, end, 0);
        if(start == end){
            node->sum = nums[start];
            return node;
        }

        node->left = buildHelper(nums, start, (start + end) / 2);
        node->right = buildHelper(nums, (start + end) / 2 + 1 , end);

        node->sum = (node->left != nullptr ? node->left->sum : 0 )  + (node->right != nullptr ? node->right->sum : 0);
        return node;
    }

    void updateHelper(SegmentTreeNode *root, int i, int val){
        if(root == nullptr || i < root->start || i > root->end ){
            return;
        }
        if( root->start == i && root->end == i){
            root->sum = val;
            return;
        }

        updateHelper(root->left, i, val);
        updateHelper(root->right, i, val);
        root->sum = (root->left != nullptr ? root->left->sum : 0) + (root->right != nullptr ? root->right->sum : 0);

    }

    int sumRangeHelper(SegmentTreeNode *root, int i, int j){
        if(root == nullptr || i > root->end || j < root->start){
            return  0;
        }

        if(root->start >= i && root->end <= j){
            return  root->sum;
        }

        return sumRangeHelper(root->left, i, j) + sumRangeHelper(root->right, i, j);
    }

};
