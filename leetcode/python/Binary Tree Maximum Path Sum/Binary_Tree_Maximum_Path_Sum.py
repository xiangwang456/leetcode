# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @return an integer
    def maxPathSum(self, root):
        if root is None:
            return 0
        Solution.max = -1000
        self._maxSum(root)
        return Solution.max
    
    def _maxSum(self,root):
        sum = root.val
        left_max = 0
        right_max = 0
        if root.left:
            left_max = self._maxSum(root.left)
            if left_max > 0:
                sum += left_max
        if root.right:
            right_max = self._maxSum(root.right)
            if right_max > 0:
                sum += right_max
        if sum > Solution.max:
            Solution.max = sum
        return max(root.val,max(root.val + left_max,root.val + right_max))