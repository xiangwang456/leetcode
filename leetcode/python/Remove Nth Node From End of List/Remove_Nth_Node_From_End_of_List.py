# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @return a ListNode
    def removeNthFromEnd(self, head, n):
        if not head:
            return head
        h = head
        pre = None
        i = 0
        while h:
            if i == n:
                pre = head
            elif i > n:
                pre = pre.next
            h = h.next
            i += 1
        if pre == None:
            return head.next
        else:
            pre.next =pre.next.next
        return head

from ListNode import ListNode
solu = Solution()
node1 = ListNode(1)
node2 = ListNode(2)
node3 = ListNode(3)
node4 = ListNode(4)
node5 = ListNode(5)
node1.next = node2
#node2.next = node3
node3.next = node4
#node4.next = node5
head = solu.removeNthFromEnd(node1,1)
while head:
    print head.val
    head = head.next