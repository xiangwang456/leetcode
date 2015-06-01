# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @return a list of lists of integers
    def zigzagLevelOrder(self, root):
        if not root :
            return []
        left_to_right = True
        res =[]
        level = []
        queue = []
        queue.append(root)
        queue.append(None)
        while queue:
            root = queue.pop(0)
            if root is None:
                if queue:
                    queue.append(None)
                res.append(level)
                level = []
                left_to_right = not left_to_right
            else:
                if left_to_right:
                    level.append(root.val)
                else:
                    level.insert(0,root.val)
                if root.left is not None:
                    queue.append(root.left)
                if root.right is not None:
                    queue.append(root.right)
        return res