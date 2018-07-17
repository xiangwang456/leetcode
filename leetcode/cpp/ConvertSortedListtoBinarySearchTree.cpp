//
// Created by zhangqi on 2018/1/11.
//


#include <vector>
#include "TreeNode.h"
#include "ListNode.h"
using namespace std;
class Solution {
public:
    TreeNode* sortedListToBST(ListNode* head) {
        return sortedListToBSTHelper(head, nullptr);
    }

private:
    TreeNode* sortedListToBSTHelper(ListNode* start, ListNode* end){
        if(start == end){
            return nullptr;
        }

        ListNode *slow = start;
        ListNode *fast = start;
        while(fast != end && fast->next != end){
            slow = slow->next;
            fast = fast->next->next;
        }

        TreeNode *node = new TreeNode(slow->val);
        node->left = sortedListToBSTHelper(start, slow);
        node->right = sortedListToBSTHelper(slow->next, end);
        return node;
    }
};