# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None
from TreeNode import TreeNode

class Solution:
    # @param inorder, a list of integers
    # @param postorder, a list of integers
    # @return a tree node
    def buildTree(self, inorder, postorder):
        if not inorder :
            return None
        root_val = postorder[-1]
        root = TreeNode(root_val)
        root_index = inorder.index(root_val)
        root.left = self.buildTree(inorder[:root_index],postorder[:root_index])
        root.right = self.buildTree(inorder[root_index + 1:],postorder[root_index  : -1])
        return root

solu = Solution()
solu.buildTree([2,1,3],[2,3,1])