class Solution:
    # @return an integer
    def lengthOfLongestSubstring(self, s):
        substr = ''
        rear = 0
        res = 0
        for front,c in enumerate(s):
            if c not in substr:
                substr += c
            else:
                res = max(len(substr),res)
                while s[rear] != c:
                    rear += 1
                rear += 1
                substr = s[rear:front + 1]
        return max(len(substr),res)

solu = Solution()
print solu.lengthOfLongestSubstring('aab')