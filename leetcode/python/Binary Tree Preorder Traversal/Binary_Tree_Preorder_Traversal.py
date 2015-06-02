# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

from TreeNode import TreeNode
class Solution:
    # @param root, a tree node
    # @return a list of integers
    def preorderTraversal(self, root):
        if root:
            return []
        res = []
        return self._preorderTraversal(root,res)
    def _preorderTraversal(self,root,res):
        if root is None:
            return res
        res.append(root.val)
        self._preorderTraversal(root.left,res)
        self._preorderTraversal(root.right,res)
        return res

solu = Solution()
root = TreeNode(1)
solu.preorderTraversal(root)