class Solution:
    # @param matrix, a list of lists of 1 length string
    # @return an integer
    def maximalRectangle(self, matrix):
        if not matrix:
            return 0
        if not matrix[0]:
            return 0     
        row_num = len(matrix)
        col_num = len(matrix[0])
        hist = [[ 0 for i in range(col_num + 1) ] for j in range(row_num + 1)]
        for row in range(row_num):
            for col in range(col_num):
                if row == 0:
                    hist[row][col] = int(matrix[row][col])
                else:
                    if matrix[row][col] == '1':
                        hist[row][col] = 1 + hist[row-1][col]
        res = 0
        for row in hist:
            res = max(res,self.max_hist_rect(row))
        return res                   

    def max_hist_rect(self,heights):
        if not heights:
            return 0
        n = len(heights)
        stack = []
        res = 0
        for i in range(n+1):
            while stack and (i == n or heights[i] < heights[stack[-1]]):
                h = heights[stack.pop()]
                if stack:
                    w = i - stack[-1] -1
                else:
                    w = i 
                res = max(res,h*w)
            stack.append(i)

        return res

solu = Solution()
#matrix = [ [0,1,1,0,1],[1,1,0,1,0],[0,1,1,1,0],[1,1,1,1,0],[1,1,1,1,1],[0,0,0,0,0]]
matrix = ["0"]
print solu.maximalRectangle(matrix)