# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a ListNode
    # @return nothing
    def reorderList(self, head):
        if head is None or head.next is None:
            return head
        slow = head
        fast = head
        while fast.next and fast.next.next:
            slow = slow.next
            fast = fast.next.next
        fast = slow.next
        slow.next = None
        
        temp = fast.next
        fast.next = None
        while temp:
            next_node = temp.next
            temp.next = fast
            fast = temp
            temp = next_node
        
        tail = head
        while fast:
            next_node = fast.next
            fast.next = tail.next
            tail.next = fast
            tail = tail.next.next
            fast = next_node
        return head
            
        
from ListNode import ListNode
solu = Solution()
node1 = ListNode(1)
node2 = ListNode(2)
node3 = ListNode(3)
node4 = ListNode(4)
node5 = ListNode(5)
#node1.next = node2
node2.next = node3
node3.next = node4
#node4.next = node5
head = solu.reorderList(node1)
while head:
    print head.val
    head = head.next