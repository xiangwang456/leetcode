# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @return nothing, do it in place
    def flatten(self, root):
         if root is None:
             return
         node_list = []
         self.preorder(root,node_list)
         for i,node in enumerate(node_list):
             if i < len(node_list) - 1:
                 node.right = node_list[i+1]
                 node.left = None
             else:
                 node.left = None
                 node.right = None
         
    def preorder(self,root,node_list):
        if root is None:
            return
        node_list.append(root)
        self.preorder(root.left,node_list)
        self.preorder(root.right,node_list)
        