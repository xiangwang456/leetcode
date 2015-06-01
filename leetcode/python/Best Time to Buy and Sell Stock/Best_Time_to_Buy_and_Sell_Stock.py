class Solution:
    # @param prices, a list of integer
    # @return an integer
    def maxProfit(self, prices):
        if not prices:
            return 0
        min_price = prices[0]
        max_profit = 0
        for i,p in enumerate(prices):
            max_profit = max(p - min_price,max_profit)
            min_price = min(p,min_price)
        return max_profit