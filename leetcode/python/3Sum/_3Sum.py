class Solution:
    # @return a list of lists of length 3, [[val1,val2,val3]]
    def threeSum(self, num):
        if len(num) < 3:
            return []
        res = []
        num.sort()
        for i in range(len(num) - 2):
            if i == 0 or (num[i] != num[i - 1]):
                left = i + 1
                right = len(num) - 1
                while left < right:
                    sum = num[i] + num[left] + num[right]
                    if sum == 0:
                        res.append([num[i],num[left],num[right]])
                        left += 1
                        right -= 1
                        while left < right and num[left] == num[left - 1]:
                            left += 1
                        while left <right and num[right] == num[right + 1]:
                            right -= 1
                    elif sum > 0:
                        right -= 1
                    else:
                        left += 1
        return res
solu = Solution()
print solu.threeSum([-1,0,0,0])