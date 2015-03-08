class Solution:
    # @param matrix, a list of lists of integers
    # @return a list of integers
    def spiralOrder(self, matrix):
        if not matrix:
            return []
        res = []
        left = 0
        right = len(matrix[0]) - 1
        top = 0
        bottom = len(matrix) - 1
        direct = 0   # 0: left to right 1£ºtop to down 2:right to left 3:bottom to top
        while True:
            if direct == 0:
                for i in range(left,right + 1):
                    res.append(matrix[top][i])
                top += 1
            if direct == 1:
                for i in range(top,bottom + 1):
                    res.append(matrix[i][right])
                right -= 1
            if direct == 2:
                for i in range(right,left - 1,-1):
                    res.append(matrix[bottom][i])
                bottom -= 1
            if direct == 3:
                for i in range(bottom,top - 1,-1):
                    res.append(matrix[i][left])
                left += 1
            direct = (direct + 1) % 4
            if left > right or top > bottom :
                return res
