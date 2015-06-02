class Solution:
    # @return a list of integers
    def getRow(self, rowIndex):
        res = [1 for i in range(rowIndex + 1)]
        for i in range(rowIndex + 1):
            for j in range(i + 1):
                index = i - j
                if index > 0 and index < i:
                    res[index] += res[index -1]
        return res