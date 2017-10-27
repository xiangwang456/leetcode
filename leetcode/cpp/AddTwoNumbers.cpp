//
// Created by zz on 2017/10/27.
// Time:  O(n)
// Space: O(1)


/**
 * Definition for singly-linked list.
 * struct ListNode {
 *     int val;
 *     ListNode *next;
 *     ListNode(int x) : val(x), next(NULL) {}
 * };
 */
class Solution {
public:
    ListNode *addTwoNumbers(ListNode *l1, ListNode *l2) {
        ListNode dummy{0};
        ListNode *curr = &dummy;
        int carry = 0;
        while (l1 || l2 || carry) {
            int v1 = l1 ? l1->val : 0, v2 = l2 ? l2->val : 0;
            int val = v1 + v2 + carry;
            carry = val / 10;
            curr->next = new ListNode{val % 10};
            curr = curr->next;

            l1 = l1 ? l1->next : nullptr;
            l2 = l2 ? l2->next : nullptr;
        }

        return dummy.next;

    }


    struct ListNode {
        int val;
        ListNode *next;

        ListNode(int x) : val(x), next(nullptr) {}
    };

};