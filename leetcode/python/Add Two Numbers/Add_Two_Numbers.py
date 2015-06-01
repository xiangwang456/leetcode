# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @return a ListNode
    def addTwoNumbers(self, l1, l2):
        if not l1:
            return l2
        if not l2:
            return l1
        carry = 0
        head = ListNode(0)
        h = head
        while l1 and l2:
            sum = l1.val + l2.val + carry
            carry = sum / 10
            sum_node = ListNode(sum)
            h.next = sum_node
            h = h.next
            l1 = l1.next
            l2 = l2.next
        if carry:
            sum_node = ListNode(carry)
            h.next = sum_node
        return head.next




from ListNode import ListNode
solu = Solution()
node1 = ListNode(0)
node2 = ListNode(0)
node3 = ListNode(3)
node4 = ListNode(4)
node5 = ListNode(5)
#node1.next = node2
#node2.next = node1
node3.next = node4
node4.next = node5
head = solu.addTwoNumbers(node1,node2)
while head:
    print head.val
    head = head.next