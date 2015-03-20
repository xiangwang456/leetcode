# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a ListNode
    # @return a ListNode
    def insertionSortList(self, head):
        if not head:
            return head
        curr = head.next
        last = head
        p = ListNode(0)
        pre = p
        pre.next = head
        while curr:
            next_node = curr.next
            if curr.val < last.val:
                last.next = curr.next
                while pre.next and pre.next.val <= curr.val:
                    pre = pre.next
                curr.next = pre.next
                pre.next = curr
                pre = p
            else:
                last = last.next
            curr = next_node
        return pre.next

from ListNode import ListNode
solu = Solution()
node1 = ListNode(2)
node2 = ListNode(1)
node3 = ListNode(3)
node4 = ListNode(4)
node5 = ListNode(5)
node1.next = node2
#node2.next = node1
node3.next = node4
node4.next = node5
head = solu.insertionSortList(node1)
while head:
    print head.val
    head = head.next