class Solution:
    # @param A, a list of integers
    # @return an integer
    def trap(self, A):
        left = 0
        right = len(A) - 1
        second_height = 0
        area = 0
        while(left < right):
            if A[left] < A[right]:
                second_height = max(second_height,A[left])
                area += second_height - A[left]
                left += 1
            else:
                second_height = max(second_height,A[right])
                area += second_height - A[right]
                right -= 1
        return area