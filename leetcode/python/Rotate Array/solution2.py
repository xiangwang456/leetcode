class Solution:
    # @param nums, a list of integer
    # @param k, num of steps
    # @return nothing, please modify the nums list in-place.
    def rotate(self, nums, k):
        n = len(nums)
        k %= n
        num1 = nums[:k]
        num1.reverse()
        num2 = nums[k:]
        num2.reverse()
        for i in range(k):
            nums[i] = num1[i]
        for i in range(n - k):
            nums[i + k] = num2[i]
        nums.reverse()
        print nums
solu = Solution()
solu.rotate([1,2,3,4,5],1)