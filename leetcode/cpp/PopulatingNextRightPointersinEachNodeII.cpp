//
// Created by zhangqi on 2018/1/31.
//Time : O(n)
//Space : O(1)

#include "TreeLinkNode.h"

class Solution {
public:
    void connect(TreeLinkNode *root) {
        TreeLinkNode *head = root;
        while (head){
            TreeLinkNode *curr = head;
            TreeLinkNode *prev = nullptr;
            TreeLinkNode *next = nullptr;
            while (curr){
               if(!next){
                   if(curr->left){
                       next = curr->left;
                   } else if(curr->right){
                       next = curr->right;
                   }
               }

                if(curr->left){
                    if(prev){
                        prev->next = curr->left;
                    }
                    prev = curr->left;
                }

                if(curr->right){
                    if(prev){
                        prev->next = curr->right;
                    }
                    prev = curr->right;
                }
                curr = curr->next;
            }
        head = next;
        }
    }
};
