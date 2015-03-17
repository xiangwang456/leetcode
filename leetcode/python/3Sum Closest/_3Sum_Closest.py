class Solution:
    # @return an integer
    def threeSumClosest(self, num, target):
        n = len(num)
        num.sort()
        res = num[0] + num[1] + num[2]
        for i in range(n - 2):
            l = i + 1
            r = n - 1
            while l < r:
                s = num[l] + num[r] + num[i]
                if abs(s - target) < abs(res - target):
                    res = s
                if s == target:
                    return s
                elif s < target:
                    l += 1
                else:
                    r -= 1
        return s
                