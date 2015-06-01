# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None
#         self.next = None

class Solution:
    # @param root, a tree node
    # @return nothing
    def connect(self, root):
        head = None
        prev = None
        while root is not None:
            while root is not None:
                if root.left is not None:
                    if prev is None:
                        prev = root.left
                        head = prev
                    else:
                        prev.next = root.left
                        prev = prev.next
                if root.right is not None:
                    if prev is None:
                        prev = root.right
                        head = prev 
                    else:
                        prev.next = root.right
                        prev = prev.next
                root = root.next
            root = head
            prev = None
            head = None
    