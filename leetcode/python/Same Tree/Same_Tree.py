# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param p, a tree node
    # @param q, a tree node
    # @return a boolean
    def isSameTree(self, p, q):
        if p is None and q is None :
            return True
        if p is not None and q is not None:
            return p.val == q.val and self.isSameTree(q.left,p.left) and self.isSameTree(q.right,p.right)
        return False