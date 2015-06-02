class Solution:
    # @param    A       a list of integers
    # @param    elem    an integer, value need to be removed
    # @return an integer
    def removeElement(self, A, elem):
        num = 0
        for i,val in enumerate(A):
            if(val != elem):
                A[num] = val
                num += 1
        return num

solu = Solution()
solu.removeElement([4,5], 4)