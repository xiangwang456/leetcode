class Solution:
    # @param num, a list of integer
    # @return an integer
    def findPeakElement(self, num):
        if not num:
            return -1
        n = len(num)
        low = 0
        high = n - 1 
        while low < high:
            mid1 = (low + high) / 2
            mid2 = mid1 + 1
            if num[mid1] < num[mid2]:
                low = mid2
            else:
                high = mid1
        
        return low
            
        