# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a ListNode
    # @param m, an integer
    # @param n, an integer
    # @return a ListNode
    def reverseBetween(self, head, m, n):
        i = 1
        res = head
        res_end = head
        rev = None
        rev_end = None
        while head:
            next_node = head.next
            if i < m:
                res_end = head
            elif i >=m and i <= n:
                head.next = rev
                rev = head
                if i == m:
                    rev_end = head
            else:
                break
            head = next_node
            i += 1
        if m == 1:
            res = rev
            res_end = rev_end
        else:
            res_end.next = rev
        rev_end.next = head
        return res
            