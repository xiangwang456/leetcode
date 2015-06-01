class Solution:
    # @param grid, a list of lists of integers
    # @return an integer
    def minPathSum(self, grid):
        m = len(grid)
        n = len(grid[0])
        t = [[0 for i in range(n)] for j in range(m)]
        for i in range(m):
            for j in range(n):
                if i == 0 and j == 0:
                    t[i][j] = grid[i][j]
                elif i == 0:
                    t[i][j] = t[i][j - 1] + grid[i][j]
                elif j == 0:
                    t[i][j] = t[i - 1][j] + grid[i][j]
                else:
                    t[i][j] = min(t[i - 1][j],t[i][j - 1]) + grid[i][j]
        return t[m - 1][n - 1]

solu = Solution()
solu.minPathSum([[1,2],[1,1]])