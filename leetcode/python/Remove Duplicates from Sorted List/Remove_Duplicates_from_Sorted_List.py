# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a ListNode
    # @return a ListNode
    def deleteDuplicates(self, head):
        if not head:
            return head
        h = head
        pre = head
        while h.next:
            h = h.next
            if pre.val != h.val:
                pre.next = h
                pre = pre.next
        pre.next = None
        return head

from ListNode import ListNode
solu = Solution()
node1 = ListNode(1)
node2 = ListNode(1)
node3 = ListNode(2)
node4 = ListNode(4)
node5 = ListNode(5)
node1.next = node2
node2.next = node3
#node3.next = node4
#node4.next = node5
head = solu.deleteDuplicates(node1,)
while head:
    print head.val
    head = head.next