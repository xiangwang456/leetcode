//
// Created by zz on 2017/12/13.
//

#include "ListNode.h"
#include <limits>

using namespace std;

class Solution {
public:
    ListNode *insertionSortList(ListNode *head) {
        ListNode dummy{numeric_limits<int>::min()};
        ListNode *positon = nullptr;
        ListNode *curr = head;

        while (curr) {
            positon = findInsertPosition(&dummy, curr->val);
            auto tmp = curr->next;
            curr->next = positon->next;
            positon->next = curr;
            curr = tmp;
        }
        return dummy.next;
    }


    ListNode *findInsertPosition(ListNode *head, int x) {
        ListNode *prev = nullptr;
        for (auto curr = head; curr && curr->val <= x;) {
            prev = curr;
            curr = curr->next;
        }
        return prev;


    }
};
