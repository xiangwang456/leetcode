# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @return an integer
    def maxDepth(self, root):
        if root is None:
            return 0
        elif root.left is None and root.right is None:
            return 1
        elif root.left is None and root.right is not None:
            return self.maxDepth(root.right) + 1
        elif root.right is not None and root.right is None:
            return self.maxDepth(root.left) + 1
        else:
            left_depth = self.maxDepth(root.left) + 1
            right_depth = self.maxDepth(root.right) + 1
            return max(left_depth,right_depth)