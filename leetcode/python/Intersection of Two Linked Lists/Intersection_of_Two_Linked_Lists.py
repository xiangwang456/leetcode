# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param two ListNodes
    # @return the intersected ListNode
    def getIntersectionNode(self, headA, headB):
        if headA is None or headB is None:
            return None
        
        ha = headA
        len_a = 1
        while ha:
            len_a += 1
            ha = ha.next
        hb = headB
        len_b = 1
        while hb:
            len_b += 1
            hb = hb.next
        if hb != ha:
            return None
        ha = headA
        hb = headB
        if len_a > len_b:
            for i in range(len_a - len_b):
                ha = ha.next
        else:
            for i in range(len_b - len_a):
                hb = hb.next
        while ha != hb:
            ha = ha.next
            hb = hb.next
        return ha