class Solution:
    # @return a list of lists of integers
    def generate(self, numRows):
        res = []
        if numRows == 0:
            return res
        res.append([1])
        if numRows == 1:
            return res
        res.append([1,1])
        if numRows == 2:
            return res
        for row in range(2,numRows):
            cur = []
            for i in range(row + 1):
                if i == 0:
                    cur.append(1)
                elif i == row:
                    cur.append(1)
                else:
                    cur.append(res[row - 1][i - 1] + res[row - 1][i])
            res.append(cur)
        return res

solu = Solution()
solu.generate(4)