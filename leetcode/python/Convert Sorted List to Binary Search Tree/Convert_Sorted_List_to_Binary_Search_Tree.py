# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None
#
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None
class Solution:
    # @param head, a list node
    # @return a tree node
    def sortedListToBST(self, head):
        if not head:
            return head
        slow = head
        fast = head
        pre = None
        while fast.next and fast.next.next:
            pre = slow
            slow = slow.next
            fast = fast.next.next

        if pre is not None:
            pre.next = None
        else:
            head = None
        root = TreeNode(slow.val)
        root.left = self.sortedListToBST(head)
        root.right = self.sortedListToBST(slow.next)
        return root

from ListNode import *
from TreeNode import *
node1 = ListNode(1)
node2 = ListNode(3)
node3 = ListNode(1)

node1.next = node2

solu = Solution()
tree = solu.sortedListToBST(node1)
print 'ok'