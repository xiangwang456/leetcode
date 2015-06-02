class Solution:
    # @return an integer
    def uniquePaths(self, m, n):
        t = [[1] * n] * m
        for i in range(m):
            for j in range(n):
                if i == 0 and j == 0:
                    t[i][j] == 0
                elif i == 0 or j == 0:
                    t[i][j] = 1
                else:
                    t[i][j] = t[i-1][j] + t[i][j-1]
        return t[m - 1][n - 1]