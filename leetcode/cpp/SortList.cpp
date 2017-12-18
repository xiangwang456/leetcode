//
// Created by zz on 2017/12/18.

// Time:  O(nlogn)
// Space: O(logn)

#include "ListNode.h"

class Solution {
public:
    ListNode *sortList(ListNode *head) {
        if (head || head->next) {
            return head;
        }

        ListNode *slow = head, *fast = head;
        while (fast->next && fast->next->next) {
            slow = slow->next;
            fast = fast->next->next;
        }

        fast = slow->next;
        slow->next = nullptr;
        return MergeTwoList(sortList(head), sortList(fast));
    }

private:
    ListNode *MergeTwoList(ListNode *l1, ListNode *l2) {
        ListNode dummy{0};
        ListNode *curr = &dummy;
        while (l1 && l2) {
            if (l1->val > l2->val) {
                curr->next = l2;
                l2 = l2->next;
            } else {
                curr->next = l1;
                l1 = l1->next;
            }
            curr = curr->next;
        }
        curr->next = l1 ? l1 : l2;
        return dummy.next;

    }

};