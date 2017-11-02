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
    ListNode* reverseBetween(ListNode* head, int m, int n) {
        ListNode dummy{0};
        dummy.next = head;
        auto prev = &dummy;
        for(int i = 0; i < m - 1; i++){
            prev = prev->next;
        }

        //此时头插法需要三个指针 ： 1> 头指针 2> 尾指针（把当前插入结点后面的元素放到尾指针后面  3> 当前结点指针
        auto head2 = prev;
        auto tailNode = prev->next;
        auto curr = prev->next->next;

        for(int i = m; i < n; i++){
            tailNode->next = curr->next;
            curr->next = head2->next;
            head2->next = curr;

            curr = tailNode->next;
        }

        return  dummy.next;

    }
};