class Solution:
    # @param A, a list of integers
    # @return an integer
    def firstMissingPositive(self, A):
        if not A:
            return 1
        n = len(A)
        for i,val in enumerate(A):
            while val != i + 1:
                if A[i] >= n or A[i] <= 0 or A[i] == A[A[i] - 1]:
                    break
                #A[i],A[A[i] - 1 ] = A[A[i] - 1 ],A[i]
                tmp = A[i]
                A[i] = A[tmp - 1]
                A[tmp - 1] = tmp
        
        for i,val in enumerate(A):
            if val != i + 1:
                return i + 1
        return n + 1

solu = Solution()
print solu.firstMissingPositive([-1,4,2,1,9,10])