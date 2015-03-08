class Solution:
    # @return a list of lists of integer
    def generateMatrix(self, n):
        if n == 0:
            return []
        # res = [[0] * n] * n  Ç³¿½±´ £¬³ö´í
        res = [[0 for i in range(n)] for i in range(n)]
        left = 0
        top = 0
        right = n - 1
        bottom = n - 1
        direct = 0 # 0:go right 1:down 2:go left 3:up  
        val = 1
        while True :
            if direct == 0:
                for i in range(left,right + 1):
                    res[top][i] = val
                    val += 1
                top += 1
            if direct == 1:
                for i in range(top,bottom + 1):
                    res[i][right] = val
                    val += 1
                right -= 1
            if direct == 2:
                for i in range(right,left -1 ,-1):
                    res[bottom][i] = val
                    val += 1
                bottom -= 1
            if direct == 3:
                for i in range(bottom,top - 1,-1):
                    res[i][left] = val
                    val += 1
                left += 1
            direct = (direct + 1) % 4
            if top > bottom or left > right:
                return res

solu = Solution()
solu.generateMatrix(3)