# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a ListNode
    # @return a list node
    def detectCycle(self, head):
        if not head:
            return None
        slow = head
        fast = head
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            if slow == fast:
                break
        if fast is None or fast.next is None:
            return None
        slow = head
        while slow != fast:
            slow = slow.next
            fast = fast.next
        return slow
            
from ListNode import ListNode
solu = Solution()
node1 = ListNode(1)
node2 = ListNode(2)
node3 = ListNode(2)
node4 = ListNode(4)
node5 = ListNode(5)
node1.next = node2
node2.next = node1
#node3.next = node4
#node4.next = node5
head = solu.detectCycle(node1)
print head.val
#while head:
#    print head.val
#    head = head.next