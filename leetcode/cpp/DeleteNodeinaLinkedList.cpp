//
// Created by zhangqi on 2017/11/1.
// Time:  O(n)
// Space: O(1)
#include <stack>

using namespace std;

struct ListNode {
    int val;
    ListNode *next;

    ListNode(int x) : val(x), next(nullptr) {}
};


//将下一个结点的值和指针赋给当前结点，把下一个结点delete
class Solution {
public:
    void deleteNode(ListNode* node) {

        if(!node || !node->next){
            return;
        }
        auto deleteNode = node->next;
        node->val = node->next->val;
        node->next = node->next->next;
        delete deleteNode;

    }
};