//
// Created by zhangqi on 2017/11/2.
// Time:  O(n)
// Space: O(1)


struct ListNode {
    int val;
    ListNode *next;

    ListNode(int x) : val(x), next(nullptr) {}
};


class Solution {
public:
    ListNode* oddEvenList(ListNode* head) {
        if(!head)
            return head;
        for(ListNode *oddTail = head, *curr = head->next; curr && curr->next; curr = curr->next){
            //当前结点是偶数结点，当前结点的下个结点奇数结点
            //奇数结点的下个结点是偶结点
            ListNode *evenHead = oddTail->next;
            //此时奇数结点下个结点变为下一个奇数结点
            oddTail->next = curr->next;

            oddTail = oddTail->next;
            //保证当前结点的下个结点还是奇数结点
            curr->next = oddTail->next;
            oddTail->next = evenHead;
        }
        return head;
    }
};
