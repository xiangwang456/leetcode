# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

from ListNode import ListNode
class Solution:
    # @param head, a ListNode
    # @param k, an integer
    # @return a ListNode
    def rotateRight(self, head, k):
        if head is None:
            return head
        n = 0
        h = head
        while h is not None:
            h = h.next
            n += 1
        k %= n
        if k == 0:
            return head
        res = head
        prev = head
        for i in range(n - k):
            prev = res
            res = res.next
            
        end = res
        while end.next:
            end = end.next
        end.next = head
        prev.next = None
        return res

solu = Solution()
node1 = ListNode(1)
node2 = ListNode(2)
node3 = ListNode(3)
node4 = ListNode(4)
node5 = ListNode(5)
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
head = solu.rotateRight(node1,2)
while head:
    print head.val
    head = head.next