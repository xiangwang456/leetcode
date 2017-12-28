//
// Created by zz on 2017/12/28.

//Time : O(n)
//Space : O(1)

#include "ListNode.h"


class Solution {
public:
    ListNode *removeNthFromEnd(ListNode *head, int n) {
        ListNode dummy{0};
        dummy.next = head;
        auto slow = &dummy;
        auto fast = &dummy;
        while (n-- > 0) {
            fast = fast->next;
        }

        while (fast->next != nullptr) {
            fast = fast->next;
            slow = slow->next;
        }

        auto deleteNode = slow->next;
        slow->next = deleteNode->next;
        delete deleteNode;
        return dummy.next;

    }
};