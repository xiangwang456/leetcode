# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    # @param head, a ListNode
    # @param k, an integer
    # @return a ListNode
    def reverseKGroup(self, head, k):
        if head is None:
            return head
        h = head
        n = 0
        while h:
            h = h.next
            n += 1
        num_groups = n / k
        if num_groups == 0:
            return head
        last_group = k * num_groups
        
        temp = None
        temp_end = None
        res = None
        res_end = None
        i = 1
        while head:
            next_node = head.next
            if i <= last_group:
                if temp is None:
                    temp_end = head
                head.next = temp
                temp = head
                if i % k == 0:
                    if res is None:
                        res = temp
                        res_end = temp_end
                    else:
                        res_end.next = temp
                        res_end = temp_end
                    temp = None
            else:
                res_end.next = head
                break
            i += 1
            head = next_node
        return res

from ListNode import ListNode
solu = Solution()
node1 = ListNode(1)
node2 = ListNode(2)
node3 = ListNode(3)
node4 = ListNode(4)
node5 = ListNode(5)
node1.next = node2
node2.next = node3
#node3.next = node4
node4.next = node5
head = solu.reverseKGroup(node1,1)
while head:
    print head.val
    head = head.next