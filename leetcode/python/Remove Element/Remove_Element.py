class Solution:
    # @param    A       a list of integers
    # @param    elem    an integer, value need to be removed
    # @return an integer
    def removeElement(self, A, elem):
        num = 0
        if not A:
            return num
        rail = len(A) - 1
        while rail >= 0 and A[rail] == elem :
                rail -= 1
                A.pop()
        for i,val in enumerate(A):
            if i > rail:
                break
            if val == elem:
                rail -= 1
                A.pop()
            else:
                num += 1
                
            
        return num

solu = Solution()
solu.removeElement([4,5], 4)