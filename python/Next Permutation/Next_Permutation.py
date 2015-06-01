class Solution:
    # @param num, a list of integer
    # @return nothing (void), do not return anything, modify num in-place instead.
    def nextPermutation(self, num):
        k = -1
        l = -1
        n = len(num)
        #找出num[i] < num[i + 1]中最大的i
        for i in range(n - 1):
            if num[i] < num[i + 1]:
                k = i
        
        #找出num[i] > num[k]中最大的i，并交换num[k] 和 num[i]
        if k >= 0:
            for i in range(n):
                if num[i] > num[k]:
                    l = i
            num[l],num[k] = num[k],num[l]
                    
        #num[k + 1:]逆序
        left = k + 1
        right = n - 1
        while left < right:
            num[left],num[right] = num[right],num[left]
            left += 1
            right -= 1
        
solu = Solution()
solu.nextPermutation([1,3,2])