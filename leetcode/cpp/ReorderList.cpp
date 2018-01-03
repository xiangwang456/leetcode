//
// Created by zhangqi on 2018/1/3.
// Time:  O(n)
// Space: O(1)
#include "ListNode.h"

class Solution {
public:
    void reorderList(ListNode* head) {
        auto slow = head;
        auto fast = head;
        if (!head){
            return;
        }
        while(fast->next && fast->next->next){
            slow = slow->next;
            fast = fast->next->next;
        }

        auto tmp = slow->next;
        slow->next = nullptr;
        slow = tmp;
        merge(head, reverse(slow));
    }

private :

    ListNode *reverse(ListNode *head){
        ListNode dummy{0};
        while (head){
            auto tmp = head->next;
            head->next = dummy.next;
            dummy.next = head;
            head = tmp;
        }
        return dummy.next;
    }

    ListNode *merge(ListNode* l1, ListNode* l2){
        ListNode dummy{0};
        auto ptr = &dummy;
        while (l1 && l2){
            auto tmp = l1->next;
            ptr->next = l1;
            ptr->next->next = l2;
            ptr = l2;

            l1 = tmp;
            l2 = l2->next;
        }
        if(l1){
            ptr->next = l1;
        }
        return dummy.next;
    }
};