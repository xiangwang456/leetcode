# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a ListNode
    # @return a ListNode
    def deleteDuplicates(self, head):
        d = {}
        h = head
        while h:
            if h.val not in d:
                d[h.val] = 1
            else:
                d[h.val] += 1
            h = h.next
        res = ListNode(0)
        end = res
        while head:
            if d[head.val] == 1:
                end.next = head
                end = end.next
            head = head.next
        end.next = None
        return res.next
            