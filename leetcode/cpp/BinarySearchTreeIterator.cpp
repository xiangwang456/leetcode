//
// Created by zz on 2017/11/7.
// Time:  O(n)
// Space: O(1)

#include "TreeNode.h"
#include <stack>

using namespace std;

class BSTIterator {
public:
    BSTIterator(TreeNode *root) : cur_(root) {

    }

    /** @return whether we have a next smallest number */
    bool hasNext() {
        return !s.empty() || cur_ != nullptr;
    }

    /** @return the next smallest number */
    int next() {
        while (cur_) {
            s.push(cur_);
            cur_ = cur_->left;
        }
        cur_ = s.top();
        int ans = cur_->val;
        s.pop();
        cur_ = cur_->right;
        return ans;

    }

private:
    TreeNode *cur_;
    stack<TreeNode *> s;

};