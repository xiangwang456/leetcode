# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @return a list of lists of integers
    def levelOrder(self, root):
        if root is None:
            return []
        queue = []
        level = []
        path = []
        queue.append(root)
        queue.append(None)
        while queue:
            root = queue.pop(0)
            if root:
                level.append(root.val)
                if root.left:
                    queue.append(root.left)
                if root.right:
                    queue.append(root.right)
            else:
                path.append(level[:])
                level = []
                if queue:
                    queue.append(None)
        return path