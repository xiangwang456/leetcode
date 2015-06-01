class Solution:
    # @param head, a ListNode
    # @return nothing
    def reorderList(self, head):
        if not head:
            return
        p = head
        l = []
        while p:
            l.append(p)
            p = p.next
        t = len(l)
        for i in range(t/2):
            l[i].next = l[t-1-i]
            l[t-1-i].next = l[i+1]
        l[t/2].next = None