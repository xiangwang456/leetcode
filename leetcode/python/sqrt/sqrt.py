class Solution:
    # @param x, an integer
    # @return an integer
    def sqrt(self, x):
        left = 0
        right = x
        while left <= right:
            mid = (left + right) / 2
            square = mid * mid
            if square == x:
                return mid
            elif square < x:
                left = mid + 1
            else:
                right = mid - 1
        return right

solu = Solution()
print solu.sqrt(5)