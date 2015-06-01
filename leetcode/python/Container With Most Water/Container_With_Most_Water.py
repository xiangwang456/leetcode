class Solution:
    # @return an integer
    def maxArea(self, height):
        if not height:
            return 0
        left = 0
        right = len(height) - 1
        max_area = 0
        while left < right:
            max_area = max(min(height[left],height[right]) * (right - left),max_area)
            if height[left] < height[right]:
                left += 1
            else:
                right -= 1
        return max_area
            
        