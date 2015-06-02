# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

from ListNode import ListNode
class Solution:
    # @param head, a ListNode
    # @return a ListNode
    def sortList(self, head):
        if head is None or head.next is None:
            return head
        slow = head
        fast = head
        while fast.next and fast.next.next:
            slow = slow.next
            fast = fast.next.next
        head1 = head
        head2 = slow.next
        slow.next = None
        head1 = self.sortList(head1)
        head2 = self.sortList(head2)
        head = self.merge(head1,head2)
        return head

    def merge(self,head1,head2):
        if head1 is None:
            return head2
        if head2 is None:
            return head1
        dump = ListNode(0)
        p = dump
        while head1 and head2:
            if head1.val < head2.val:
                p.next = head1
                head1 = head1.next
            else:
                p.next = head2
                head2 = head2.next
            p = p.next
        if head1:
            p.next = head1
        if head2:
            p.next = head2
        return dump.next

solu = Solution()
node1 = ListNode(3)
node2 = ListNode(2)
node3 = ListNode(4)
node1.next = node2
node2.next = node3
head = solu.sortList(node1)
while head:
    print head.val
    head = head.next