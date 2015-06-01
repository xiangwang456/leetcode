# Definition for a  binary tree node
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    # @param root, a tree node
    # @param sum, an integer
    # @return a list of lists of integers
    def pathSum(self, root, sum):
        if root is None:
            return []
        res = []
        one = []
        self._pathSum(root,one,res,sum)
        return res
        
    def _pathSum(self,root,one,res,sum):
        if root is None:
            return
        elif root.left is None and root.right is None:
            if root.val == sum:
                one.append(root.val)
                res.append(one[:])
                one.pop()
        else:
            one.append(root.val)
            self._pathSum(root.left,one,res,sum - root.val)
            self._pathSum(root.right,one,res,sum - root.val)
            one.pop()