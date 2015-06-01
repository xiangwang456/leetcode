class Solution:
    # @param grid, a list of lists of integers
    # @return an integer
    def minPathSum(self, grid):
        m = len(grid)
        n = len(grid[0])
        t = [[-1 for i in range(n)] for j in range(m)]
        return self.min_path_sum_aux(grid,m - 1,n - 1,t)
        
    def min_path_sum_aux(self,grid,m,n,t):
        if m == 0 and n == 0:
            t[m][n] = grid[m][n]
        elif t[m][n] != -1:
            return t[m][n]
        elif m == 0 and n > 0:
            t[m][n] = self.min_path_sum_aux(grid,m,n - 1,t) + grid[m][n]
        elif n == 0 and m > 0:
            t[m][n] = self.min_path_sum_aux(grid,m - 1,n,t) + grid[m][n]
        else:
            t[m][n] = min(self.min_path_sum_aux(grid,m - 1,n,t),self.min_path_sum_aux(grid,m,n - 1,t)) + grid[m][n]
        return t[m][n]
        
        

solu = Solution()
solu.minPathSum([[1,2],[1,1]])