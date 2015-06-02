class Solution:
    # @return a string
    def fractionToDecimal(self, numerator, denominator):
        negativeFlag = numerator * denominator < 0
        numerator = abs(numerator)
        denominator = abs(denominator)
        numList = []
        loopList = []
        loopDict = {}

        cnt =0
        while True:
            numList.append(str(numerator / denominator))
            cnt += 1
            numerator =10 * (numerator % denominator)
            if numerator == 0: 
                break
            loc = loopDict.get(numerator)
            if loc:
                loopList = numList[loc:cnt]
                break
            loopDict[numerator] = cnt;
        ans = numList[0]
        if len(numList) > 1:
            ans += '.'
        if loopList:
            ans += ''.join(numList[1:len(numList) - len(loopList) ]) + '(' + "".join(loopList[:]) + ')'
        else:
            ans += ''.join(numList[1:])
        if negativeFlag:
            ans = '-' + ans
        return ans

solu = Solution()
res = solu.fractionToDecimal(1,3)
print res