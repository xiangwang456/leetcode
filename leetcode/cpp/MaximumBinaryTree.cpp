//
// Created by zhangqi on 2017/11/20.
// Time:  O(n)
// Space: O(n)


#include <vector>
#include <deque>
#include "TreeNode.h"


using  namespace std;
class Solution {
public:
    TreeNode* constructMaximumBinaryTree(vector<int>& nums) {
        //维护一个降序的栈
        deque<TreeNode*> deck;
        for(int num : nums){
            TreeNode *node = new TreeNode(num);
            //找到所有比当前元素小的元素，将其作为当前元素的左子树
            while(!deck.empty() && num > deck.back()->val){
                node->left = deck.back();
                deck.pop_back();
            }
            if(!deck.empty() ){
                //栈顶元素比当前元素大，栈                deck.back()->right = node;
            }
            deck.push_back(node);
        }
        return deck.front();
    }
};