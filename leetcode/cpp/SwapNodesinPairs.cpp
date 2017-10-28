//
// Created by zz on 2017/10/28.


// Time:  O(n)
// Space: O(1)

struct ListNode {
    int val;
    ListNode *next;

    ListNode(int x) : val(x), next(nullptr) {}
};

class Solution {
public:
    ListNode *swapPairs(ListNode *head) {
        ListNode dummy{0};
        ListNode *curr = &dummy;
        dummy.next = head;
        while (curr->next && curr->next->next) {
            ListNode *next_one = curr->next;
            ListNode *next_two = next_one->next;
            ListNode *next_three = next_two->next;

            next_two->next = next_one;
            next_one->next = next_three;
            curr->next = next_two;
            curr = next_one;
        }
        return dummy.next;

    }



};


