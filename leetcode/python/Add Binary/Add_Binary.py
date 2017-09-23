class Solution:
    # @param a, a string
    # @param b, a string
    # @return a string
    def addBinary(self, a, b):
        if len(a) < len(b):
            a,b= b,a
        res = []
        m = len(a)
        n = len(b)
        r = 0
        c = 0
        for k in range(m):
            i = m - 1 - k
            if k < n:
                j = n - 1 - k
                r = (int(a[i]) + int(b[j]) + c) % 2
                c = (int(a[i]) + int(b[j]) + c) / 2
            else:
                r = (int(a[i]) + c) % 2
                c = (int(a[i]) + c) / 2
            res.insert(0,str(r))
        if c == 1:
            res.insert(0,str(c))
        return ''.join(res)