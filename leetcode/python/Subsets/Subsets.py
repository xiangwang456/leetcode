class Solution:
    # @param S, a list of integer
    # @return a list of lists of integer
    def subsets(self, S):
        if not S:
            return [[]]
        S.sort()
        res = [[]]
        for i,val in enumerate(S):
            rest_subsets = self.subsets(S[i + 1:])
            for subset in rest_subsets:
                subset.insert(0,val)
            res += rest_subset
        return res
             