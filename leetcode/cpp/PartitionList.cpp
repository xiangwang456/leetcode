//
// Created by zhangqi on 2018/1/2.

//Time : O(n)
//Space : O(1)

#include "ListNode.h"


class Solution {
public:
    ListNode* partition(ListNode* head, int x) {
        ListNode smallerDummy{0};
        ListNode bigerDummy{0};
        auto small = &smallerDummy;
        auto big = &bigerDummy;
        while (head){
            if(x > head->val){
                small->next = head;
                small = small->next;
            } else{
                big->next = head;
                big = big->next;
            }
            head = head->next;
        }
        small->next = bigerDummy.next;
        big->next = nullptr;
        return smallerDummy.next;
    }
};