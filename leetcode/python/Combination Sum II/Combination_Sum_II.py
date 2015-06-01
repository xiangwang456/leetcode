class Solution:
    # @param candidates, a list of integers
    # @param target, integer
    # @return a list of lists of integers
    def combinationSum2(self, candidates, target):
        res = []
        cand = []
        candidates.sort()
        self.combinationSum_aux(candidates,cand,target,res)
        return res
    
    def combinationSum_aux(self,candidates,cand,target,res):
        if target < 0:
            return
        elif target == 0:
            res.append(cand[:])
        else:
            prev = None
            for i,val in enumerate(candidates):
                if prev is None or prev != val:
                    cand.append(val)
                    self.combinationSum_aux(candidates[i + 1:],cand,target - val,res)
                    cand.pop()
                prev = val

solu = Solution()
print solu.combinationSum2([13,23,25,11,7,26,14,11,27,27,26,12,8,20,22,34,27,17,5,26,31,11,16,27,13,20,29,18,7,14,13,15,25,25,21,27,16,22,33,8,15,25,16,18,10,25,9,24,7,32,15,26,30,19], 25 )