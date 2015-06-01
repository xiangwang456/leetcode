class Solution:
    # @param A, a list of integers
    # @return an integer

    def jump(self, A):
        cur_reach = 0  #记录 从A[0]开始，经过res次跳跃最远可以跳到的位置
        cur_max = 0    #记录 0 - i 最远可以跳到的位置
        res = 0
        n = len(A)
        for i in range(n):
            if cur_reach < i:
                res += 1
                cur_reach = cur_max
            cur_max = max(cur_max,A[i] + i)
        return res