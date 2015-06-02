class Solution:
    # @param num, a list of integer
    # @return an integer
    def longestConsecutive(self, num):
        if not num:
            return 0
        d = {}
        for e in num:
            if e not in d:
                d[e] = 1
        res = 1
        for e in num:
            current = 1
            if e not in d:
                continue
            while e - 1 in d:
                e -= 1
            del d[e]
            
            while e + 1 in d:
                current += 1
                e += 1
                del d[e]
            res = max(current,res)
        return res      
        