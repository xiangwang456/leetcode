# Definition for singly-linked list with a random pointer.
# class RandomListNode:
#     def __init__(self, x):
#         self.label = x
#         self.next = None
#         self.random = None

class Solution:
    # @param head, a RandomListNode
    # @return a RandomListNode
    def copyRandomList(self, head):
        if head is None:
            return None
        h = head
        p = h
        #第一遍扫描：在原表后添加新的节点
        while p is not None:
            next_node = p.next
            new_node = RandomListNode(p.label)
            p.next = new_node
            new_node.next = next_node
            p = next_node
        p = h
        #第二遍扫描：新节点添加随机指针
        while p is not None:
            next_node = p.next.next;
            new_node = p.next
            if p.random is not None:
                new_node.random = p.random.next
            p = next_node

        
        #第三遍扫描：将新节点从原来的表中拆下来
        res = None
        end = None
        p = h
        while p is not None:
            next_node = p.next.next
            new_node = p.next
            if res is None:
                res = new_node
                end = new_node
            else:
                end.next = new_node
                end = end.next
            p.next = next_node
            p = next_node
        return res

