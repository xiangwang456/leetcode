class Solution:
    # @param A, a list of integers
    # @return a boolean
    def canJump(self, A):
        n = len(A)
        if n == 1:
            return True
        t = 0
        for i in range(1,n):
            t = max(A[i - 1],t) - 1
            if t < 0:
                return False
        return True