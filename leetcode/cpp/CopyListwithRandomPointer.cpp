//
// Created by zhangqi on 2017/10/31.
// Time:  O(n)
// Space: O(1)

    struct RandomListNode {
         int label;
         RandomListNode *next, *random;
         RandomListNode(int x) : label(x), next(nullptr), random(nullptr) {}
     };

class Solution {
public:
    RandomListNode *copyRandomList(RandomListNode *head) {
        //在每个结点后创建一个新结点
        for(RandomListNode *curr = head;curr; curr = curr->next->next){
            RandomListNode *node = new RandomListNode(curr->label);
            node->next = curr->next;
            curr->next = node;
        }

        //将新结点指向正确的位置
        for(auto curr = head; curr; curr = curr->next->next){
            if(curr->random){
                curr->next->random = curr->random->next;
            }
        }

        //分开两个链表
        RandomListNode dummy{0};

        for(auto curr = head ,copyNode = &dummy; curr; ){
            copyNode->next = curr->next;
            curr->next = curr->next->next;

            curr = curr->next;
            copyNode = copyNode->next;
        }

        return  dummy.next;

    }
};