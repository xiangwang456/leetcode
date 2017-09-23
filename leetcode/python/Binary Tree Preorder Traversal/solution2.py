# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @return a list of integers
    def preorderTraversal(self, root):
        path = []
        if not root:
            return path
        list = []
        list.append(root)
        while(list):
            root = list.pop()
            path.append(root.val)
            if root.right:
                list.append(root.right)
            if root.left:
                list.append(root.left)
        return path