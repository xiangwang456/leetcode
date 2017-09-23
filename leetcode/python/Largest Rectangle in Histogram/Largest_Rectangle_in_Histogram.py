class Solution:
    # @param height, a list of integer
    # @return an integer
    def largestRectangleArea(self, height = [2,7,5,6,4]):
        n = len(height)
        if not height:
            return 0
        n = len(height)
        if n == 1:
            return height[0]
        stack = []
        max_area = 0
        for i in range(n+1):
            while stack and (i == n or height[stack[-1]] > height[i]):
                h = height[stack.pop()];
                if stack:
                    w = i - stack[-1] -1
                else:
                    w = i
                max_area = max(max_area,h * w)
            stack.append(i)
        return max_area

solu = Solution()
print solu.largestRectangleArea()