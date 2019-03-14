//
// Created by zhangqi on 2019/3/1.
//

//Time : O(n )
//Space : O(n)
#include "TreeNode.h"
#include <vector>
#include <stack>

using namespace std;

class Solution{
    public:
    TreeNode* maxTree(vector<int> nums){
        stack<TreeNode*> decendingStack;
        for(const auto& num : nums){
            TreeNode* node = new TreeNode(num);
            while(!decendingStack.empty() && num > decendingStack.top()->val){
                node->left = decendingStack.top();
                decendingStack.pop();
            }
            if (!decendingStack.empty() ){
                decendingStack.top()->right = node;
            }
            decendingStack.push(node);

        }
        return decendingStack.top();
    }

};