class Solution:
    # @param num, a list of integer
    # @return a list of lists of integer
    def subsetsWithDup(self, S):
        if not S:
            return [[]]
        S.sort()
        res = [[]]
        for i,val in enumerate(S):
            if i > 0 and S[i] == S[i-1]:
                pass
            else:
                rest_subsets = self.subsetsWithDup(S[i + 1:])
                for subset in rest_subsets:
                    subset.insert(0,val)
                res += rest_subsets
        return res