# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param a ListNode
    # @return a ListNode
    def swapPairs(self, head):
        pre = ListNode(-1)
        pre.next = head
        curr = head
        head = pre
        while curr and curr.next:
            pre.next = curr.next
            curr.next = pre.next.next
            pre.next.next = curr
            
            pre = curr
            curr =pre.next
        return head.next