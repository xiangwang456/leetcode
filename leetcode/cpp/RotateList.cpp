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
    ListNode *rotateRight(ListNode *head, int k) {
        if (head == nullptr || head->next == nullptr) {
            return head;
        }

        ListNode *curr = head;
        int n = 1;
        for (; curr->next; curr = curr->next) {
            n++;
        }
        curr->next = head;
        ListNode *tail = curr;
        curr = head;
        k = n - k % n;
        for (int i = 0; i < k; i++) {

            tail = tail->next;
        }
        curr = tail->next;
        tail->next = nullptr;
        return curr;

    }

};