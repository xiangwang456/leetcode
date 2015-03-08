class Solution:
    # @param A a list of integers
    # @return nothing, sort in place
    def sortColors(self, A):
        n = len(A)
        r = 0 # 最后一个红色的索引
        b = n - 1 #第一个蓝色的索引
        i = 0
        while i <= b:
            if A[i] == 0:
                A[i],A[r] = A[r],A[i]
                r += 1
                i += 1 # 被交换的数在前面，所只可能是1或0，都不需要移动到后面
            elif A[i] == 2:
                A[i],A[b] = A[b],A[i]
                b -= 1
            # 这里i不能加1 因为从后面交换过来的数可能是0、1、2中的任何一个         
            else:
                i += 1
solu = Solution()
solu.sortColors([1,0])