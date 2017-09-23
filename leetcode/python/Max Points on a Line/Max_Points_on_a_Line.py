# Definition for a point
# class Point:
#     def __init__(self, a=0, b=0):
#         self.x = a
#         self.y = b

class Solution:
    # @param points, a list of Points
    # @return an integer
    def maxPoints(self, points):
        num = len(points)
        if num < 3:
            return num
        res = -1
        for i in range(num):
            slope = {'inf':0}
            samePointNum = 1
            for j in range(num):
                if i == j:
                    continue
                elif points[j].x == points[i].x and points[j].y != points[i].y:
                    slope['inf'] += 1
                elif points[j].x != points[i].x:
                    k = 1.0*(points[j].y - points[i].y) / (points[j].x - points[i].x)
                    slope[k] = 1 if k not in slope.keys() else slope[k] + 1
                else:
                    samePointNum += 1
            res = max(res,max(slope.values()) + samePointNum)

        return res


