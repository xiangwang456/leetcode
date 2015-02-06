class Solution:
    # @return a list of lists of length 4, [[val1,val2,val3,val4]]
    def fourSum(self, num, target):
        n = len(num)
        res = []
        num.sort()
        for a in range(n-3):
            if a > 0 and num[a] == num[a-1]:
                continue
            for b in range (a+1,n-2):
                if b > a+1 and num[b] == num[b-1]:
                    continue
                head = b + 1
                rear = n - 1
                while head < rear:
                    sum = num[a] + num[b] + num[head] + num[rear]
                    if target == sum:
                        res.append([num[a],num[b],num[head],num[rear]])
                        head = head + 1
                        rear = rear -1
                        while head < rear and num[head] == num[head + 1]:
                            head += 1
                        while head < rear and num[rear] == num[rear - 1]:
                            rear -= 1
                    elif target < sum:
                        rear -= 1
                    else:
                        head += 1
        return res
solu = Solution()
res = solu.fourSum([1,0,-1,0,-2,2],0)
print res
