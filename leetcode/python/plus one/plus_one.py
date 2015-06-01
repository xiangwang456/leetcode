class Solution:
    # @param digits, a list of integer digits
    # @return a list of integer digits
    def plusOne(self, digits):
        digits.reverse()
        res = []
        carry = (digits[0] + 1) / 10
        t = (digits[0] + 1) % 10
        res.append(t)
        for i in digits[1:]:
            t = (i + carry ) % 10
            carry = (i + carry ) / 10
            res.append(t)
        if carry == 1:
            res.append(1)
        res.reverse()
        return res
            

solu = Solution()
solu.plusOne([0])