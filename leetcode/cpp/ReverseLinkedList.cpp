//
// Created by zhangqi on 2017/10/31.
// Time:  O(n)
// Space: O(1)

struct ListNode {
    int val;
    ListNode *next;

    ListNode(int x) : val(x), next(nullptr) {}
};

class Solution {
public:
    ListNode* reverseList(ListNode* head) {
        ListNode dummy{0};
        auto curr = head;
        //头插法
        while (curr){
            auto next = curr->next;
            curr->next = dummy.next;
            dummy.next = curr;
            curr = next;

        }
        return dummy.next;
    }
};