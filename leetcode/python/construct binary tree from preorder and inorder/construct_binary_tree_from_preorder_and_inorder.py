# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param preorder, a list of integers
    # @param inorder, a list of integers
    # @return a tree node
    def buildTree(self, preorder, inorder):
        if len(inorder) == 0:
            return None
        root_val = preorder.pop(0)
        root_index = inorder.index(root_val)
        root = TreeNode(root_val)
        root.left = self.buildTree(preorder,inorder[:root_index])
        root.right = self.buildTree(preorder,inorder[root_index + 1:])
        return root