//
// Created by zhangqi on 2017/10/31.
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
    bool isPalindrome(ListNode* head) {
        if(!head || !head->next){
            return true;
        }
        stack<int> s;
        auto slow = head;
        auto fast = head;
        s.push(head->val);
        while(fast->next && fast->next->next){
            fast = fast->next->next;
            slow = slow->next;
            s.push(slow->val);
        }
        //如果fast下个元素为空则弹出（代表有奇数个结点）
        if(!fast->next) s.pop();
        while(slow->next){
            slow = slow->next;
            if(slow->val != s.top()){
                return  false;
            }

            s.pop();
        }
        return  true;

    }
};