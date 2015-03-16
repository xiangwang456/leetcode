class Solution:
    # @param candidates, a list of integers
    # @param target, integer
    # @return a list of lists of integers
    def combinationSum(self, candidates, target):
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
            for i,val in enumerate(candidates):
                cand.append(val)
                self.combinationSum_aux(candidates[i:],cand,target - val,res)
                cand.pop()

solu = Solution()
print solu.combinationSum([1,2],4)