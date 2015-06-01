class Solution:
    # @param A, a list of integers
    # @param target, an integer to be inserted
    # @return integer
    def searchInsert(self, A, target):
        n = len(A)
        left = 0 
        right = n - 1
        while left <= right:
            num = (left + right)/2
            if  target < A[num]:
                right = num - 1
            elif target > A[num]:
                left = num + 1
            else:
                return num 
        if right == -1:
            return 0
        elif left == n:
            return n  
        else:
            #A[right] < target and A[left] > target:
            return left

solu = Solution()
solu.searchInsert([1,3], 4)