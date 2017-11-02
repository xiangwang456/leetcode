//
// Created by zhangqi on 2017/11/2.
// Time:  O(n)
// Space: O(1)

#include <stack>

using namespace std;

struct ListNode {
    int val;
    ListNode *next;

    ListNode(int x) : val(x), next(nullptr) {}
};


class Solution {
public:
    ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
        stack<int> s1, s2;
        while(l1){
            s1.push(l1->val);
            l1 = l1->next;
        }

        while (l2){
            s2.push(l2->val);
            l2 = l2->next;
        }

        ListNode *newNode = nullptr, *head = nullptr;
        int sum = 0;
        while (!s1.empty() || !s2.empty()){
            if(!s1.empty()){
                sum += s1.top();
                s1.pop();
            }

            if(!s2.empty()){
                sum += s2.top();
                s2.pop();
            }

            newNode = new ListNode{sum % 10};
            newNode->next = head;
            head = newNode;
            sum /= 10;
        }

        if(sum){
            newNode = new ListNode{sum % 10};
            newNode->next = head;
            head = newNode;
        }

        return  head;
    }
};