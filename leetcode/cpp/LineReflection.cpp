//
// Created by zhangqi on 2017/11/27.

//Time : O(n)
//Space : O(n)


#include <vector>
#include <c++/unordered_set>
#include <c++/unordered_map>
#include <c++/limits>


using namespace std;

class Solution {
public:
    bool isReflected(vector<pair<int, int>>& points) {
        if(points.empty()){
            return  false;
        }
        unordered_map<int, unordered_set<int>> orderedByY;
        int left = numeric_limits<int>::max();
        int right = numeric_limits<int>::min();
        //把所有y值相同的点放在一起，记录x坐标，并记录最左边和最右边的点
        for(const auto &point : points) {
            orderedByY[point.second].emplace(point.first);
            left = min(left, point.first);
            right = max(right, point.second);
        }

        int mid = left + right;
        for(const auto &p : orderedByY){
            for(const auto &x : p.second){
                //找在对称轴另一边的点
                if(p.second.count(mid - x) == 0){
                    return false;
                }
            }
        }
        return  true;

    }
};
