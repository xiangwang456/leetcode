# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @return a tree node
    def recoverTree(self, root):
        node_list = []
        val_list = []
        self.inorderTree(root,node_list,val_list)
        val_list.sort()
        for i in range(len(node_list)):
            node_list[i].val = val_list[i] 
        return root
    def inorderTree(self,root,node_list,val_list):
        if root:
            self.inorderTree(root.left,node_list,val_list)
            node_list.append(root)
            val_list.append(root.val)
            self.inorderTree(root.right,node_list,val_list)