//
// Created by zz on 2017/10/30.
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
        ListNode dummy{0};
        ListNode *curr = head;
        ListNode *prev = &dummy;
        while (curr) {
            if (curr->next && curr->val == curr->next->val) {
                int val = curr->val;
                while (curr && curr->val == val) {
                    curr = curr->next;
                }
                prev->next = curr;
            } else {
                prev->next = curr;
                prev = curr;
                curr = curr->next;
            }
        }
        return dummy.next;
    }
};