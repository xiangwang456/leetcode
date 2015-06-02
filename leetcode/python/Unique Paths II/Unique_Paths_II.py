class Solution:
    # @param obstacleGrid, a list of lists of integers
    # @return an integer
    def uniquePathsWithObstacles(self, obstacleGrid):
        m = len(obstacleGrid)
        n = len(obstacleGrid[0])
        t = [[1] * n] * m
        for i in range(m):
            for j in range(n):
                if obstacleGrid[i][j] == 1:
                    t[i][j] = 0
                else:
                    if i == 0 and j == 0:
                        t[i][j] == 1
                    elif i == 0:
                        t[i][j] = t[i][j - 1]
                    elif j == 0:
                        t[i][j] = t[i - 1][j]
                    else:
                        t[i][j] = t[i - 1][j] + t[i][j - 1]
        return t[m - 1][n - 1]