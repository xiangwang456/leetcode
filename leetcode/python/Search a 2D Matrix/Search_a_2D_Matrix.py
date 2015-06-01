class Solution:
    # @param matrix, a list of lists of integers
    # @param target, an integer
    # @return a boolean
    def searchMatrix(self, matrix, target):
        m = len(matrix)
        n = len(matrix[0])
        left = 0
        right = n - 1
        top = 0
        bottom = m - 1
        while left <= right and top <= bottom:
            row_mid = (top + bottom) / 2
            while matrix[row_mid][left] <= target and matrix[row_mid][right] >= target:
                mid = (left + right) / 2
                if matrix[row_mid][mid] == target:
                    return True
                elif matrix[row_mid][mid] < target:
                    left = mid + 1
                else:
                    right = mid - 1
            if matrix[row_mid][0] > target:
                bottom = row_mid - 1
            else:
                top = row_mid + 1
        return False