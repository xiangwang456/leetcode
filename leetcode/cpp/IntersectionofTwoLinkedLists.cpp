//
// Created by zhangqi on 2017/11/1.
// Time:  O(n + m)
// Space: O(1)


struct ListNode {
    int val;
    ListNode *next;

    ListNode(int x) : val(x), next(nullptr) {}
};

//常规做法：找出长度较长的链表，遍历多出来的步数，然后再同时开始遍历
class Solution0 {
public:
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
        if (headA == nullptr || headB == nullptr) {
            return nullptr;
        }
        int cntA = 0, cntB = 0;
        auto currA = headA, currB = headB;
        while (currA) {
            cntA++;
            currA = currA->next;
        }

        while (currB) {
            cntB++;
            currB = currB->next;
        }

        currA = headA;
        currB = headB;
        if (cntA > cntB) {
            for (int i = 0; i < cntA - cntB; i++) {
                currA = currA->next;
            }
        } else {
            for (int i = 0; i < cntB - cntA; i++) {
                currB = currB->next;
            }
        }
        while (currA && currB) {
            if (currA == currB) {
                return currA;
            } else {
                currA = currA->next;
                currB = currB->next;
            }
        }
        return nullptr;
    }

};

//两个指针分别遍历两个链表，当遍历至链尾的时候转至另一个链表的头结点重新遍历,
// 因为遍历的是两个链表的总长度，因为剩余的步数一样，所以如果有交叉结点，两个指针一定会相遇
class Solution1 {
public:
    ListNode *getIntersectionNode(ListNode *headA, ListNode *headB) {
        auto currA = headA,currB = headB;
        ListNode *tailA = nullptr, *tailB = nullptr;
        while(currA && currB){
            if(currA == currB){
                return currA;
            }
            if(currA->next){
                currA = currA->next;
            } else if(!tailA){
                tailA = currA;
                currA = headB;
            } else{
                break;
            }

            if(currB->next){
                currB = currB->next;
            } else if(!tailB){
                tailB = currB;
                currB = headA;
            } else{
                break;
            }

        }

        return nullptr;
    }
};