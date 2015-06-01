# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param num, a list of integers
    # @return a tree node
    def sortedArrayToBST(self, num):
        
        if not num:  #either num is [] or num is None result is true            
            return None
        mid = len(num)/2
        left_array = num[:mid]
        right_array = num[mid+1:]
        root = TreeNode(mid)
        root.left = self.sortedArrayToBST(left_array)
        root.right = self.sortedArrayToBST(right_array)
        return root



