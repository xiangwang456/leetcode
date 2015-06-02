class Solution:
    # @return an integer
    def numTrees(self, n):
        unique_trees = {}
        unique_trees[0] = 1
        unique_trees[1] = 1
        for cnt in range(2,n+1):
            unique_trees[cnt] = 0
            for k in range(1,cnt + 1):
                unique_trees[cnt] += unique_trees[cnt - k] * unique_trees[k - 1]
        return unique_trees[n]