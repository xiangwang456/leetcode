# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a ListNode
    # @param x, an integer
    # @return a ListNode
    def partition(self, head, x):
        if not head:
            return head
        large = None
        large_end = None
        res = None
        res_end = None
        while head:
            if head.val >= x:
                if large == None:
                    large = head
                    large_end = head
                else:
                    large_end.next = head
                    large_end = large_end.next
            else:
                if res == None:
                    res = head
                    res_end = head
                else:
                    res_end.next = head
                    res_end = res_end.next
            head = head.next
        if large_end is not None:
            large_end.next = None
        if res is not None:
            res_end.next = large
        else:
            res = large
        return res
                    
from ListNode import *
node1 = ListNode(1)
node2 = ListNode(1)

node1.next = node2

solu = Solution()
res = solu.partition(node1,0)
while res:
    print res.val
    res = res.next