//
// Created by zhangqi on 2017/11/1.
// Time:  O(n)
// Space: O(1)


struct ListNode {
    int val;
    ListNode *next;

    ListNode(int x) : val(x), next(nullptr) {}
};


class Solution {
public:
    ListNode* removeElements(ListNode* head, int val) {
        ListNode dummy{0};
        dummy.next = head;
        ListNode *curr = head, *prev = &dummy;
        while(curr){
            if(curr->val == val){
                ListNode *delNode = curr;
                prev->next = curr->next;
                delete delNode;
            } else{
                prev =curr;
            }

            curr =curr->next;
        }
        return  dummy.next;
    }
};