class Solution:
    # @param A, a list of integers
    # @param target, an integer to be searched
    # @return a list of length 2, [index1, index2]
    def searchRange(self, A, target):
        if not A:
            return [-1,-1]
        n = len(A) 
        if n == 1:
            if A[0] == target:
                return [0,0]
            else:
                return [-1,-1]
        l = 0
        r = n - 1
        lower = -1
        upper = -1
        
        #find lower bound
        while l <= r:
            mid = (l + r) / 2
            if  mid < n-1 and A[mid + 1] == target and A[mid] < target:
                lower = mid + 1
                break
            elif mid == 0 and A[mid] == target:
                lower = mid
                break
            elif A[mid] < target:
                l = mid + 1
            else:
                r = mid - 1
        
                
         #find upper bound
        l = 0
        r = n - 1
        while l <= r:
            mid = (l + r) / 2
            if mid > 0 and A[mid - 1] == target and A[mid] > target:
                upper = mid - 1
                break
            elif mid == n-1 and A[mid] == target:
                upper = mid
                break
            elif A[mid] > target:
                r = mid -1
            else:
                l = mid + 1
        return [lower,upper]
        
solu = Solution()
solu.searchRange([2,2], 2)