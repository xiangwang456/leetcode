class Solution:
    # @param prices, a list of integer
    # @return an integer
    def maxProfit(self, prices):
        if not prices:
            return 0
        n = len(prices)
        m1 = [0] * n
        m2 = [0] * n
        min_price1 = prices[0]
        max_price2 = prices[-1]
        max_profit1 = 0
        max_profit2 = 0
        for i in range(n):
            max_profit1 = max(prices[i] - min_price1,max_profit1)
            m1[i] = max_profit1
            min_price1 = min(prices[i],min_price1)
        for i in range(n - 1 ,-1 ,-1):
            max_profit2 = max(max_price2 - prices[i],max_profit2)
            m2[i] = max_profit2
            max_price2 = max(prices[i],max_price2)
        max_profit = 0
        for i in range(n):
            max_profit = max(m1[i] + m2[i],max_profit)
        return max_profit


solu = Solution()
print solu.maxProfit([4,1,2])