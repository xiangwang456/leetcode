//
// Created by zhangqi on 2019/2/21.
//

//Time : O(lgn)
//Space : O(lgn)

#include "SegmentTreeNode.h"
#include <vector>
#include <c++/algorithm>

using namespace std;


class  Solution{
public:
    vector<int> countOfSmallerNumber(vector<int> &A, vector<int> &queries) {
        vector<int> res;

        // Sort array before building segment tree.
        sort(A.begin(), A.end());

        // Build segment tree.
        SegmentTreeNode *root = build(A, 0, A.size() - 1);

        // Do each query.
        for (const auto& q : queries) {
            res.emplace_back(query(root, 0, A.size() - 1, A, q));
        }

        return res;
    }


private:
    SegmentTreeNode* build(vector<int> &A, int start, int end){
        if( start > end ){
            return  nullptr;
        }

        SegmentTreeNode* root = new SegmentTreeNode(start, end, 0);

        if(start == end){
            root->value = 1;
            return root;
        }

        root->left = build(A, start, (start + end ) / 2);
        root->right = build(A, (start + end )/ 2 + 1, end);

        int leftCount = root->left != nullptr ? root->left->value : 0;
        int rightCount = root->right != nullptr ? root->right->value : 0 ;

        root->value = leftCount + rightCount;
        return root;

    }

    int query(SegmentTreeNode* root, int start, int end, vector<int> &A ,int q){

        if (root == nullptr || root->start > end || root->end < start){
            return  0;
        }
        if( A[root->start] > q ){
            return  0;
        }

        if (A[root->end] < q) {
            return root->value;
        }

        int leftCount= query(root->left, start, end , A , q);
        int rightCount = query(root->right, start, end, A , q);

        return  leftCount + rightCount;

    }

};