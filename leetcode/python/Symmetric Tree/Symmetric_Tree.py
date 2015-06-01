# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @return a boolean
    def isSymmetric(self, root):
        if root is None:
            return True
        return self._isSymetric(root.left,root.right)
    
    def _isSymetric(self,left,right):
        if left is None and right is None:
            return True
        if left is not None and right is not None:
            return left.val == right.val and self._isSymetric(left.left,right.right) and self._isSymetric(left.right,right.left)
        return False
        