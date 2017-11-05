//
// Created by zz on 2017/10/31.
// Time:  O(n)
// Space: O(1)

struct ListNode {
    int val;
    ListNode *next;

    ListNode(int x) : val(x), next(nullptr) {}
};


class Solution {
public:
    ListNode *deleteDuplicates(ListNode *head) {
        ListNode *curr = head;
        while (curr) {
            ListNode *runner = curr;
            while (runner && curr->val == runner->val) {
                runner = runner->next;
            }
            curr->next = runner;
            curr = runner;
        }
        return head;
    }
};